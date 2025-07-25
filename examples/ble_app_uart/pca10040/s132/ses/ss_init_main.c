/*! ----------------------------------------------------------------------------
*  @file    ss_init_main.c
*  @brief   Single-sided two-way ranging (SS TWR) initiator example code
*
*           This is a simple code example which acts as the initiator in a SS TWR distance measurement exchange. This application sends a "poll"
*           frame (recording the TX time-stamp of the poll), after which it waits for a "response" message from the "DS TWR responder" example
*           code (companion to this application) to complete the exchange. The response message contains the remote responder's time-stamps of poll
*           RX, and response TX. With this data and the local time-stamps, (of poll TX and response RX), this example application works out a value
*           for the time-of-flight over-the-air and, thus, the estimated distance between the two devices, which it writes to the LCD.
*
*
*           Notes at the end of this file, expand on the inline comments.
* 
* @attention
*
* Copyright 2015 (c) Decawave Ltd, Dublin, Ireland.
*
* All rights reserved.
*
* @author Decawave
*/
#include "sdk_config.h"
//#include "FreeRTOS.h"
//#include "task.h"
//#include "timers.h"
#include "bsp.h"
#include "boards.h"
#include "nordic_common.h"
#include "nrf_drv_clock.h"
#include "nrf_drv_spi.h"
#include "nrf_uart.h"
#include "app_util_platform.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf.h"
#include "app_error.h"
#include "app_util_platform.h"
#include "app_error.h"
#include <string.h>
#include "port_platform.h"
#include "deca_types.h"
#include "deca_param_types.h"
#include "deca_regs.h"
#include "deca_device_api.h"
#include "app_uart.h"
//#include "ss_init_main.h"
#include "nrf_drv_gpiote.h"


#include <stdio.h>
#include <string.h>
//#include "FreeRTOS.h"
//#include "task.h"
#include "deca_device_api.h"
#include "deca_regs.h"
#include "deca_param_types.h"
#include "port_platform.h"
//#include "ss_init_main.h"
//#include "UART.h"
#include "tdoa.h"


#define APP_NAME "SS TWR INIT v1.3"

/* Inter-ranging delay period, in milliseconds. */
#define RNG_DELAY_MS 1




/*DW1000 config function*/
static dwt_config_t config = {
    5,                /* Channel number. */
    DWT_PRF_64M,      /* Pulse repetition frequency. */
    DWT_PLEN_128,     /* Preamble length. Used in TX only. */
    DWT_PAC8,         /* Preamble acquisition chunk size. Used in RX only. */
    10,               /* TX preamble code. Used in TX only. */
    10,               /* RX preamble code. Used in RX only. */
    0,                /* 0 to use standard SFD, 1 to use non-standard SFD. */
    DWT_BR_6M8,       /* Data rate. */
    DWT_PHRMODE_STD,  /* PHY header mode. */
    (129 + 8 - 8)     /* SFD timeout (preamble length + 1 + SFD length - PAC size). Used in RX only. */
};

/* Preamble timeout, in multiple of PAC size. See NOTE 3 below. */
#define PRE_TIMEOUT 1000

/* Delay between frames, in UWB microseconds. See NOTE 1 below. */
#define POLL_TX_TO_RESP_RX_DLY_UUS 100 

/*Should be accurately calculated during calibration*/
//#define TX_ANT_DLY 16300
#define RX_ANT_DLY 16456	

//--------------dw1000---end---------------


#define TASK_DELAY        200           /**< Task delay. Delays a LED0 task for 200 ms */
#define TIMER_PERIOD      2000          /**< Timer period. LED1 timer will expire after 1000 ms */



/* Length of the common part of the message (up to and including the function code, see NOTE 1 below). */
#define ALL_MSG_COMMON_LEN 10
/* Indexes to access some of the fields in the frames defined above. */
#define ALL_MSG_SN_IDX 2
#define RESP_MSG_POLL_RX_TS_IDX 10
#define RESP_MSG_RESP_TX_TS_IDX 14
#define RESP_MSG_TS_LEN 4
/* Frame sequence number, incremented after each transmission. */
static uint8 frame_seq_nb = 0;

/* Buffer to store received response message.
* Its size is adjusted to longest frame that this example code is supposed to handle. */
#define RX_BUF_LEN 126
static uint8 rx_buffer[RX_BUF_LEN];

/* Hold copy of status register state here for reference so that it can be examined at a debug breakpoint. */
static uint32 status_reg = 0;

/* UWB microsecond (uus) to device time unit (dtu, around 15.65 ps) conversion factor.
* 1 uus = 512 / 499.2 s and 1 s = 499.2 * 128 dtu. */
#define UUS_TO_DWT_TIME 65536

/* Speed of light in air, in metres per second. */
#define SPEED_OF_LIGHT 299702547

/* Hold copies of computed time of flight and distance here for reference so that it can be examined at a debug breakpoint. */
static double tof;
static double distance;

/* Declaration of static functions. */
static void resp_msg_get_ts(uint8 *ts_field, uint32 *ts);

/*Interrupt flag*/
static volatile int tx_int_flag = 0 ; // Transmit success interrupt flag
static volatile int rx_int_flag = 0 ; // Receive success interrupt flag
static volatile int to_int_flag = 0 ; // Timeout interrupt flag
static volatile int er_int_flag = 0 ; // Error interrupt flag 

/*Transactions Counters */
static volatile int tx_count = 0 ; // Successful transmit counter
static volatile int rx_count = 0 ; // Successful receive counter 

#define RX_BUF_LEN 126
static uint8 rx_buffer[RX_BUF_LEN];
const uint32 header = 0xccbbaac5;
static bool msg_updated = false;
static int rcv_msg_count = 0;
rcv_msg_t my_msg[20];
int rcv_count = 0;
bool time_out_sig = false;

/*! ------------------------------------------------------------------------------------------------------------------
* @fn main()
*
* @brief Application entry point.
*
* @param  none
*
* @return none
*/
extern int send_to_ble(const char * str);

extern bool send_to_UART(char *str);


int ss_init_run(void)
{
  /* Execute a delay between ranging exchanges. */
    
    
     if(msg_updated) {
        for(int i=0;i<rcv_msg_count;i++){
          char tmp[50];
          sprintf(tmp,"Aid %d, Ts %llu\r\n", my_msg[i].get_msg.anchor_id, my_msg[i].rx_timestamp);
      
          send_to_ble(tmp);
          send_to_UART(tmp);
        }
        int delta[10];
        for(int i=0;i<rcv_msg_count-1;i++){
          
          delta[i] = my_msg[i+1].rx_timestamp - my_msg[i].rx_timestamp - \
                    (my_msg[i+1].get_msg.tx_delay - my_msg[i].get_msg.tx_delay)*256 ;
          char tmp[50];
          sprintf(tmp,"delta[%d]= %d\r\n",i,delta[i]);
          send_to_ble(tmp);
          send_to_UART(tmp);
        }
        tdoa_data_t data;
        
        for(int i=0;i < rcv_msg_count;i++){
           data.anchor[i].x =  my_msg[i].get_msg.anchor_x;
           data.anchor[i].y =  my_msg[i].get_msg.anchor_y;
           data.anchor[i].z =  my_msg[i].get_msg.anchor_z;
           data.tdoa[i] = delta[i];
        }
        tag_pos_t tag_pos = pos_cal(rcv_msg_count, data);


        msg_updated = false;
     }
     deca_sleep(RNG_DELAY_MS);
     return(1);
}

  


/*! ------------------------------------------------------------------------------------------------------------------
* @fn get_rx_timestamp_u64()
*
* @brief Get the RX time-stamp in a 64-bit variable.
*        /!\ This function assumes that length of time-stamps is 40 bits, for both TX and RX!
*
* @param  none
*
* @return  64-bit value of the read time-stamp.
*/
static uint64_t get_rx_timestamp_u64(void)
{
  uint8 ts_tab[5];
  uint64_t ts = 0;
  int i;
  dwt_readrxtimestamp(ts_tab);
  for (i = 4; i >= 0; i--)
  {
    ts <<= 8;
    ts |= ts_tab[i];
  }
  return ts;
}
/*! ------------------------------------------------------------------------------------------------------------------
* @fn rx_ok_cb()
*
* @brief Callback to process RX good frame events
*
* @param  cb_data  callback data
*
* @return  none
*/

void rx_ok_cb(const dwt_cb_data_t *cb_data)
{
  rx_int_flag = 1 ;
  
  char tmp[100];
 
 
  //  /* A frame has been received, read it into the local buffer. */
  uint32 frame_len = dwt_read32bitreg(RX_FINFO_ID) & RX_FINFO_RXFLEN_MASK;
  if (frame_len <= RX_BUF_LEN)
  {
      dwt_readrxdata(rx_buffer, frame_len, 0);
  }

   dwt_setrxtimeout(1000); // Maximum value timeout with DW1000 is 65ms  
   dwt_rxenable(DWT_START_RX_IMMEDIATE);
   printf("dwt_setrxtimeout(1000)\r\n");

  if (memcmp(rx_buffer,(const void *) &header, 4) == 0){
      memcpy((void *) &my_msg[rcv_count].get_msg,(const void *) &rx_buffer, sizeof(blink_msg_t));
      my_msg[rcv_count].rx_timestamp = get_rx_timestamp_u64();
      rcv_count++;
      if(rcv_count > 19) rcv_count = 0;
  }
  /* TESTING BREAKPOINT LOCATION #1 */
}

/*! ------------------------------------------------------------------------------------------------------------------
* @fn rx_to_cb()
*
* @brief Callback to process RX timeout events
*
* @param  cb_data  callback data
*
* @return  none
*/
void rx_to_cb(const dwt_cb_data_t *cb_data)
{
  to_int_flag = 1 ;

  dwt_setrxtimeout(0);
  dwt_rxenable(DWT_START_RX_IMMEDIATE);
  printf("dwt_setrxtimeout(0)\r\n");
  rcv_msg_count = rcv_count;
  rcv_count = 0;
  msg_updated = true;

}

/*! ------------------------------------------------------------------------------------------------------------------
* @fn rx_err_cb()
*
* @brief Callback to process RX error events
*
* @param  cb_data  callback data
*
* @return  none
*/
void rx_err_cb(const dwt_cb_data_t *cb_data)
{
  er_int_flag = 1 ;
  /* TESTING BREAKPOINT LOCATION #3 */
  char uartmsg[20];
   sprintf(uartmsg,"rx_err_cb\r\n");
   bool ret = send_to_UART(uartmsg);
   dwt_rxenable(DWT_START_RX_IMMEDIATE);
}

/*! ------------------------------------------------------------------------------------------------------------------
* @fn tx_conf_cb()
*
* @brief Callback to process TX confirmation events
*
* @param  cb_data  callback data
*
* @return  none
*/
void tx_conf_cb(const dwt_cb_data_t *cb_data)
{
  /* This callback has been defined so that a breakpoint can be put here to check it is correctly called but there is actually nothing specific to
  * do on transmission confirmation in this example. Typically, we could activate reception for the response here but this is automatically handled
  * by DW1000 using DWT_RESPONSE_EXPECTED parameter when calling dwt_starttx().
  * An actual application that would not need this callback could simply not define it and set the corresponding field to NULL when calling
  * dwt_setcallbacks(). The ISR will not call it which will allow to save some interrupt processing time. */

  tx_int_flag = 1 ;
  /* TESTING BREAKPOINT LOCATION #4 */
}


/*! ------------------------------------------------------------------------------------------------------------------
* @fn resp_msg_get_ts()
*
* @brief Read a given timestamp value from the response message. In the timestamp fields of the response message, the
*        least significant byte is at the lower address.
*
* @param  ts_field  pointer on the first byte of the timestamp field to get
*         ts  timestamp value
*
* @return none
*/
static void resp_msg_get_ts(uint8 *ts_field, uint32 *ts)
{
  int i;
  *ts = 0;
  for (i = 0; i < RESP_MSG_TS_LEN; i++)
  {
  *ts += ts_field[i] << (i * 8);
  }
}


/**@brief SS TWR Initiator task entry function.
*
* @param[in] pvParameter   Pointer that will be used as the parameter for the task.
*/
//void ss_initiator_task_function (void * pvParameter)
//{
//  UNUSED_PARAMETER(pvParameter);

//  dwt_setleds(DWT_LEDS_ENABLE);

//  while (true)
//  {
//    ss_init_run();
//    /* Delay a task for a given number of ticks */
//    vTaskDelay(RNG_DELAY_MS);
//    /* Tasks must be implemented to never return... */
//  }
//}
/*****************************************************************************************************************************************************
* NOTES:
*
* 1. The frames used here are Decawave specific ranging frames, complying with the IEEE 802.15.4 standard data frame encoding. The frames are the
*    following:
*     - a poll message sent by the initiator to trigger the ranging exchange.
*     - a response message sent by the responder to complete the exchange and provide all information needed by the initiator to compute the
*       time-of-flight (distance) estimate.
*    The first 10 bytes of those frame are common and are composed of the following fields:
*     - byte 0/1: frame control (0x8841 to indicate a data frame using 16-bit addressing).
*     - byte 2: sequence number, incremented for each new frame.
*     - byte 3/4: PAN ID (0xDECA).
*     - byte 5/6: destination address, see NOTE 2 below.
*     - byte 7/8: source address, see NOTE 2 below.
*     - byte 9: function code (specific values to indicate which message it is in the ranging process).
*    The remaining bytes are specific to each message as follows:
*    Poll message:
*     - no more data
*    Response message:
*     - byte 10 -> 13: poll message reception timestamp.
*     - byte 14 -> 17: response message transmission timestamp.
*    All messages end with a 2-byte checksum automatically set by DW1000.
* 2. Source and destination addresses are hard coded constants in this example to keep it simple but for a real product every device should have a
*    unique ID. Here, 16-bit addressing is used to keep the messages as short as possible but, in an actual application, this should be done only
*    after an exchange of specific messages used to define those short addresses for each device participating to the ranging exchange.
* 3. dwt_writetxdata() takes the full size of the message as a parameter but only copies (size - 2) bytes as the check-sum at the end of the frame is
*    automatically appended by the DW1000. This means that our variable could be two bytes shorter without losing any data (but the sizeof would not
*    work anymore then as we would still have to indicate the full length of the frame to dwt_writetxdata()).
* 4. The high order byte of each 40-bit time-stamps is discarded here. This is acceptable as, on each device, those time-stamps are not separated by
*    more than 2**32 device time units (which is around 67 ms) which means that the calculation of the round-trip delays can be handled by a 32-bit
*    subtraction.
* 5. The user is referred to DecaRanging ARM application (distributed with EVK1000 product) for additional practical example of usage, and to the
*     DW1000 API Guide for more details on the DW1000 driver functions.
* 6. The use of the carrier integrator value to correct the TOF calculation, was added Feb 2017 for v1.3 of this example.  This significantly
*     improves the result of the SS-TWR where the remote responder unit's clock is a number of PPM offset from the local inmitiator unit's clock.
*     As stated in NOTE 2 a fixed offset in range will be seen unless the antenna delsy is calibratred and set correctly.
*
****************************************************************************************************************************************************/

void vInterruptHandler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action)
{
  dwt_isr(); // DW1000 interrupt service routine 
}
/*!
* @brief Configure an IO pin as a positive edge triggered interrupt source.
*/
void vInterruptInit (void)
{
  ret_code_t err_code;

  if (nrf_drv_gpiote_is_init()){
    printf("nrf_drv_gpiote_init already installed\n");
    }
  else{
    nrf_drv_gpiote_init();
  }
  // input pin, +ve edge interrupt, no pull-up
  nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
  in_config.pull = NRF_GPIO_PIN_NOPULL;

  // Link this pin interrupt source to its interrupt handler
  err_code = nrf_drv_gpiote_in_init(DW1000_IRQ, &in_config, vInterruptHandler);
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_event_enable(DW1000_IRQ, true);
}

void dw1000_init(void)
{

/* Setup some LEDs for debug Green and Blue on DWM1001-DEV */
  LEDS_CONFIGURE(BSP_LED_0_MASK | BSP_LED_1_MASK | BSP_LED_2_MASK);
  LEDS_ON(BSP_LED_0_MASK | BSP_LED_1_MASK | BSP_LED_2_MASK );
/* Setup NRF52832 interrupt on GPIO 25 : connected to DW1000 IRQ*/
  vInterruptInit();

  char uartmsg[100];
  sprintf(uartmsg,"One Way Ranging Tag\r\n");
  bool ret = send_to_UART(uartmsg);	
  /* Reset DW1000 */
  reset_DW1000(); 

  /* Set SPI clock to 2MHz */
  port_set_dw1000_slowrate();			
  
  /* Init the DW1000 */
  if (dwt_initialise(DWT_LOADUCODE) == DWT_ERROR)
  {
    //Init of DW1000 Failed
    while (1) {};
  }

  // Set SPI to 8MHz clock  
  port_set_dw1000_fastrate();

  /* Configure DW1000. */
  dwt_configure(&config);

  /* Initialization of the DW1000 interrupt*/
  /* Callback are defined in ss_init_main.c */
  dwt_setcallbacks(&tx_conf_cb, &rx_ok_cb, &rx_to_cb, &rx_err_cb);

  /* Enable wanted interrupts (TX confirmation, RX good frames, RX timeouts and RX errors). */
  dwt_setinterrupt(DWT_INT_TFRS | DWT_INT_RFCG | DWT_INT_RFTO | DWT_INT_RXPTO | DWT_INT_RPHE | DWT_INT_RFCE | DWT_INT_RFSL | DWT_INT_SFDT, 1);

  /* Apply default antenna delay value. See NOTE 2 below. */
  dwt_setrxantennadelay(RX_ANT_DLY);
  dwt_settxantennadelay(TX_ANT_DLY);

  /* Set preamble timeout for expected frames. See NOTE 3 below. */
  //dwt_setpreambledetecttimeout(0); // PRE_TIMEOUT
          
  /* Set expected response's delay and timeout. 
  * As this example only handles one incoming frame with always the same delay and timeout, those values can be set here once for all. */
  dwt_setrxaftertxdelay(POLL_TX_TO_RESP_RX_DLY_UUS);
  dwt_setrxtimeout(0); // Maximum value timeout with DW1000 is 65ms  
  dwt_rxenable(DWT_START_RX_IMMEDIATE);
  //-------------dw1000  ini------end---------------------------	

}

/* Loop forever initiating ranging exchanges. */
 /* Activate reception immediately. */
 // dwt_rxenable(DWT_START_RX_IMMEDIATE);
  /* Wait for reception, timeout or error interrupt flag*/
  //while (!(rx_int_flag || to_int_flag|| er_int_flag))
  //{};

  /* Increment frame sequence number after transmission of the poll message (modulo 256). */
  //frame_seq_nb++;

  //if (rx_int_flag)
  //{		
  //  uint32 frame_len;

  //  /* A frame has been received, read it into the local buffer. */
  //  frame_len = dwt_read32bitreg(RX_FINFO_ID) & RX_FINFO_RXFLEN_MASK;
  //  if (frame_len <= RX_BUF_LEN)
  //  {
  //    dwt_readrxdata(rx_buffer, frame_len, 0);
  //  }

  //  /* Check that the frame is the expected response from the companion "SS TWR responder" example.
  //  * As the sequence number field of the frame is not relevant, it is cleared to simplify the validation of the frame. */
  //  //rx_buffer[ALL_MSG_SN_IDX] = 0;
  //  if (memcmp(rx_buffer, (const void *) &header, 4) == 0)
  //  {	
  //    rx_count++;
  //    printf("Reception # : %d\r\n",rx_count);
  //    float reception_rate = (float) rx_count / (float) tx_count * 100;
  //    printf("Reception rate # : %f\r\n",reception_rate);
  //    uint32 poll_tx_ts, resp_rx_ts, poll_rx_ts, resp_tx_ts;
  //    int32 rtd_init, rtd_resp;
  //    float clockOffsetRatio ;

  //    /* Retrieve poll transmission and response reception timestamps. See NOTE 4 below. */
  //    poll_tx_ts = dwt_readtxtimestamplo32();
  //    resp_rx_ts = dwt_readrxtimestamplo32();

  //    /* Read carrier integrator value and calculate clock offset ratio. See NOTE 6 below. */
  //    clockOffsetRatio = dwt_readcarrierintegrator() * (FREQ_OFFSET_MULTIPLIER * HERTZ_TO_PPM_MULTIPLIER_CHAN_5 / 1.0e6) ;

  //    /* Get timestamps embedded in response message. */
  //    resp_msg_get_ts(&rx_buffer[RESP_MSG_POLL_RX_TS_IDX], &poll_rx_ts);
  //    resp_msg_get_ts(&rx_buffer[RESP_MSG_RESP_TX_TS_IDX], &resp_tx_ts);

  //    /* Compute time of flight and distance, using clock offset ratio to correct for differing local and remote clock rates */
  //    rtd_init = resp_rx_ts - poll_tx_ts;
  //    rtd_resp = resp_tx_ts - poll_rx_ts;

  //    tof = ((rtd_init - rtd_resp * (1.0f - clockOffsetRatio)) / 2.0f) * DWT_TIME_UNITS; // Specifying 1.0f and 2.0f are floats to clear warning 
  //    distance = tof * SPEED_OF_LIGHT;
  //    printf("Distance : %f\r\n",distance);

  //    /*Reseting receive interrupt flag*/
  //    rx_int_flag = 0; 
  //  }
  // }

  //if (to_int_flag || er_int_flag)
  //{
  //  /* Reset RX to properly reinitialise LDE operation. */
  //  dwt_rxreset();

  //  /*Reseting interrupt flag*/
  //  to_int_flag = 0 ;
  //  er_int_flag = 0 ;
  //}

    /* Execute a delay between ranging exchanges. */
    //     deca_sleep(RNG_DELAY_MS);
    //	return(1);
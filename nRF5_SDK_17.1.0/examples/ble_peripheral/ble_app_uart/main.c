#include "nrf_log.h"
#include "nrf_power.h"
#include "nrf_log_ctrl.h"

void check_reset_reason(void)
{
    uint32_t reason = nrf_power_resetreas_get();

    NRF_LOG_INFO("Reset reason: 0x%08x", reason);

    if (reason & NRF_POWER_RESETREAS_RESETPIN_MASK)
        NRF_LOG_INFO("Reason: Reset pin");
    if (reason & NRF_POWER_RESETREAS_DOG_MASK)
        NRF_LOG_INFO("Reason: Watchdog");
    if (reason & NRF_POWER_RESETREAS_SREQ_MASK)
        NRF_LOG_INFO("Reason: Soft reset (SREQ)");
    if (reason & NRF_POWER_RESETREAS_LOCKUP_MASK)
        NRF_LOG_INFO("Reason: CPU lockup");
    if (reason & NRF_POWER_RESETREAS_OFF_MASK)
        NRF_LOG_INFO("Reason: Wake from OFF mode");
    if (reason & NRF_POWER_RESETREAS_LPCOMP_MASK)
        NRF_LOG_INFO("Reason: LPCOMP wakeup");
    if (reason & NRF_POWER_RESETREAS_DIF_MASK)
        NRF_LOG_INFO("Reason: Debug interface wakeup");

    // Reset reason 플래그 클리어
    nrf_power_resetreas_clear(reason);
}

extern void cli_fds_main(void);
extern void cli_process(void);
extern void delete_all_process(void);
extern void dw1000_init(void);
extern void ss_init_run(void);
extern void ble_main_init(void);
/**@brief Application main function.
 */
int main(void)
{
    bool erase_bonds;

    // Initialize.
    //uart_init();

    // 기본 초기화

    check_reset_reason();
    ble_main_init();

    cli_fds_main();
    
    // Start execution.
    printf("\r\nUART started.\r\n");
    NRF_LOG_INFO("Debug logging for UART over RTT started.");
    
    dw1000_init();
    // 메인 루프
    for (;;)
    {
        if (!NRF_LOG_PROCESS())
        {
      //    idle_state_handle();
        //  power_manage();
        }

        cli_process();         // CLI 입력 처리
        delete_all_process();  // delete_all 명령 처리
        ss_init_run();
    }
}


/**
 * @}
 */

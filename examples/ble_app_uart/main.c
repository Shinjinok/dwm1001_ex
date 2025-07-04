


extern void dw1000_init(void);
extern int ss_init_run(void);
extern void ble_init(void);
extern void ble_run(void);
extern void fd_init(void);
extern void fd_loop(void);
/**@brief Application main function.
 */
int main(void)
{

    //ble_init();
   // dw1000_init();
    fd_init();
    // Enter main loop.
    for (;;)
    {
       // ble_run();
       // int ret = ss_init_run();
        fd_loop();
    }
}


/**
 * @}
 */

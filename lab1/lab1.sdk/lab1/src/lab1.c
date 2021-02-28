#include "xparameters.h"
#include "xgpio.h"
#include "xgpiops.h"
#ifdef MULTIBOOT
#include "xdevcfg.h"
#endif

static XGpioPs psGpioInstancePtr;
static int iPinNumber = 7; /*Led LD9 on ZedBoard and LD4 on Zybo is connected to MIO pin 7*/

//====================================================

int main (void) 
{

      XGpio sw, led;
	  int i, pshb_check, sw_check;
	  XGpioPs_Config*GpioConfigPtr;
	  int xStatus;
	  int iPinNumberEMIO = 54;
	  u32 uPinDirectionEMIO = 0x0;
	  u32 uPinDirection = 0x1;
	
	  xil_printf("-- Start of the Program --\r\n");

	  // AXI GPIO switches Intialization
	  XGpio_Initialize(&sw, XPAR_SWITCHES_DEVICE_ID);

	  // AXI GPIO leds Intialization
	  XGpio_Initialize(&led, XPAR_LEDS_DEVICE_ID);

	  // PS GPIO Intialization
	  GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	  if(GpioConfigPtr == NULL)
	    return XST_FAILURE;
	  xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,
	      GpioConfigPtr,
	      GpioConfigPtr->BaseAddr);
	  if(XST_SUCCESS != xStatus)
	    print(" PS GPIO INIT FAILED \n\r");
	  //PS GPIO pin setting to Output
	  XGpioPs_SetDirectionPin(&psGpioInstancePtr, iPinNumber,uPinDirection);
	  XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, iPinNumber,1);
	  //EMIO PIN Setting to Input port
	  XGpioPs_SetDirectionPin(&psGpioInstancePtr,
	      iPinNumberEMIO,uPinDirectionEMIO);
	  XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, iPinNumberEMIO,0);

	  xil_printf("-- Press BTNR (Zedboard) or BTN3 (Zybo) to see the LED light --\r\n");
	  xil_printf("-- Change slide switches to see corresponding output on LEDs --\r\n");
	  xil_printf("-- Set slide switches to 0x0F to exit the program --\r\n");

	  while (1)
	  {
		  sw_check = XGpio_DiscreteRead(&sw, 1);
		  XGpio_DiscreteWrite(&led, 1, sw_check);
	      pshb_check = XGpioPs_ReadPin(&psGpioInstancePtr,iPinNumberEMIO);
          XGpioPs_WritePin(&psGpioInstancePtr,iPinNumber,pshb_check);
          if((sw_check & 0x0f)==0x0F)
        	  break;
		  for (i=0; i<9999999; i++); // delay loop
	   }
	  xil_printf("-- End of Program --\r\n");
#ifdef MULTIBOOT
	  // Driver Instantiations
	  XDcfg XDcfg_0;
	  u32 MultiBootReg = 0;
	  #define PS_RST_CTRL_REG	(XPS_SYS_CTRL_BASEADDR + 0x200)
	  #define PS_RST_MASK	0x1	/* PS software reset */
	  #define SLCR_UNLOCK_OFFSET 0x08

	  // Initialize Device Configuration Interface
	  XDcfg_Config *Config = XDcfg_LookupConfig(XPAR_XDCFG_0_DEVICE_ID);
	  XDcfg_CfgInitialize(&XDcfg_0, Config, Config->BaseAddr);

	  MultiBootReg = 0; // Once done, boot the master image stored at 0xfc00_0000
	  Xil_Out32(0xF8000000 + SLCR_UNLOCK_OFFSET, 0xDF0DDF0D); // unlock SLCR
	  XDcfg_WriteReg(XDcfg_0.Config.BaseAddr, XDCFG_MULTIBOOT_ADDR_OFFSET, MultiBootReg); // write to multiboot reg
	  // synchronize
		__asm__(
			"dsb\n\t"
			"isb"
		);
      Xil_Out32(PS_RST_CTRL_REG, PS_RST_MASK);
#endif
	  return 0;
}
 

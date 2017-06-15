/*
 * main.c
 */

#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_types.h"
#include "inc/hw_memmap.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"

#ifdef DEBUG
void
__error__(char *pcFilename, uint32_t ui32Line)
{
}
#endif

 #define RED_LED   GPIO_PIN_1
 #define BLUE_LED  GPIO_PIN_2
 #define GREEN_LED GPIO_PIN_3

extern int fibonacci(int n);

int main(void) {
    //
       // Setup the system clock to run at 50 Mhz from PLL with crystal reference
       //
       SysCtlClockSet(SYSCTL_SYSDIV_4|SYSCTL_USE_PLL|SYSCTL_XTAL_16MHZ|
                       SYSCTL_OSC_MAIN);

       //
       // Enable and configure the GPIO port for the LED operation.
       //
       SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
       GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED);


	for(int i = 20, i = 0, i++){
	   blink(fibronocci(i));
	   SysCtlDelay(2000000); \\delay between results
	}
	return 0;
}

void blink(int x){
    int mout = 0b0;
    int words = 0;
    while(x>=0){
       y = x%10
       int new = convert_to_morose(y);
       mout = mout | new;
       mout = mout << 5;
       words = words+1;
       x = (x-y)/10;
    }

    int total = len(mout);

    for(total, total>= 0, total--){
        switch(words):
            case 1:
                compare = mout & 0x10;
            case 2:
                compare = mout & 0x200;
            case 3:
                compare = mout & 0x4000;
            case 4:
                compare = mout & 0x100000;
            case 5:
                compare = mout & 0x1000000;
            case 6:
                compare = mout & 0x20000000;
            default:
                GPIOinWrite(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED, BLUE_LED); \\invalid, will turn led blue

        if(compare == 1){
           GPIOPinWrite(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED, RED_LED);\\turn on red LED for a 1
        }
        if(compare == 0){
           GPIOPinWrite(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED, GREEN_LED);\\ turn on green LED for a 0
        }
        SysCtlDelay(500000); \\delay between each digit of the morse number
        if (total % 5 == 0){
            SysCtlDelay(1000000); \\delay between each of the morse number
        }
        mout = mout << 1;
    }


}

char convert_to_morose(int n){
    switch(n){
    case 0:
        return 0b11111;
        break;
    case 1:
        return 0b01111;
        break;
    case 2:
        return 0b00111;
        break;
    case 3:
        return 0b00011;
        break;
    case 4:
        return 0b00001;
        break;
    case 5:
        return 0b00000;
        break;
    case 6:
        return 0b10000;
        break;
    case 7:
        return 0b11000;
        break;
    case 8:
        return 0b11100;
        break;
    case 9:
        return 0b11110;
        break;
    default:
        break;
}

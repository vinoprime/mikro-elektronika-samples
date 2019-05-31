#line 1 "D:/tempDelete/Expanding-IO-Ports-of-a-PIC-Microcontroller/MCP23S17-SPI-16IO-Expander/Expanding IO Ports of a PIC Microcontroller.c"

sbit SPExpanderRST at RC1_bit;
sbit SPExpanderCS at RC0_bit;
sbit SPExpanderRST_Direction at TRISC1_bit;
sbit SPExpanderCS_Direction at TRISC0_bit;


void main()
{
 int a;
 SPI1_Init();
 Expander_Init(0);







 Expander_Set_DirectionPortAB(0, 0x00);

 do
 {



 Expander_Write_PortAB(0,0x0F0F);

 Delay_ms(100);
 }while(1);
}

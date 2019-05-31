// Port Expander module connections
sbit  SPExpanderRST at RC1_bit;
sbit  SPExpanderCS  at RC0_bit;
sbit  SPExpanderRST_Direction at TRISC1_bit;
sbit  SPExpanderCS_Direction  at TRISC0_bit;
// End Port Expander module connections

void main()
{
  int a;
  SPI1_Init();               // Initialize SPI module used with PortExpander
  Expander_Init(0);          // Initialize Port Expander

//  Expander_Set_DirectionPortA(0, 0xFF);
//  Expander_Set_DirectionPortB(0, 0x00);
//
//  Expander_Set_PullUpsPortA(0, 0xFF);
  
  
    Expander_Set_DirectionPortAB(0, 0x00);

  do
  {
//     a = Expander_Read_PortA(0);
//     Expander_Write_PortB(0, a);
     
     Expander_Write_PortAB(0,0x0F0F);
     
     Delay_ms(100);
  }while(1);
}
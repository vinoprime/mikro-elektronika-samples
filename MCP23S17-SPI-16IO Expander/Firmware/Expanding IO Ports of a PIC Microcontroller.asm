
_main:

;Expanding IO Ports of a PIC Microcontroller.c,8 :: 		void main()
;Expanding IO Ports of a PIC Microcontroller.c,11 :: 		SPI1_Init();               // Initialize SPI module used with PortExpander
	CALL       _SPI1_Init+0
;Expanding IO Ports of a PIC Microcontroller.c,12 :: 		Expander_Init(0);          // Initialize Port Expander
	CLRF       FARG_Expander_Init_ModuleAddress+0
	CALL       _Expander_Init+0
;Expanding IO Ports of a PIC Microcontroller.c,20 :: 		Expander_Set_DirectionPortAB(0, 0x00);
	CLRF       FARG_Expander_Set_DirectionPortAB_ModuleAddress+0
	CLRF       FARG_Expander_Set_DirectionPortAB_Direction+0
	CLRF       FARG_Expander_Set_DirectionPortAB_Direction+1
	CALL       _Expander_Set_DirectionPortAB+0
;Expanding IO Ports of a PIC Microcontroller.c,22 :: 		do
L_main0:
;Expanding IO Ports of a PIC Microcontroller.c,27 :: 		Expander_Write_PortAB(0,0x0F0F);
	CLRF       FARG_Expander_Write_PortAB_ModuleAddress+0
	MOVLW      15
	MOVWF      FARG_Expander_Write_PortAB_Data_+0
	MOVLW      15
	MOVWF      FARG_Expander_Write_PortAB_Data_+1
	CALL       _Expander_Write_PortAB+0
;Expanding IO Ports of a PIC Microcontroller.c,29 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Expanding IO Ports of a PIC Microcontroller.c,30 :: 		}while(1);
	GOTO       L_main0
;Expanding IO Ports of a PIC Microcontroller.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

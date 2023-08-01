
_main:

;MyProject.c,1 :: 		void main(){
;MyProject.c,2 :: 		int arr[]={0,1,2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34,35};
	MOVLW      ?ICSmain_arr_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSmain_arr_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      main_arr_L0+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      R0+0
	CALL       ___CC2DW+0
;MyProject.c,5 :: 		trisb=0;
	CLRF       TRISB+0
;MyProject.c,6 :: 		trisd=1;
	MOVLW      1
	MOVWF      TRISD+0
;MyProject.c,7 :: 		trisc=0;
	CLRF       TRISC+0
;MyProject.c,8 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,9 :: 		portc=1;
	MOVLW      1
	MOVWF      PORTC+0
;MyProject.c,10 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,11 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;MyProject.c,12 :: 		portc.b0=1;
	BSF        PORTC+0, 0
;MyProject.c,13 :: 		while(1){
L_main1:
;MyProject.c,14 :: 		while(portd.b0!=1){
L_main3:
	BTFSC      PORTD+0, 0
	GOTO       L_main4
;MyProject.c,15 :: 		for( i = 23; i >=1&&portd.b0!=1;i-- ){
	MOVLW      23
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main5:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVLW      1
	SUBWF      main_i_L0+0, 0
L__main68:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
	BTFSC      PORTD+0, 0
	GOTO       L_main6
L__main66:
;MyProject.c,16 :: 		portb=arr[i];
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,17 :: 		portc.b1=1;
	BSF        PORTC+0, 1
;MyProject.c,18 :: 		portc.b2=0;
	BCF        PORTC+0, 2
;MyProject.c,19 :: 		portc.B3=0;
	BCF        PORTC+0, 3
;MyProject.c,20 :: 		portc.b4=0;
	BCF        PORTC+0, 4
;MyProject.c,21 :: 		if(i>3){portc.b5=0;}
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVF       main_i_L0+0, 0
	SUBLW      3
L__main69:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
	BCF        PORTC+0, 5
	GOTO       L_main11
L_main10:
;MyProject.c,22 :: 		else {portc.b5=1;}
	BSF        PORTC+0, 5
L_main11:
;MyProject.c,23 :: 		if(i>3){portc.b6=1;}
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVF       main_i_L0+0, 0
	SUBLW      3
L__main70:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
	BSF        PORTC+0, 6
	GOTO       L_main13
L_main12:
;MyProject.c,24 :: 		else{portc.b6=0;}
	BCF        PORTC+0, 6
L_main13:
;MyProject.c,25 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
;MyProject.c,15 :: 		for( i = 23; i >=1&&portd.b0!=1;i-- ){
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;MyProject.c,27 :: 		}
	GOTO       L_main5
L_main6:
;MyProject.c,28 :: 		flg=1;
	MOVLW      1
	MOVWF      main_flg_L0+0
	MOVLW      0
	MOVWF      main_flg_L0+1
;MyProject.c,29 :: 		mahh:
___main_mahh:
;MyProject.c,30 :: 		for(i=13;i>=1&&flg&&portd.b0!=1;i--){
	MOVLW      13
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main15:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVLW      1
	SUBWF      main_i_L0+0, 0
L__main71:
	BTFSS      STATUS+0, 0
	GOTO       L_main16
	MOVF       main_flg_L0+0, 0
	IORWF      main_flg_L0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main16
	BTFSC      PORTD+0, 0
	GOTO       L_main16
L__main65:
;MyProject.c,31 :: 		portb=arr[i];
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,32 :: 		portc.b1=0;
	BCF        PORTC+0, 1
;MyProject.c,33 :: 		if(i>3)portc.b2=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVF       main_i_L0+0, 0
	SUBLW      3
L__main72:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
	BCF        PORTC+0, 2
	GOTO       L_main21
L_main20:
;MyProject.c,35 :: 		portc.b2=1;
	BSF        PORTC+0, 2
;MyProject.c,36 :: 		}
L_main21:
;MyProject.c,37 :: 		if(i>3){portc.B3=1;}
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVF       main_i_L0+0, 0
	SUBLW      3
L__main73:
	BTFSC      STATUS+0, 0
	GOTO       L_main22
	BSF        PORTC+0, 3
	GOTO       L_main23
L_main22:
;MyProject.c,38 :: 		else{portc.B3=0;}
	BCF        PORTC+0, 3
L_main23:
;MyProject.c,39 :: 		portc.b4=1;
	BSF        PORTC+0, 4
;MyProject.c,40 :: 		portc.b5=0;
	BCF        PORTC+0, 5
;MyProject.c,41 :: 		portc.b6=0;
	BCF        PORTC+0, 6
;MyProject.c,42 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
;MyProject.c,30 :: 		for(i=13;i>=1&&flg&&portd.b0!=1;i--){
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;MyProject.c,44 :: 		}
	GOTO       L_main15
L_main16:
;MyProject.c,45 :: 		}
	GOTO       L_main3
L_main4:
;MyProject.c,46 :: 		while(portd.b0==1){
L_main25:
	BTFSS      PORTD+0, 0
	GOTO       L_main26
;MyProject.c,47 :: 		int k=3;
	MOVLW      3
	MOVWF      main_k_L2+0
	MOVLW      0
	MOVWF      main_k_L2+1
;MyProject.c,48 :: 		if(portd.b0==1&&portc.b1==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main29
	BTFSS      PORTC+0, 1
	GOTO       L_main29
L__main64:
;MyProject.c,49 :: 		for(k=3;k>0&&portd.b0==1;k--){
	MOVLW      3
	MOVWF      main_k_L2+0
	MOVLW      0
	MOVWF      main_k_L2+1
L_main30:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_k_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVF       main_k_L2+0, 0
	SUBLW      0
L__main74:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
	BTFSS      PORTD+0, 0
	GOTO       L_main31
L__main63:
;MyProject.c,50 :: 		portb=arr[k];
	MOVF       main_k_L2+0, 0
	MOVWF      R0+0
	MOVF       main_k_L2+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,51 :: 		portc.b5=1;
	BSF        PORTC+0, 5
;MyProject.c,52 :: 		portc.b6=0;
	BCF        PORTC+0, 6
;MyProject.c,53 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
;MyProject.c,49 :: 		for(k=3;k>0&&portd.b0==1;k--){
	MOVLW      1
	SUBWF      main_k_L2+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_k_L2+1, 1
;MyProject.c,54 :: 		}
	GOTO       L_main30
L_main31:
;MyProject.c,55 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,56 :: 		portc.b1=0;
	BCF        PORTC+0, 1
;MyProject.c,57 :: 		portc.b2=0;
	BCF        PORTC+0, 2
;MyProject.c,58 :: 		portc.b3=1;
	BSF        PORTC+0, 3
;MyProject.c,59 :: 		portc.b4=1;
	BSF        PORTC+0, 4
;MyProject.c,60 :: 		portc.b5=0;
	BCF        PORTC+0, 5
;MyProject.c,61 :: 		portc.b6=0;
	BCF        PORTC+0, 6
;MyProject.c,62 :: 		while(portd.b0==1&&portd.b1==0){
L_main36:
	BTFSS      PORTD+0, 0
	GOTO       L_main37
	BTFSC      PORTD+0, 1
	GOTO       L_main37
L__main62:
;MyProject.c,63 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	NOP
;MyProject.c,64 :: 		}
	GOTO       L_main36
L_main37:
;MyProject.c,65 :: 		}
L_main29:
;MyProject.c,67 :: 		if(portd.b0==1&&portc.b1==0){
	BTFSS      PORTD+0, 0
	GOTO       L_main43
	BTFSC      PORTC+0, 1
	GOTO       L_main43
L__main61:
;MyProject.c,68 :: 		for(k=3;k>0&&portd.b0==1;k--){
	MOVLW      3
	MOVWF      main_k_L2+0
	MOVLW      0
	MOVWF      main_k_L2+1
L_main44:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_k_L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVF       main_k_L2+0, 0
	SUBLW      0
L__main75:
	BTFSC      STATUS+0, 0
	GOTO       L_main45
	BTFSS      PORTD+0, 0
	GOTO       L_main45
L__main60:
;MyProject.c,69 :: 		portb=arr[k];
	MOVF       main_k_L2+0, 0
	MOVWF      R0+0
	MOVF       main_k_L2+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,70 :: 		portc.B2=1;
	BSF        PORTC+0, 2
;MyProject.c,71 :: 		portc.b3=0;
	BCF        PORTC+0, 3
;MyProject.c,72 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
	DECFSZ     R11+0, 1
	GOTO       L_main49
	NOP
;MyProject.c,68 :: 		for(k=3;k>0&&portd.b0==1;k--){
	MOVLW      1
	SUBWF      main_k_L2+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_k_L2+1, 1
;MyProject.c,73 :: 		}
	GOTO       L_main44
L_main45:
;MyProject.c,74 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,75 :: 		portc.b1=1;
	BSF        PORTC+0, 1
;MyProject.c,76 :: 		portc.b2=0;
	BCF        PORTC+0, 2
;MyProject.c,77 :: 		portc.b3=0;
	BCF        PORTC+0, 3
;MyProject.c,78 :: 		portc.b4=0;
	BCF        PORTC+0, 4
;MyProject.c,79 :: 		portc.B5=0;
	BCF        PORTC+0, 5
;MyProject.c,80 :: 		portc.b6=1;
	BSF        PORTC+0, 6
;MyProject.c,81 :: 		while(portd.b0==1&&portd.b1==0){
L_main50:
	BTFSS      PORTD+0, 0
	GOTO       L_main51
	BTFSC      PORTD+0, 1
	GOTO       L_main51
L__main59:
;MyProject.c,82 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
	NOP
;MyProject.c,83 :: 		}
	GOTO       L_main50
L_main51:
;MyProject.c,84 :: 		}
L_main43:
;MyProject.c,85 :: 		}
	GOTO       L_main25
L_main26:
;MyProject.c,88 :: 		if(portc.b4==1&&portc.b3==1){ goto mahh;  }
	BTFSS      PORTC+0, 4
	GOTO       L_main57
	BTFSS      PORTC+0, 3
	GOTO       L_main57
L__main58:
	GOTO       ___main_mahh
L_main57:
;MyProject.c,91 :: 		}
	GOTO       L_main1
;MyProject.c,92 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

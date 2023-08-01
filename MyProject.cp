#line 1 "C:/Users/mahmoud/Desktop/Embedded mm/MyProject.c"
void main(){
int arr[]={0,1,2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34,35};
int i=0;
int flg=0;
 trisb=0;
 trisd=1;
 trisc=0;
 portb=0;
 portc=1;
 portd=0;
 delay_ms(100);
 portc.b0=1;
 while(1){
 while(portd.b0!=1){
 for( i = 23; i >=1&&portd.b0!=1;i-- ){
 portb=arr[i];
 portc.b1=1;
 portc.b2=0;
 portc.B3=0;
 portc.b4=0;
 if(i>3){portc.b5=0;}
 else {portc.b5=1;}
 if(i>3){portc.b6=1;}
 else{portc.b6=0;}
 delay_ms(100);

 }
 flg=1;
 mahh:
 for(i=13;i>=1&&flg&&portd.b0!=1;i--){
 portb=arr[i];
 portc.b1=0;
 if(i>3)portc.b2=0;
 else{
 portc.b2=1;
 }
 if(i>3){portc.B3=1;}
 else{portc.B3=0;}
 portc.b4=1;
 portc.b5=0;
 portc.b6=0;
 delay_ms(100);

 }
 }
 while(portd.b0==1){
 int k=3;
 if(portd.b0==1&&portc.b1==1){
 for(k=3;k>0&&portd.b0==1;k--){
 portb=arr[k];
 portc.b5=1;
 portc.b6=0;
 delay_ms(100);
 }
 portb=0;
 portc.b1=0;
 portc.b2=0;
 portc.b3=1;
 portc.b4=1;
 portc.b5=0;
 portc.b6=0;
 while(portd.b0==1&&portd.b1==0){
 delay_ms(10);
 }
 }

 if(portd.b0==1&&portc.b1==0){
 for(k=3;k>0&&portd.b0==1;k--){
 portb=arr[k];
 portc.B2=1;
 portc.b3=0;
 delay_ms(100);
 }
 portb=0;
 portc.b1=1;
 portc.b2=0;
 portc.b3=0;
 portc.b4=0;
 portc.B5=0;
 portc.b6=1;
 while(portd.b0==1&&portd.b1==0){
 delay_ms(10);
 }
 }
 }


 if(portc.b4==1&&portc.b3==1){ goto mahh; }


}
}

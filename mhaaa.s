THUMB
   AREA RESET, DATA, READONLY

    EXPORT __Vectors

__Vectors DCD 0x20001000

                DCD Reset_Handler

               ALIGN


       AREA MYRAM, DATA, READWRITE

SUM  DCD 0

       AREA MYCODE, CODE, READONLY

        ENTRY

        EXPORT Reset_Handler

Reset_Handler
	LDR R0,=Array
	MOV R1,#0 
	MOV R2,#0

loop LDR R3,[R0,+R1]   
     LSRS R3,#01 
	
	 
   ADD R2,R2,R3 
     ADD R1,R1,#01
	 CMP R1,#9 
	 BGT Stop 
	 B loop
	
Array DCB 34, 56, 27, 156, 200, 68, 128,235, 17, 45

Stop    B Stop
end
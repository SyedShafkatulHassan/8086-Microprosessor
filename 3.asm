.MODEL SMALL 
.STACK 100H 
.DATA 
string1 DB "ENTER FIRST NUMBER : $"
string2 DB "ENTER SECOND NUMBER : $"
string3 DB "Sumation is : $" 
.CODE                         
MAIN PROC 
 
 MOV AX,@DATA 
 MOV DS,AX 
 
 MOV AH,9 
 LEA DX,string1 
 INT 21H
 
 MOV AH,1
 INT 21H
 MOV BL,AL
  
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H  
 
 MOV AH,9
 LEA DX,string2 
 INT 21H 
 
 MOV AH,1
 INT 21H
 MOV CL,AL
 
 
 ADD BL,CL 
 SUB BL,48 
 
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H  
 
 MOV AH,9
 LEA DX,string3 
 INT 21H
 

 
 MOV AH,2
 MOV DL,BL
 INT 21H

  
 END MAIN 

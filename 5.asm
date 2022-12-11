.MODEL SMALL 
.STACK 100H 
.DATA 
string1 DB "MICROPROCESSOR$"
string2 DB "ASSEMBLY LANGUAGE $"
string3 DB "COMPUTER INTERFACING SESSIONAL $" 
.CODE                         
MAIN PROC 
 
 MOV AX,@DATA 
 MOV DS,AX 
 
 MOV AH,9 
 LEA DX,string1 
 INT 21H
 
  
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H  
 
 MOV AH,9
 LEA DX,string2 
 INT 21H 
 
 
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H  
 
 MOV AH,9
 LEA DX,string3 
 INT 21H
 

  
 END MAIN 

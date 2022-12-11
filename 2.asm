.MODEL SMALL 
.STACK 100H 
.DATA 
string1 DB "@*%"
string2 DB "$" 
string3 DB "#@$" 
.CODE 
MAIN PROC 
 
 MOV AX,@DATA 
 MOV DS,AX 
 
 MOV AH,9 
 LEA DX,string1 
 INT 21H 
 
 MOV AH,2 
 MOV DL,string2 
 INT 21H 
 
 MOV AH,9 
 LEA DX,string3 
 INT 21H 
  
 END MAIN 
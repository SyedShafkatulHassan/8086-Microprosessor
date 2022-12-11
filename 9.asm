.MODEL SMALL 
.STACK 100H 
.DATA 
string1 DB "OUT OF RANGE $" 
string2 DB "IN RANGE $" 

.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX 
  
 
 MOV AH,1 
 INT 21H 
 MOV BL,AL 
 
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H 
 
 CMP BL,'8' 
 JG  firstlevel 
 JMP secondlevel 
 
 firstlevel: 
 MOV AH,9 
 LEA DX,string1 
 INT 21H 
 JMP EXIT 
 
 secondlevel: 
 CMP BL,'3' 
 JL firstlevel 
 JMP thirdlevel 
 
 thirdlevel: 
 MOV AH,9 
 LEA DX,string2 
 INT 21H 
 
 
 EXIT: 
 MOV AH,4CH 
 INT 21H 
 ENDP MAIN 
END MAIN 
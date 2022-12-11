.MODEL SMALL
.STACK 100H
.DATA
a DB '3'
b DB ?
string1 DB "User defined number $"
string2 DB "pre-defined number $" 
string3 DB "Enter a number $"
.CODE
MAIN PROC
    
 MOV CX,@DATA
 MOV DS,CX 
 
 MOV AH,9
 LEA DX,string1
 INT 21H

 MOV AH,1
 INT 21H
 MOV b,AL
 
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H
 
 MOV AH,9
 LEA DX,string1
 INT 21H
 
 MOV AH,2
 MOV DL,b
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
 MOV DL,a
 INT 21H

END MAIN 

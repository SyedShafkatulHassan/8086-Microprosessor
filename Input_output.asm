.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC 
     MOV AH,1;input function
     INT 21H
     MOV BL,AL  
     
     MOV AH,2
     MOV DL,BL
     INT 21H
     
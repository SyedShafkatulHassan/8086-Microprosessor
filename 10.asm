.MODEL SMALL
.STACK 100H
.DATA
string1 DB 10,13,"LARGEST $"
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

 MOV AH,1
 INT 21H
 MOV BH,AL
 
 MOV AH,2 
 MOV DL,10 
 INT 21H 
 MOV DL,13 
 INT 21H

 MOV AH,1
 INT 21H
 MOV CL,AL

 CMP BL,BH
 JG Level1
 JMP Level2

 Level1:
 CMP BL,CL
 JG Level3

 MOV AH,9
 LEA DX,string1
 INT 21H

 MOV AH,2
 MOV DL,CL
 INT 21H

 JMP EXIT

 Level2:
 CMP BH,CL
 JG D

 MOV AH,9
 LEA DX,string1
 INT 21H

 MOV AH,2
 MOV DL,CL
 INT 21H

 JMP EXIT

 Level3:
 MOV AH,9
 LEA DX,string1
 INT 21H

 MOV AH,2
 MOV DL,BL
 INT 21H

 JMP EXIT

 D:
 MOV AH,9
 LEA DX,string1
 INT 21H

 MOV AH,2
 MOV DL,BH
 INT 21H

 EXIT:
 MOV AH,4CH
 INT 21H
 ENDP MAIN
END MAIN 
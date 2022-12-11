.MODEL SMALL 
.STACK 100H    
 
.DATA  

L DB ?
U DB ?
C DB ?
S DB ?
E DB ?

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV L,AL
    
    MOV AH,2 
    MOV DL,10 
    INT 21H 
    MOV DL,13 
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV U,AL
    
    MOV AH,2 
    MOV DL,10 
    INT 21H 
    MOV DL,13 
    INT 21H  
    
    MOV AH,1
    INT 21H
    MOV C,AL
    
    MOV AH,2 
    MOV DL,10 
    INT 21H 
    MOV DL,13 
    INT 21H
    
    
    MOV AH,1
    INT 21H
    MOV S,AL
    
    MOV AH,2 
    MOV DL,10 
    INT 21H 
    MOV DL,13 
    INT 21H 
    
     
    MOV AH,1
    INT 21H
    MOV E,AL
    
    MOV AH,2 
    MOV DL,10 
    INT 21H 
    MOV DL,13 
    INT 21H 
                    
    MOV AH,2
    MOV DL,L 
    INT 21H 
    
                     
    MOV AH,2
    MOV DL,U 
    INT 21H 
    
                      
    MOV AH,2
    MOV DL,C 
    INT 21H 
    
    MOV AH,2
    MOV DL,S 
    INT 21H 
    
    MOV AH,2
    MOV DL,E 
    INT 21H
  END MAIN
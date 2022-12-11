.MODEL SMALL
.STACK 100H
.DATA
string1 DB "Name: Shafkat $"
string2 DB 10,13,"Department: CSE $"
string3 DB 10,13,"Section: G$"
string4 DB 10,13,"Student ID: 2012020130$"
.CODE
MAIN PROC
 MOV CX,@DATA
 MOV DS,CX

 MOV AH,9
 LEA DX,string1
 INT 21H

 MOV AH,9
 LEA DX,string2
 INT 21H

 MOV AH,9
 LEA DX,string3
 INT 21H

 MOV AH,9
 LEA DX,string4
 INT 21H
END MAIN 
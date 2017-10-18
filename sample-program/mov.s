section .data
asd dw 200
table dw 0x1000,0x2200,0x3000,0x4000

section .text
global _start
_start:

mov ebx,table
mov esi,3
mov [ebx+esi*2],0x4000

section .data
x dw 100
y db 1,2,3,4
section .text
global _start
_start:

mov ecx,x
mov cx,word [ecx]
mov cl,[y]
mov dl,[y+1]

mov eax,1
mov ebx,0
int 0x80


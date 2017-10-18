section .data
kotak_1 dw 4000
kotak_2 dw 2000

section .text
global _start
_start:

mov ax,[kotak_1]
mov bx,[kotak_2]
mov [kotak_1],bx
mov [kotak_2],ax
add word [kotak_1],1000
mov ax,45780
add ax,ax


section .data
x dd 10

BITS 32
add dword [x],10
mov eax,10
ret

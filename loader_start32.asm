lgdt cs:[_gdtr]

mov eax, cr0 ; Instruçaõ pricilegiada
or al, 1 ; esse e o bit responsavel pelo modo protegido
mov cr0, eax ; instrucao privilegiada

    jmp (0x1 << 3):start32 ; atribui o primeiro seletor do seguimentos cs

align 16
_gdtr: ; armazena o indice da ultima entrada da GDT + endereçoi da GDT
    dw 47
    dq _qdt

align 16

_gqt:
    ; descritor nulo (deve estar presente em qualquer gdt)
    dd 0x00, 0x00
    ;descritor de codigo x32
    db 0xff, 0xff, 0x00, 0x00, 0x9a, 0xcf, 0x00
    db 0xff, 0xff, 0x00, 0x00, 0x00, 0x92, 0xcf
    
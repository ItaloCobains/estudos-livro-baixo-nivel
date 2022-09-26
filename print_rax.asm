section .data

codes:
	db	'0123456789ABCDEF'

section .text
global _start
_start:
	; 1122.... em formato hexadecimal
	mov rax, 1122334455667788

	mov rdi, 1
	mov rdx, 1
	mov rcx, 64
	; cada 4 bits devem ser exibidos como um digito hexadecimal 
	; use o deslocamento (shift) e a operação bit a bit AND para isolá-los
	; o resultado é o offset no array codes
.loop:
	push rax
	sub rcx, 4
	; cl é um registrador, a parte menor de rcx
	; rax -- eax -- ax -- ah + al
	; rcx -- ecx -- cx -- ch - cl
	sar rax, cl
	and rax, 0xf
	
	lea rsi, [codes + rax]
	mov rax, 1
	
	;syscall deixa rax e e11 alterados
	push rcx 
	syscall 
	pop rcx

	pop rax
	; test pode ser usado para verificação mais rapida do tipo 'é um zero?'
	; consulte a documentação do comando 'test'

	test rcx, rcx
	jnz .loop

	mov rax, 60 ; faz chamada do syscall 'exit'
	xor rdi, rdi
	syscall







global _start

section .data
message: db 'Hello, world!', 10

section .text
_start:
	mov rax, 1 ; o numero da chamada de sistema deve ser armazenado em rax
	mov rdi, 1 ; argumento #1 em rdi: onde escrever (descritor)?
	mov rsi, message ; o argumento #2 em rsi: onde começa a string
	mov rdx, 14 ; argumento #3 em rdx: quantos bytes devem ser escritos ?
	syscall ; essa instrução faz chamada do sistema

	mov rax, 60 ; numero syscall 'exit' 
	xor rdi, rdi
	syscall

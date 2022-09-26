mov rax, -1
mov rdx, 2

cmp rax, rdx 
jg location
ja location ; logica diferente

cmp rax, rdx 
je location
jne location

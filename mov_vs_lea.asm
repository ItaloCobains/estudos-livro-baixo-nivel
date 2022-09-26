;rsi <- endereço do rotulo 'codes', um numero
mov rsi, codes

;rsi conteudo da memoria começando com o endereço de codes
; 8 bytes consecutivos sao adquiridos porque o tamanho de rsi e de 8 bytes 
mov rsi, [codes]

;rsi endereço de codes
; neste caso, é equivalente a mov rsi, codes
; em geral, o endereço pode conter varios components
lea rsi, [codes]

; rsi <- conteudo da memoria, começando em (codes+rax)
mov rsi, [codes + rax]

;rsi <- codes + rax 
;equivalente a combinação:
;   -- mov rsi, codes
;   -- add rsi, rax
;   não é possivel fazer isto com um unico mov!
lea rsi, [codes + rax]

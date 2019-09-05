;nasm -f elf64 say_hi.asm
;gcc example.c say_hi.o -o hello

SECTION .DATA
	hello:     db 'Hello world!',10
	helloLen:  equ $-hello

SECTION .TEXT
	GLOBAL say_hi

say_hi:
	mov eax,4            ; write()
	mov ebx,1            ; STDOUT
	mov ecx,hello
	mov edx,helloLen
	int 80h                 ; Interrupt
        ret                        ; Return control

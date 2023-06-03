.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\msvcrt.inc
include \masm32\macros\macros.asm

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\msvcrt.lib

.data 
    dois dd 2
.code
start:
    mov eax, 12
    mov edx, 0
    div dois   
    cmp edx, 0
    jz par
    printf("eh impar\n")
    jmp fim
    par:
    printf("eh par\n")  

    fim:
    invoke ExitProcess, 0
end start
        
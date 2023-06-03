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
    a dd 120
    b dd 15


.code
start:
    mov eax, a
    cmp eax, b
    jb maior
    mov eax, a;
    jmp printa
    maior:
    mov eax, b
    jmp printa
    printa:
    printf("o maiorr eh %d\n", eax)
    invoke ExitProcess, 0
end start
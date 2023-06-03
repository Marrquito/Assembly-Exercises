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
    mil dd 1000
    onze dd 11
.code
start:
    mov ebx, mil
    porra:
    mov eax, ebx
    div onze
    cmp edx, 5
    je printa
    inc ebx
    cmp ebx, 1999
    je fim
    jmp porra
    printa:
    printf("%d ", eax)
    inc ebx
    cmp ebx, 1999
    je fim
    jmp porra
    
    fim:
    printf("\nfim do karai\n")
    invoke ExitProcess, 0
end start
        
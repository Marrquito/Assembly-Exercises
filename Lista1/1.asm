.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\msvcrt.inc

include \masm32\macros\macros.asm ; macros do masm como o printf

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\msvcrt.lib

.data 
    numero dword 1
    
.code
start:
    mov eax, 0
  top:
    add eax, numero
    ;printf("numero = %d\n", numero)
    inc numero

    cmp numero, 101
    jne top

    printf("EAX: %d\n", eax)

    invoke ExitProcess, 0
end start
        
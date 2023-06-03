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
    n1 dword 0
    n2 dword 10
    n3 dword 15
    
.code
start:
    mov eax, 0
    add eax, n2
    add eax, n3
    mov n1, eax
    add n1, 100

    printf("n1 = %d\n", n1)

    invoke ExitProcess, 0
end start
    
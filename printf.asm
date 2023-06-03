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
    numero db 5 ; variavel para armazenar um numero *** pq com byte n funciona e com dword funciona? ***

.code
start:
    mov al, 10
    add al, numero

    printf("AL: %d\n", al)

    invoke ExitProcess, 0
end start
    
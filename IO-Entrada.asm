.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.data
    message db "Opa, printei", 0ah, 0h
    outputHandle dd 0; variavel para o handle do console(saida)
    write_count dd 0; variavel para armazenar quantos caracteres foram escritos

.code
start:
    ;-----------------
    ;push STD_OUTPUT_HANDLE <-> uma forma de fazer utilizando a pilha
    ;call GetStdHandle
    ;------------------

    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov outputHandle, eax ; o retorno da func fica armazenado em eax
    invoke WriteConsole, outputHandle, addr message, sizeof message, addr write_count, NULL ; handle do console, endereço do array que vai printar,tamanho da string, endereço do contador, NULL por convenção
    invoke ExitProcess, 0
end start
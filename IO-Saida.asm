.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
    inputString db 50 dup(0)
    inputHandle dd 0
    outputHandle dd 0
    consoleCount dd 0
    tamanhoString dd 0

.code
start:
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov outputHandle, eax
    invoke GetStdHandle, STD_INPUT_HANDLE
    mov inputHandle, eax 

    invoke ReadConsole, inputHandle, addr inputString, sizeof inputString, addr consoleCount, NULL
    invoke StrLen, addr inputString
    mov tamanhoString, eax

    invoke WriteConsole, outputHandle, addr inputString, tamanhoString, addr consoleCount, NULL
    invoke ExitProcess, 0
end start
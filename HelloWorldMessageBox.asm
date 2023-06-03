.686 ; executa o programa em modo seguro
.model flat, stdcall ; a organizacao de memoria sera do modo flag, stdcall para chamar func do masm
option casemap :none ; os labels do programa vao ser case sensetive

include \masm32\include\windows.inc ; constantes do windows como MB_OK e NULL
include \masm32\include\kernel32.inc ; func do nucleo do windows como ExitProcess
include \masm32\include\user32.inc ; func de user tipo MessageBox ( janela de interacao com usuario )
includelib \masm32\lib\kernel32.lib ; implementacao da biblioteca
includelib \masm32\lib\user32.lib   ; implementacao da biblioteca

.data
    HelloWorld db "Hello World!", 0 ; criando varial HelloWorld do tipo db

.code
start:
    invoke MessageBox, NULL, addr HelloWorld, addr HelloWorld, MB_OK
    invoke ExitProcess, 0
end start
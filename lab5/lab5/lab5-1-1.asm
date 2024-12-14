SECTION .data ; Секция инициированых данных
msg: DB 'Введите строку:' ,10
msgLen: EQU $-msg ; Длина перемнных 'msg'
SECTION .bss ; Секция не инициированных данных
buf1: RESB 80 ; Буфер размером 80 байт
SECTION .text ; Код программы 
GLOBAL _start ; Начало программы
_start: 
mov eax,4
mov ebx,1
mov ecx,msg
mov edx,msgLen
int 80h
mov eax, 3
mov ebx, 0
mov ecx, buf1
mov edx, 80
int 80h
mov eax, 4
mov ebx, 1
mov ecx, buf1
mov edx, buf1
mov eax,1
mov ebx,0
int 80h

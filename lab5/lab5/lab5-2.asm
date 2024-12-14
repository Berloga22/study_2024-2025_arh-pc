%include 'in_out.asm'
SECTION .data ; Секция инициированых данных
msg: DB 'Введите строку:' ,10
msgLen: EQU $-msg ; Длина перемнных 'msg'
SECTION .bss ; Секция не инициированных данных
buf1: RESB 80 ; Буфер размером 80 байт
SECTION .text ; Код программы 
GLOBAL _start ; Начало программы
_start: 
mov eax, msg
call sprintLF
mov ecx, buf1
mov edx, 80
call sread
call quit


.intel_syntax noprefix

.data 
hellos:     .string "Hello world!\n"
len_hellos = . -  hellos

.text
.global _start
_start: 
        mov eax, 4
        mov ebx, 1
        mov ecx, OFFSET FLAT: hellos
        mov edx, len_hellos
        int 0x80

        mov eax, 1
        xor ebx,ebx 
        int 0x80

        
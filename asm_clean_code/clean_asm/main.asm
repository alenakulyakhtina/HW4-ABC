default rel

global main

extern __stack_chk_fail
extern printf
extern con_write_to_file
extern con_sort
extern con_generate_random
extern __isoc99_sscanf
extern con_read_from_file
extern strcmp
extern puts
extern clock
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   
; Entry point - main function
main:
               
        push    rbp
        mov     rbp, rsp
        lea     r11, [rsp-9C000H]
L_001:  sub     rsp, 4096
        or      qword [rsp], 00H
        cmp     rsp, r11
        jnz     L_001
        sub     rsp, 1088
        mov     dword [rbp-9C434H], edi
        mov     qword [rbp-9C440H], rsi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        call    clock
        mov     qword [rbp-9C420H], rax
        cmp     dword [rbp-9C434H], 4
        jz      L_002
        lea     rdi, [rel message_incor_num_params]
        call    puts
        mov     eax, 1
        jmp     L_006

L_002:  mov     dword [rbp-9C428H], 0
        mov     rax, qword [rbp-9C440H]
        add     rax, 8
        mov     rax, qword [rax]
        lea     rsi, [rel sym_param_f]
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        jnz     L_003
        mov     rax, qword [rbp-9C440H]
        add     rax, 16
        mov     rax, qword [rax]
        lea     rdx, [rbp-9C410H]
        mov     rsi, rdx
        mov     rdi, rax
        call    con_read_from_file
        mov     dword [rbp-9C428H], eax
        mov     eax, dword [rbp-9C428H]
        test    eax, eax
        jns     L_005
        mov     eax, 1
        jmp     L_006

L_003:  mov     rax, qword [rbp-9C440H]
        add     rax, 8
        mov     rax, qword [rax]
        lea     rsi, [rel sym_param_r]
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        jnz     L_004
        mov     rax, qword [rbp-9C440H]
        add     rax, 16
        mov     rax, qword [rax]
        lea     rdx, [rbp-9C428H]
        lea     rsi, [rel L_011]
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_sscanf
        mov     edx, dword [rbp-9C428H]
        lea     rax, [rbp-9C410H]
        mov     esi, edx
        mov     rdi, rax
        call    con_generate_random
        jmp     L_005

L_004:  lea     rdi, [rel message_incor_params]
        call    puts
        mov     eax, 1
        jmp     L_006

L_005:  mov     edx, dword [rbp-9C428H]
        lea     rax, [rbp-9C410H]
        mov     esi, edx
        mov     rdi, rax
        call    con_sort
        mov     edx, dword [rbp-9C428H]
        mov     rax, qword [rbp-9C440H]
        add     rax, 24
        mov     rax, qword [rax]
        lea     rcx, [rbp-9C410H]
        mov     rsi, rcx
        mov     rdi, rax
        call    con_write_to_file
        mov     dword [rbp-9C424H], eax
        call    clock
        mov     qword [rbp-9C418H], rax
        mov     rax, qword [rbp-9C418H]
        sub     rax, qword [rbp-9C420H]
        cvtsi2sd xmm0, rax
        movsd   xmm1, qword [rel L_014]
        divsd   xmm0, xmm1
        movapd  xmm1, xmm0
        movsd   xmm0, qword [rel L_015]
        mulsd   xmm0, xmm1
        lea     rdi, [rel L_013]
        mov     eax, 1
        call    printf
        mov     eax, dword [rbp-9C424H]

L_006:  mov     rcx, qword [rbp-8H]

        xor     rcx, qword [fs:abs 28H]
        jz      L_007
        call    __stack_chk_fail

L_007:  leave
        ret


SECTION .data   

message_incor_num_params: db  "Incorrect number of parameters! ", 0xA,0xD
sym_param_f:    db  "-f", 0
sym_param_r:    db  "-r", 0
message_incor_params:    db  "Incorrect parameters, expected -f or -r! ", 0xA,0xD

SECTION .bss    


SECTION .rodata 

L_011:
        db 25H, 64H, 00H, 00H, 00H, 00H, 00H, 00H
        db 00H, 00H

L_013:
        db 54H, 69H, 6DH, 65H, 3AH, 20H, 25H, 66H ; Time string
        db 20H, 6DH, 73H, 0AH, 00H, 00H, 00H

L_014:  dq 412E848000000000H

L_015:  dq 408F400000000000H



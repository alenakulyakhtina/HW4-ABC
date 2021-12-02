default rel      

global con_read_from_file
global con_generate_random
global con_write_to_file
global con_sort
global function_for_sorting

extern print_animal
extern ani_random_animal
extern __stack_chk_fail
extern fclose
extern feof
extern printf
extern __isoc99_fscanf
extern puts
extern fopen
extern _GLOBAL_OFFSET_TABLE_

; Describing an animal container

SECTION .text   

; Reading from input file.
; 0 cod 2500 0 - example
con_read_from_file:
push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        mov     rax, qword [rbp-28H]
        lea     rdx, [rel L_032]
        mov     rsi, rdx
        mov     rdi, rax
        call    fopen
        mov     qword [rbp-10H], rax
        cmp     qword [rbp-10H], 0
        jnz     L_001
        lea     rax, [rel rel message_error_open_input_file]
        mov     rdi, rax
        call    puts
        mov     eax, 4294967295
        jmp     L_013

L_001:  mov     dword [rbp-1CH], 0
        mov     dword [rbp-18H], 0
        jmp     L_012

L_002:  add     dword [rbp-18H], 1
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        lea     rsi, [rax+3CH]
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        lea     rcx, [rax+34H]
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     rdi, rax
        lea     rdx, [rbp-20H]
        mov     rax, qword [rbp-10H]
        mov     r9, rsi
        mov     r8, rcx
        mov     rcx, rdi
        lea     rsi, [rel L_034]
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        mov     dword [rbp-14H], eax
        cmp     dword [rbp-14H], 4
        jne     L_011
        mov     eax, dword [rbp-20H]
        test    eax, eax
        js      L_003
        mov     eax, dword [rbp-20H]
        cmp     eax, 2
        jle     L_004
L_003:  mov     eax, dword [rbp-18H]
        mov     esi, eax
        lea     rax, [rel message_error_type_animal_line]
        mov     rdi, rax
        mov     eax, 0
        call    printf
        jmp     L_012

L_004:  mov     edx, dword [rbp-20H]
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rcx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rcx
        mov     dword [rax+38H], edx
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+38H]
        test    eax, eax
        jnz     L_006
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+3CH]
        test    eax, eax
        js      L_005
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+3CH]
        cmp     eax, 2
        jle     L_006
L_005:  mov     eax, dword [rbp-18H]
        mov     esi, eax
        lea     rax, [rel message_error_fish_attribute]
        mov     rdi, rax
        mov     eax, 0
        call    printf
        jmp     L_012

L_006:  mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+38H]
        cmp     eax, 1
        jnz     L_008
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+3CH]
        test    eax, eax
        js      L_007
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+3CH]
        cmp     eax, 1
        jle     L_008
L_007:  mov     eax, dword [rbp-18H]
        mov     esi, eax
        lea     rax, [rel message_error_bird_attribute]
        mov     rdi, rax
        mov     eax, 0
        call    printf
        jmp     L_012

L_008:  mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+38H]
        cmp     eax, 2
        jnz     L_010
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+3CH]
        test    eax, eax
        js      L_009
        mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     eax, dword [rax+3CH]
        cmp     eax, 2
        jle     L_010
L_009:  mov     eax, dword [rbp-18H]
        mov     esi, eax
        lea     rax, [rel message_error_beast_attribute]
        mov     rdi, rax
        mov     eax, 0
        call    printf
        jmp     L_012

L_010:  add     dword [rbp-1CH], 1
        jmp     L_012

L_011:  mov     eax, dword [rbp-18H]
        mov     esi, eax
        lea     rax, [rel message_error_parse_line]
        mov     rdi, rax
        mov     eax, 0
        call    printf
L_012:  mov     rax, qword [rbp-10H]
        mov     rdi, rax
        call    feof
        test    eax, eax
        je      L_002
        mov     rax, qword [rbp-10H]
        mov     rdi, rax
        call    fclose
        mov     eax, dword [rbp-1CH]
L_013:  mov     rdx, qword [rbp-8H]


        sub     rdx, qword [fs:abs 28H]
        jz      L_014
        call    __stack_chk_fail
L_014:  leave
        ret

; Generating a list of animals
con_generate_random:
               
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 104
        mov     qword [rbp-28H], rdi
        mov     dword [rbp-2CH], esi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-18H], rax
        xor     eax, eax
        mov     dword [rbp-1CH], 0
        jmp     L_016

L_015:  mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-28H]
        lea     rbx, [rdx+rax]
        lea     rax, [rbp-70H]
        mov     rdi, rax
        mov     eax, 0
        call    ani_random_animal
        mov     rax, qword [rbp-70H]
        mov     rdx, qword [rbp-68H]
        mov     qword [rbx], rax
        mov     qword [rbx+8H], rdx
        mov     rax, qword [rbp-60H]
        mov     rdx, qword [rbp-58H]
        mov     qword [rbx+10H], rax
        mov     qword [rbx+18H], rdx
        mov     rax, qword [rbp-50H]
        mov     rdx, qword [rbp-48H]
        mov     qword [rbx+20H], rax
        mov     qword [rbx+28H], rdx
        mov     rax, qword [rbp-40H]
        mov     rdx, qword [rbp-38H]
        mov     qword [rbx+30H], rax
        mov     qword [rbx+38H], rdx
        add     dword [rbp-1CH], 1
L_016:  mov     eax, dword [rbp-1CH]
        cmp     eax, dword [rbp-2CH]
        jl      L_015
        mov     eax, 0
        mov     rcx, qword [rbp-18H]


        xor     rcx, qword [fs:abs 28H]
        jz      L_017
        call    __stack_chk_fail
L_017:  add     rsp, 104
        pop     rbx
        pop     rbp
        ret


; Writting to output file
con_write_to_file:
               
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 56
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     dword [rbp-34H], edx
        mov     rax, qword [rbp-28H]
        lea     rsi, [rel L_040]
        mov     rdi, rax
        call    fopen
        mov     qword [rbp-18H], rax
        cmp     qword [rbp-18H], 0
        jnz     L_018
        lea     rdi, [rel message_error_open_output_file]
        call    puts
        mov     eax, 1
        jmp     L_021

L_018:  mov     dword [rbp-1CH], 0
        jmp     L_020

L_019:  mov     eax, dword [rbp-1CH]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-30H]
        add     rax, rdx
        mov     rsi, qword [rbp-18H]
        sub     rsp, 64
        mov     rdx, rsp
        mov     rcx, qword [rax]
        mov     rbx, qword [rax+8H]
        mov     qword [rdx], rcx
        mov     qword [rdx+8H], rbx
        mov     rcx, qword [rax+10H]
        mov     rbx, qword [rax+18H]
        mov     qword [rdx+10H], rcx
        mov     qword [rdx+18H], rbx
        mov     rcx, qword [rax+20H]
        mov     rbx, qword [rax+28H]
        mov     qword [rdx+20H], rcx
        mov     qword [rdx+28H], rbx
        mov     rcx, qword [rax+30H]
        mov     rbx, qword [rax+38H]
        mov     qword [rdx+30H], rcx
        mov     qword [rdx+38H], rbx
        mov     rdi, rsi
        call    print_animal
        add     rsp, 64
        add     dword [rbp-1CH], 1
L_020:  mov     eax, dword [rbp-1CH]
        cmp     eax, dword [rbp-34H]
        jl      L_019
        mov     rax, qword [rbp-18H]
        mov     rdi, rax
        call    fclose
        mov     eax, 0
L_021:  mov     rbx, qword [rbp-8H]
        leave
        ret

; Function for sorting container contents
con_sort:
               
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 120
        mov     qword [rbp-78H], rdi
        mov     dword [rbp-7CH], esi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-18H], rax
        xor     eax, eax
        mov     dword [rbp-64H], 0
        jmp     L_026

L_022:  mov     eax, dword [rbp-64H]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-78H]
        add     rax, rdx
        mov     rcx, qword [rax]
        mov     rbx, qword [rax+8H]
        mov     qword [rbp-60H], rcx
        mov     qword [rbp-58H], rbx
        mov     rcx, qword [rax+10H]
        mov     rbx, qword [rax+18H]
        mov     qword [rbp-50H], rcx
        mov     qword [rbp-48H], rbx
        mov     rcx, qword [rax+20H]
        mov     rbx, qword [rax+28H]
        mov     qword [rbp-40H], rcx
        mov     qword [rbp-38H], rbx
        mov     rdx, qword [rax+38H]
        mov     rax, qword [rax+30H]
        mov     qword [rbp-30H], rax
        mov     qword [rbp-28H], rdx
        mov     eax, dword [rbp-64H]
        sub     eax, 1
        mov     dword [rbp-68H], eax
        jmp     L_024

L_023:  mov     eax, dword [rbp-68H]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-78H]
        add     rdx, rax
        mov     eax, dword [rbp-68H]
        cdqe
        add     rax, 1
        shl     rax, 6
        mov     rcx, rax
        mov     rax, qword [rbp-78H]
        add     rax, rcx
        mov     rcx, qword [rdx]
        mov     rbx, qword [rdx+8H]
        mov     qword [rax], rcx
        mov     qword [rax+8H], rbx
        mov     rcx, qword [rdx+10H]
        mov     rbx, qword [rdx+18H]
        mov     qword [rax+10H], rcx
        mov     qword [rax+18H], rbx
        mov     rcx, qword [rdx+20H]
        mov     rbx, qword [rdx+28H]
        mov     qword [rax+20H], rcx
        mov     qword [rax+28H], rbx
        mov     rcx, qword [rdx+30H]
        mov     rbx, qword [rdx+38H]
        mov     qword [rax+30H], rcx
        mov     qword [rax+38H], rbx
        sub     dword [rbp-68H], 1
L_024:  cmp     dword [rbp-68H], 0
        js      L_025
        mov     eax, dword [rbp-68H]
        cdqe
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-78H]
        add     rax, rdx
        sub     rsp, 64
        mov     rdx, rsp
        mov     rcx, qword [rax]
        mov     rbx, qword [rax+8H]
        mov     qword [rdx], rcx
        mov     qword [rdx+8H], rbx
        mov     rcx, qword [rax+10H]
        mov     rbx, qword [rax+18H]
        mov     qword [rdx+10H], rcx
        mov     qword [rdx+18H], rbx
        mov     rcx, qword [rax+20H]
        mov     rbx, qword [rax+28H]
        mov     qword [rdx+20H], rcx
        mov     qword [rdx+28H], rbx
        mov     rcx, qword [rax+30H]
        mov     rbx, qword [rax+38H]
        mov     qword [rdx+30H], rcx
        mov     qword [rdx+38H], rbx
        call    function_for_sorting
        add     rsp, 64
        movss   dword [rbp-80H], xmm0
        push    qword [rbp-28H]
        push    qword [rbp-30H]
        push    qword [rbp-38H]
        push    qword [rbp-40H]
        push    qword [rbp-48H]
        push    qword [rbp-50H]
        push    qword [rbp-58H]
        push    qword [rbp-60H]
        call    function_for_sorting
        add     rsp, 64
        comiss  xmm0, dword [rbp-80H]
        ja      L_023
L_025:  mov     eax, dword [rbp-68H]
        cdqe
        add     rax, 1
        shl     rax, 6
        mov     rdx, rax
        mov     rax, qword [rbp-78H]
        add     rax, rdx
        mov     rcx, qword [rbp-60H]
        mov     rbx, qword [rbp-58H]
        mov     qword [rax], rcx
        mov     qword [rax+8H], rbx
        mov     rcx, qword [rbp-50H]
        mov     rbx, qword [rbp-48H]
        mov     qword [rax+10H], rcx
        mov     qword [rax+18H], rbx
        mov     rcx, qword [rbp-40H]
        mov     rbx, qword [rbp-38H]
        mov     qword [rax+20H], rcx
        mov     qword [rax+28H], rbx
        mov     rcx, qword [rbp-30H]
        mov     rbx, qword [rbp-28H]
        mov     qword [rax+30H], rcx
        mov     qword [rax+38H], rbx
        add     dword [rbp-64H], 1
L_026:  mov     eax, dword [rbp-64H]
        cmp     eax, dword [rbp-7CH]
        jl      L_022
        mov     eax, 0
        mov     rbx, qword [rbp-18H]


        xor     rbx, qword [fs:abs 28H]
        jz      L_027
        call    __stack_chk_fail
L_027:  mov     rbx, qword [rbp-8H]
        leave
        ret

; Calculating the value for sorting
function_for_sorting:
               
        push    rbp
        mov     rbp, rsp
        mov     dword [rbp-8H], 0
        mov     dword [rbp-4H], 0
        jmp     L_029

L_028:  mov     eax, dword [rbp-4H]
        cdqe
        movzx   eax, byte [rbp+rax+10H]
        test    al, al
        jz      L_030
        mov     eax, dword [rbp-4H]
        cdqe
        movzx   eax, byte [rbp+rax+10H]
        movsx   eax, al
        add     dword [rbp-8H], eax
        add     dword [rbp-4H], 1
L_029:  cmp     dword [rbp-4H], 49
        jle     L_028
        jmp     L_031

L_030:  nop
L_031:  cvtsi2ss xmm0, dword [rbp-8H]
        mov     eax, dword [rbp+44H]
        cvtsi2ss xmm1, eax
        divss   xmm0, xmm1
        pop     rbp
        ret



SECTION .data   

; Error and other messages
message_error_open_input_file:  db "Could not open file to read animals;", 0xA, 0xD
message_error_type_animal_line: db "Wrong type in line"
                                db 20H, 25H, 64H, 0AH, 00H, 00H
message_error_fish_attribute:   db "Wrong location for fish in line"
                                db 20H, 25H, 64H, 0AH, 00H, 00H, 00H, 00H, 00H
message_error_bird_attribute:   db "Wrong migration for bird in line"
                                db 20H, 25H, 64H, 0AH, 00H, 00H, 00H, 00H
message_error_beast_attribute:  db "Wrong type of beast in line"
                                db 20H, 25H, 64H, 0AH, 00H
message_error_parse_line:       db "", 0
message_error_open_output_file: db "Could not open file for writting", 0


SECTION .bss    


SECTION .rodata 

L_032:
        db 72H, 00H, 00H, 00H, 00H, 00H, 00H, 00H

L_034:
        db 25H, 64H, 20H, 25H, 73H, 20H, 25H, 64H
        db 20H, 25H, 64H, 00H

L_040:
        db 77H, 00H, 00H



SECTION .note.gnu.property 

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H



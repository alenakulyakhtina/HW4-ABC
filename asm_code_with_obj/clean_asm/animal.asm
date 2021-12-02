default rel

global ani_random_animal
global print_animal
global n_special_for_type

extern fprintf
extern sprintf
extern __stack_chk_fail
extern rand
extern _GLOBAL_OFFSET_TABLE_

; Describing a generalized animal.

SECTION .text   

; Random animal generation
ani_random_animal:
               
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 152
        mov     qword [rbp-98H], rdi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-18H], rax
        xor     eax, eax
        mov     rax, qword 6867666564636261H
        mov     rdx, qword 706F6E6D6C6B6A69H
        mov     qword [rbp-40H], rax
        mov     qword [rbp-38H], rdx
        mov     rax, qword 7877767574737271H
        mov     qword [rbp-30H], rax

        mov     word [rbp-28H], 31353
        mov     byte [rbp-26H], 0
        call    rand
        movsxd  rdx, eax
        imul    rdx, rdx, 1402438301
        shr     rdx, 32
        mov     ecx, edx
        sar     ecx, 4
        cdq
        sub     ecx, edx
        mov     edx, ecx
        imul    edx, edx, 49
        sub     eax, edx
        mov     edx, eax
        lea     eax, [rdx+1H]
        mov     dword [rbp-88H], eax
        mov     dword [rbp-8CH], 0
        jmp     L_002

L_001:  call    rand
        movsxd  rdx, eax
        imul    rdx, rdx, 1321528399
        shr     rdx, 32
        mov     ecx, edx
        sar     ecx, 3
        cdq
        sub     ecx, edx
        mov     edx, ecx
        mov     dword [rbp-84H], edx
        mov     edx, dword [rbp-84H]
        imul    edx, edx, 26
        sub     eax, edx
        mov     dword [rbp-84H], eax
        mov     eax, dword [rbp-84H]
        cdqe
        movzx   edx, byte [rbp+rax-40H]
        mov     eax, dword [rbp-8CH]
        cdqe
        mov     byte [rbp+rax-80H], dl
        add     dword [rbp-8CH], 1
L_002:  mov     eax, dword [rbp-8CH]
        cmp     eax, dword [rbp-88H]
        jl      L_001
        mov     eax, dword [rbp-8CH]
        cdqe
        mov     byte [rbp+rax-80H], 0
        call    rand
        movsxd  rdx, eax
        imul    rdx, rdx, 351843721
        shr     rdx, 32
        mov     ecx, edx
        sar     ecx, 13
        cdq
        sub     ecx, edx
        mov     edx, ecx
        imul    edx, edx, 100000
        sub     eax, edx
        mov     edx, eax
        lea     eax, [rdx+1H]
        mov     dword [rbp-4CH], eax
        call    rand
        mov     ecx, eax
        movsxd  rax, ecx
        imul    rax, rax, 1431655766
        shr     rax, 32
        mov     rdx, rax
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        sub     ecx, eax
        mov     edx, ecx
        mov     eax, edx
        mov     dword [rbp-48H], eax
        call    rand
        mov     edx, dword [rbp-48H]
        movsxd  rdx, edx
        lea     rcx, [rdx*4]
        lea     rdx, [rel n_special_for_type]
        mov     ecx, dword [rcx+rdx]
        cdq
        idiv    ecx
        mov     eax, edx
        mov     dword [rbp-44H], eax
        mov     rax, qword [rbp-98H]
        mov     rcx, qword [rbp-80H]
        mov     rbx, qword [rbp-78H]
        mov     qword [rax], rcx
        mov     qword [rax+8H], rbx
        mov     rcx, qword [rbp-70H]
        mov     rbx, qword [rbp-68H]
        mov     qword [rax+10H], rcx
        mov     qword [rax+18H], rbx
        mov     rcx, qword [rbp-60H]
        mov     rbx, qword [rbp-58H]
        mov     qword [rax+20H], rcx
        mov     qword [rax+28H], rbx
        mov     rcx, qword [rbp-50H]
        mov     rbx, qword [rbp-48H]
        mov     qword [rax+30H], rcx
        mov     qword [rax+38H], rbx
        mov     rax, qword [rbp-18H]


        xor     rax, qword [fs:abs 28H]
        jz      L_003
        call    __stack_chk_fail
L_003:  mov     rax, qword [rbp-98H]
        add     rsp, 152
        pop     rbx
        pop     rbp
        ret

; Processing an animal and writting to file.
print_animal:
               
        push    rbp
        mov     rbp, rsp
        sub     rsp, 192
        mov     qword [rbp-0B8H], rdi


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        mov     eax, dword [rbp+48H]
        test    eax, eax
        jne     L_007
        lea     rax, [rbp-0B0H]
        lea     rsi, [rel type_fish]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        mov     eax, dword [rbp+4CH]
        test    eax, eax
        jnz     L_004
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_fish_river]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_004:  mov     eax, dword [rbp+4CH]
        cmp     eax, 1
        jnz     L_005
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_fish_sea]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_005:  mov     eax, dword [rbp+4CH]
        cmp     eax, 2
        jnz     L_006
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_fish_lake]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_006:  mov     eax, 2
        jmp     L_015

L_007:  mov     eax, dword [rbp+48H]
        cmp     eax, 1
        jnz     L_009
        lea     rax, [rbp-0B0H]
        lea     rsi, [rel type_bird]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        mov     eax, dword [rbp+4CH]
        test    eax, eax
        jnz     L_008
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_bird_stays]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_008:  mov     eax, dword [rbp+4CH]
        cmp     eax, 1
        jne     L_014
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_bird_migr]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_009:  mov     eax, dword [rbp+48H]
        cmp     eax, 2
        jne     L_013
        lea     rax, [rbp-0B0H]
        lea     rsi, [rel type_beast]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        mov     eax, dword [rbp+4CH]
        test    eax, eax
        jnz     L_010
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_beast_predator]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_010:  mov     eax, dword [rbp+4CH]
        cmp     eax, 1
        jnz     L_011
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_beast_herbivore]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_011:  mov     eax, dword [rbp+4CH]
        cmp     eax, 2
        jnz     L_012
        lea     rax, [rbp-60H]
        lea     rsi, [rel type_beast_insectivores]
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        jmp     L_014

L_012:  mov     eax, 2
        jmp     L_015

L_013:  mov     eax, 1
        jmp     L_015

L_014:  mov     edx, dword [rbp+44H]
        lea     rsi, [rbp-60H]
        lea     rcx, [rbp-0B0H]
        mov     rax, qword [rbp-0B8H]
        mov     r9, rsi
        mov     r8, rcx
        mov     ecx, edx
        lea     rdx, [rbp+10H]
        lea     rsi, [rel L_028] ; writting to file
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     eax, 0
L_015:  mov     rdx, qword [rbp-8H]


        xor     rdx, qword [fs:abs 28H]
        jz      L_016
        call    __stack_chk_fail
L_016:  leave
        ret



SECTION .data   

n_special_for_type:
        db 03H, 00H, 00H, 00H, 02H, 00H, 00H, 00H
        db 03H, 00H, 00H, 00H

type_fish:                  db "Fish"
                            db 00H
type_fish_river             db "RIVER"
                            db 00H
type_fish_sea               db "SEA"
                            db 00H
type_fish_lake              db "LAKE"
                            db 00H

type_bird:                  db "Bird"
                            db 00H
type_bird_stays             db "this bird stays for the winter"
                            db 00H    
type_bird_migr              db "it is a migratory bird"
                            db 00H 

type_beast:                 db "Beast"
                            db 00H 
type_beast_predator:        db "PREDATOR"
                            db 00H 
type_beast_herbivore:       db "HERBIVORE"
                            db 00H 
type_beast_insectivores:    db "INSECTIVORES"
                            db 00H 

SECTION .bss    


SECTION .rodata 

L_024:
        db 42H, 65H, 61H, 73H, 74H, 00H ;Beast

; Writting form:
L_028:
        db 6EH, 61H, 6DH, 65H, 20H, 25H, 73H, 2CH ;name, weigth, type, attribute
        db 20H, 77H, 65H, 69H, 67H, 68H, 74H, 20H
        db 25H, 64H, 2CH, 20H, 74H, 79H, 70H, 65H
        db 20H, 25H, 73H, 2CH, 20H, 25H, 73H, 0AH
        db 00H


SECTION .note.gnu.property 

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H



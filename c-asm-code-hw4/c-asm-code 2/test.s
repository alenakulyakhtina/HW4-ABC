	.file	"container.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu container.c -mtune=generic
# -march=x86-64 -auxbase-strip test.s -g -O2 -fverbose-asm
# -fasynchronous-unwind-tables -fstack-protector-strong -Wformat
# -Wformat-security -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
# -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-reference-addressable
# -fipa-sra -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-clash-protection
# -fstack-protector-strong -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.p2align 4
	.globl	con_generate_random
	.type	con_generate_random, @function
con_generate_random:
.LVL0:
.LFB0:
	.file 1 "container.c"
	.loc 1 3 71 view -0
	.cfi_startproc
	.loc 1 3 71 is_stmt 0 view .LVU1
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp	#,
	.cfi_def_cfa_offset 112
# container.c:3: int con_generate_random(animal_st *animals_list, uint32_t list_length){
	.loc 1 3 71 view .LVU2
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, 72(%rsp)	# tmp107, D.2042
	xorl	%eax, %eax	# tmp107
	.loc 1 5 5 is_stmt 1 view .LVU3
.LBB2:
	.loc 1 5 9 view .LVU4
.LVL1:
	.loc 1 5 20 view .LVU5
# container.c:5:     for(int i_l=0; i_l<list_length; i_l++)
	.loc 1 5 5 is_stmt 0 view .LVU6
	testl	%esi, %esi	# list_length
	je	.L2	#,
	leal	-1(%rsi), %eax	#, tmp94
	movq	%rdi, %rbx	# animals_list, ivtmp.8
	movq	%rsp, %rbp	#, tmp104
	salq	$6, %rax	#, tmp95
	leaq	64(%rdi,%rax), %r12	#, _18
.LVL2:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 7 9 is_stmt 1 discriminator 3 view .LVU7
# container.c:7:         animals_list[i_l] = ani_random_animal(); 
	.loc 1 7 29 is_stmt 0 discriminator 3 view .LVU8
	movq	%rbp, %rdi	# tmp104,
	xorl	%eax, %eax	#
	addq	$64, %rbx	#, ivtmp.8
	call	ani_random_animal@PLT	#
.LVL3:
	movdqu	(%rsp), %xmm0	#, tmp109
	movups	%xmm0, -64(%rbx)	# tmp109, *_3
	movdqu	16(%rsp), %xmm1	#, tmp110
	movups	%xmm1, -48(%rbx)	# tmp110, *_3
	movdqu	32(%rsp), %xmm2	#, tmp111
	movups	%xmm2, -32(%rbx)	# tmp111, *_3
	movdqu	48(%rsp), %xmm3	#, tmp112
	movups	%xmm3, -16(%rbx)	# tmp112, *_3
	.loc 1 5 37 is_stmt 1 discriminator 3 view .LVU9
	.loc 1 5 20 discriminator 3 view .LVU10
# container.c:5:     for(int i_l=0; i_l<list_length; i_l++)
	.loc 1 5 5 is_stmt 0 discriminator 3 view .LVU11
	cmpq	%r12, %rbx	# _18, ivtmp.8
	jne	.L3	#,
.L2:
.LBE2:
	.loc 1 10 5 is_stmt 1 view .LVU12
# container.c:11: }
	.loc 1 11 1 is_stmt 0 view .LVU13
	movq	72(%rsp), %rax	# D.2042, tmp108
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	jne	.L11	#,
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
.LVL4:
	.cfi_endproc
.LFE0:
	.size	con_generate_random, .-con_generate_random
.Letext0:
	.file 2 "animal.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0xc
	.long	.LASF23
	.long	.LASF24
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
	.byte	0x4
	.long	0x52
	.byte	0x2
	.byte	0x4
	.byte	0xe
	.long	0x52
	.uleb128 0x3
	.long	.LASF0
	.byte	0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x3
	.long	0x2d
	.uleb128 0x6
	.long	.LASF12
	.byte	0x40
	.byte	0x2
	.byte	0xa
	.byte	0x10
	.long	0xa7
	.uleb128 0x7
	.long	.LASF3
	.byte	0x2
	.byte	0xb
	.byte	0x9
	.long	0xa7
	.byte	0
	.uleb128 0x7
	.long	.LASF4
	.byte	0x2
	.byte	0xc
	.byte	0xa
	.long	0xc5
	.byte	0x34
	.uleb128 0x7
	.long	.LASF5
	.byte	0x2
	.byte	0xd
	.byte	0x12
	.long	0x59
	.byte	0x38
	.uleb128 0x7
	.long	.LASF6
	.byte	0x2
	.byte	0xe
	.byte	0x8
	.long	0xcc
	.byte	0x3c
	.byte	0
	.uleb128 0x8
	.long	0xbe
	.long	0xb7
	.uleb128 0x9
	.long	0xb7
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x10
	.byte	0x3
	.long	0x65
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF13
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF16
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x52
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0x5
	.long	.LASF19
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0xfb
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0xcc
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0x3
	.byte	0x24
	.long	0x1b0
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.byte	0x3
	.byte	0x3b
	.long	0x10e
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1a2
	.uleb128 0xe
	.string	"i_l"
	.byte	0x1
	.byte	0x5
	.byte	0xd
	.long	0xcc
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xf
	.quad	.LVL3
	.long	0x1b6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.quad	.LVL4
	.long	0x1c2
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.long	0xd3
	.uleb128 0x13
	.long	.LASF26
	.long	.LASF26
	.byte	0x2
	.byte	0x13
	.byte	0xb
	.uleb128 0x14
	.long	.LASF27
	.long	.LASF27
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU7
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"name"
.LASF5:
	.string	"type"
.LASF1:
	.string	"BIRD"
.LASF6:
	.string	"animal_specific"
.LASF17:
	.string	"__uint32_t"
.LASF22:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF8:
	.string	"long unsigned int"
.LASF21:
	.string	"list_length"
.LASF26:
	.string	"ani_random_animal"
.LASF10:
	.string	"float"
.LASF24:
	.string	"/home/anton/Dropbox/alena_programist"
.LASF20:
	.string	"animals_list"
.LASF12:
	.string	"animal_st"
.LASF0:
	.string	"FISH"
.LASF13:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF19:
	.string	"uint32_t"
.LASF18:
	.string	"long int"
.LASF14:
	.string	"short unsigned int"
.LASF15:
	.string	"signed char"
.LASF27:
	.string	"__stack_chk_fail"
.LASF23:
	.string	"container.c"
.LASF2:
	.string	"BEAST"
.LASF4:
	.string	"weight"
.LASF11:
	.string	"animal_type_t"
.LASF16:
	.string	"short int"
.LASF7:
	.string	"unsigned int"
.LASF25:
	.string	"con_generate_random"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

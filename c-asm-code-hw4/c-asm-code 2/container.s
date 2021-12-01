	.file	"container.c"
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu container.c -mtune=generic
# -march=x86-64 -O -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fdefer-pop -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
# -fgnu-runtime -fgnu-unique -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -finline -finline-atomics
# -finline-functions-called-once -fipa-profile -fipa-pure-const
# -fipa-reference -fipa-reference-addressable -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
# -freorder-blocks -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-clash-protection
# -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields
# -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra -ftree-ter
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.globl	con_generate_random
	.type	con_generate_random, @function
con_generate_random:
.LFB0:
	.cfi_startproc
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
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, 72(%rsp)	# tmp106, D.2039
	xorl	%eax, %eax	# tmp106
# container.c:5:     for(int i_l=0; i_l<list_length; i_l++)
	testl	%esi, %esi	# list_length
	je	.L2	#,
	movq	%rdi, %rbx	# animals_list, ivtmp.7
	leal	-1(%rsi), %eax	#, tmp94
	salq	$6, %rax	#, tmp95
	leaq	64(%rdi,%rax), %r12	#, _21
# container.c:7:         animals_list[i_l] = ani_random_animal(); 
	movq	%rsp, %rbp	#, tmp97
.L3:
# container.c:7:         animals_list[i_l] = ani_random_animal(); 
	movq	%rbp, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	ani_random_animal@PLT	#
	movdqu	(%rsp), %xmm0	#, tmp108
	movups	%xmm0, (%rbx)	# tmp108, *_3
	movdqu	16(%rsp), %xmm1	#, tmp109
	movups	%xmm1, 16(%rbx)	# tmp109, *_3
	movdqu	32(%rsp), %xmm2	#, tmp110
	movups	%xmm2, 32(%rbx)	# tmp110, *_3
	movdqu	48(%rsp), %xmm3	#, tmp111
	movups	%xmm3, 48(%rbx)	# tmp111, *_3
	addq	$64, %rbx	#, ivtmp.7
# container.c:5:     for(int i_l=0; i_l<list_length; i_l++)
	cmpq	%r12, %rbx	# _21, ivtmp.7
	jne	.L3	#,
.L2:
# container.c:11: }
	movq	72(%rsp), %rax	# D.2039, tmp107
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	jne	.L7	#,
	movl	$0, %eax	#,
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE0:
	.size	con_generate_random, .-con_generate_random
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

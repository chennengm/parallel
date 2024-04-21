	.file	"sse\266\324\306\353.cpp"
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.globl	A
	.bss
	.align 32
A:
	.space 16777216
	.globl	A1
	.align 16
A1:
	.space 16777216
	.globl	A2
	.align 32
A2:
	.space 16777216
	.globl	head
	.align 8
head:
	.space 8
	.globl	tail
	.align 8
tail:
	.space 8
	.globl	freq
	.align 8
freq:
	.space 8
	.text
	.globl	_Z4initPA2048_f
	.def	_Z4initPA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4initPA2048_f
_Z4initPA2048_f:
.LFB6374:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, -4(%rbp)
.L5:
	cmpl	$2047, -4(%rbp)
	jg	.L6
	movl	$0, -8(%rbp)
.L4:
	cmpl	$2047, -8(%rbp)
	jg	.L3
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movl	-8(%rbp), %eax
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
	jmp	.L5
.L6:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z6initA1v
	.def	_Z6initA1v;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6initA1v
_Z6initA1v:
.LFB6375:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	$0, -4(%rbp)
.L11:
	cmpl	$2047, -4(%rbp)
	jg	.L12
	movl	$0, -8(%rbp)
.L10:
	cmpl	$2047, -8(%rbp)
	jg	.L9
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$11, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	A1(%rip), %rax
	movss	%xmm0, (%rdx,%rax)
	addl	$1, -8(%rbp)
	jmp	.L10
.L9:
	addl	$1, -4(%rbp)
	jmp	.L11
.L12:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z23SIMD_SSE_gausseliminatePA2048_f
	.def	_Z23SIMD_SSE_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z23SIMD_SSE_gausseliminatePA2048_f
_Z23SIMD_SSE_gausseliminatePA2048_f:
.LFB6376:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$320, %rsp
	.seh_stackalloc	320
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 208(%rbp)
	movl	$0, 188(%rbp)
.L37:
	cmpl	$2047, 188(%rbp)
	jg	.L38
	movl	$2047, %eax
	subl	188(%rbp), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, 160(%rbp)
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 156(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -112(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -108(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -104(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -100(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 88(%rbp)
	movq	88(%rbp), %rax
	movaps	(%rax), %xmm0
	movaps	%xmm0, 128(%rbp)
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 184(%rbp)
.L17:
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, 184(%rbp)
	jge	.L16
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	184(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	divss	%xmm1, %xmm0
	movl	184(%rbp), %eax
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, 184(%rbp)
	jmp	.L17
.L16:
	movl	156(%rbp), %eax
	movl	%eax, 180(%rbp)
.L21:
	cmpl	$2047, 180(%rbp)
	jg	.L18
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	180(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, 24(%rbp)
	movq	24(%rbp), %rax
	movaps	(%rax), %xmm0
	movaps	%xmm0, 112(%rbp)
	movaps	112(%rbp), %xmm0
	movaps	%xmm0, 48(%rbp)
	movaps	128(%rbp), %xmm0
	movaps	%xmm0, 32(%rbp)
	movaps	48(%rbp), %xmm0
	divps	32(%rbp), %xmm0
	movaps	%xmm0, 112(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	180(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, 80(%rbp)
	movaps	112(%rbp), %xmm0
	movaps	%xmm0, 64(%rbp)
	movss	64(%rbp), %xmm0
	movq	80(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	addl	$4, 180(%rbp)
	jmp	.L21
.L18:
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, (%rdx,%rax,4)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 112(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 128(%rbp)
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 176(%rbp)
.L27:
	cmpl	$2047, 176(%rbp)
	jg	.L24
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 172(%rbp)
.L26:
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, 172(%rbp)
	jge	.L25
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	172(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm2
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	172(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	subss	%xmm1, %xmm0
	movl	172(%rbp), %eax
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, 172(%rbp)
	jmp	.L26
.L25:
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, 176(%rbp)
	jmp	.L27
.L24:
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 168(%rbp)
.L36:
	cmpl	$2047, 168(%rbp)
	jg	.L28
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -128(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -124(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -120(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movss	%xmm0, -116(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, 16(%rbp)
	movq	16(%rbp), %rax
	movaps	(%rax), %xmm0
	movaps	%xmm0, 96(%rbp)
	movl	156(%rbp), %eax
	movl	%eax, 164(%rbp)
.L35:
	cmpl	$2047, 164(%rbp)
	jg	.L30
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	164(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movaps	(%rax), %xmm0
	movaps	%xmm0, 112(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	164(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movaps	(%rax), %xmm0
	movaps	%xmm0, 128(%rbp)
	movaps	112(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	96(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-64(%rbp), %xmm0
	mulps	-80(%rbp), %xmm0
	movaps	%xmm0, 112(%rbp)
	movaps	128(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	112(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	-32(%rbp), %xmm0
	subps	-48(%rbp), %xmm0
	movaps	%xmm0, 128(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	164(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, 8(%rbp)
	movaps	128(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	8(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	addl	$4, 164(%rbp)
	jmp	.L35
.L30:
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, 168(%rbp)
	jmp	.L36
.L28:
	addl	$1, 188(%rbp)
	jmp	.L37
.L38:
	nop
	addq	$320, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "SSE\345\257\271\351\275\220\0"
.LC4:
	.ascii "ms\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6377:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	freq(%rip), %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rax
	call	*%rax
	leaq	A(%rip), %rcx
	call	_Z4initPA2048_f
	call	_Z6initA1v
	leaq	head(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A1(%rip), %rcx
	call	_Z23SIMD_SSE_gausseliminatePA2048_f
	leaq	tail(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	tail(%rip), %rdx
	movq	head(%rip), %rcx
	subq	%rcx, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	freq(%rip), %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB6717:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB6716:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L44
	cmpl	$65535, 24(%rbp)
	jne	.L44
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L44:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_A;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_A
_GLOBAL__sub_I_A:
.LFB6718:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_A
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1065353216
	.align 8
.LC3:
	.long	0
	.long	1083129856
	.ident	"GCC: (tdm64-1) 10.3.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

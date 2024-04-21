	.file	"avx\266\324\306\353.cpp"
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
	vcvtsi2ssl	%ecx, %xmm0, %xmm0
	movl	-8(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
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
	.globl	_Z23SIMD_AVX_gausseliminatePA2048_f
	.def	_Z23SIMD_AVX_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z23SIMD_AVX_gausseliminatePA2048_f
_Z23SIMD_AVX_gausseliminatePA2048_f:
.LFB6375:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$528, %rsp
	.seh_stackalloc	528
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 416(%rbp)
	leaq	400(%rbp), %rax
	subq	$528, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movl	$0, 396(%rbp)
.L31:
	cmpl	$2047, 396(%rbp)
	jg	.L32
	movl	$2047, %edx
	subl	396(%rbp), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%ecx, %edx
	andl	$7, %edx
	subl	%ecx, %edx
	movl	%edx, 368(%rbp)
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, 364(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 384(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 388(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 392(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 396(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 400(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 404(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 408(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 412(%rax)
	leaq	384(%rax), %rdx
	movq	%rdx, 352(%rbp)
	movq	352(%rbp), %rdx
	vmovaps	(%rdx), %ymm0
	vmovaps	%ymm0, 320(%rax)
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 392(%rbp)
.L11:
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, 392(%rbp)
	jge	.L10
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	392(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm1
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	vdivss	%xmm1, %xmm0, %xmm0
	movl	392(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	%xmm0, (%rcx,%rdx,4)
	addl	$1, 392(%rbp)
	jmp	.L11
.L10:
	movl	364(%rbp), %edx
	movl	%edx, 388(%rbp)
.L15:
	cmpl	$2047, 388(%rbp)
	jg	.L12
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	388(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 336(%rbp)
	movq	336(%rbp), %rdx
	vmovaps	(%rdx), %ymm0
	vmovaps	%ymm0, 288(%rax)
	vmovaps	288(%rax), %ymm0
	vmovaps	%ymm0, 192(%rax)
	vmovaps	320(%rax), %ymm0
	vmovaps	%ymm0, 160(%rax)
	vmovaps	192(%rax), %ymm0
	vdivps	160(%rax), %ymm0, %ymm0
	vmovaps	%ymm0, 288(%rax)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	388(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 344(%rbp)
	vmovaps	288(%rax), %ymm0
	vmovaps	%ymm0, 224(%rax)
	movq	344(%rbp), %rdx
	vmovaps	224(%rax), %ymm0
	vmovaps	%ymm0, (%rdx)
	nop
	addl	$8, 388(%rbp)
	jmp	.L15
.L12:
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 288(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 320(%rax)
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 384(%rbp)
.L21:
	cmpl	$2047, 384(%rbp)
	jg	.L18
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 380(%rbp)
.L20:
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, 380(%rbp)
	jge	.L19
	movl	384(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	380(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	movl	384(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm2
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	380(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm1
	vmulss	%xmm1, %xmm2, %xmm1
	movl	384(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	vsubss	%xmm1, %xmm0, %xmm0
	movl	380(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	%xmm0, (%rcx,%rdx,4)
	addl	$1, 380(%rbp)
	jmp	.L20
.L19:
	movl	384(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	addl	$1, 384(%rbp)
	jmp	.L21
.L18:
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 376(%rbp)
.L30:
	cmpl	$2047, 376(%rbp)
	jg	.L22
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 352(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 356(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 360(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 364(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 368(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 372(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 376(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, 380(%rax)
	leaq	352(%rax), %rdx
	movq	%rdx, 328(%rbp)
	movq	328(%rbp), %rdx
	vmovaps	(%rdx), %ymm0
	vmovaps	%ymm0, 256(%rax)
	movl	364(%rbp), %edx
	movl	%edx, 372(%rbp)
.L29:
	cmpl	$2047, 372(%rbp)
	jg	.L24
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	372(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 304(%rbp)
	movq	304(%rbp), %rdx
	vmovaps	(%rdx), %ymm0
	vmovaps	%ymm0, 288(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	372(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 312(%rbp)
	movq	312(%rbp), %rdx
	vmovaps	(%rdx), %ymm0
	vmovaps	%ymm0, 320(%rax)
	vmovaps	288(%rax), %ymm0
	vmovaps	%ymm0, 32(%rax)
	vmovaps	256(%rax), %ymm0
	vmovaps	%ymm0, (%rax)
	vmovaps	32(%rax), %ymm0
	vmulps	(%rax), %ymm0, %ymm0
	vmovaps	%ymm0, 288(%rax)
	vmovaps	320(%rax), %ymm0
	vmovaps	%ymm0, 96(%rax)
	vmovaps	288(%rax), %ymm0
	vmovaps	%ymm0, 64(%rax)
	vmovaps	96(%rax), %ymm0
	vsubps	64(%rax), %ymm0, %ymm0
	vmovaps	%ymm0, 320(%rax)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	372(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 320(%rbp)
	vmovaps	320(%rax), %ymm0
	vmovaps	%ymm0, 128(%rax)
	movq	320(%rbp), %rdx
	vmovaps	128(%rax), %ymm0
	vmovaps	%ymm0, (%rdx)
	nop
	addl	$8, 372(%rbp)
	jmp	.L29
.L24:
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	addl	$1, 376(%rbp)
	jmp	.L30
.L22:
	addl	$1, 396(%rbp)
	jmp	.L31
.L32:
	nop
	addq	$528, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "AVX\345\257\271\351\275\220: \0"
.LC3:
	.ascii "ms\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6376:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rax
	call	*%rax
	leaq	A(%rip), %rcx
	call	_Z4initPA2048_f
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A(%rip), %rcx
	call	_Z23SIMD_AVX_gausseliminatePA2048_f
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vmovsd	.LC2(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	-24(%rbp), %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB6716:
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
.LFB6715:
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
	jne	.L38
	cmpl	$65535, 24(%rbp)
	jne	.L38
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L38:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_A;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_A
_GLOBAL__sub_I_A:
.LFB6717:
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
	.align 8
.LC2:
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

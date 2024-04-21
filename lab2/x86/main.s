	.file	"main.cpp"
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
.LFB6438:
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
	.globl	_Z6initA1v
	.def	_Z6initA1v;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6initA1v
_Z6initA1v:
.LFB6439:
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
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$11, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	A1(%rip), %rax
	vmovss	%xmm0, (%rdx,%rax)
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
	.globl	_Z6initA2v
	.def	_Z6initA2v;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6initA2v
_Z6initA2v:
.LFB6440:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	$0, -4(%rbp)
.L17:
	cmpl	$2047, -4(%rbp)
	jg	.L18
	movl	$0, -8(%rbp)
.L16:
	cmpl	$2047, -8(%rbp)
	jg	.L15
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$11, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	A2(%rip), %rax
	vmovss	%xmm0, (%rdx,%rax)
	addl	$1, -8(%rbp)
	jmp	.L16
.L15:
	addl	$1, -4(%rbp)
	jmp	.L17
.L18:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z21normal_gausseliminatePA2048_f
	.def	_Z21normal_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21normal_gausseliminatePA2048_f
_Z21normal_gausseliminatePA2048_f:
.LFB6441:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$0, -4(%rbp)
.L27:
	cmpl	$2047, -4(%rbp)
	jg	.L28
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L22:
	cmpl	$2047, -8(%rbp)
	jg	.L21
	movl	-4(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	movl	-4(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm1
	movl	-4(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	vdivss	%xmm1, %xmm0, %xmm0
	movl	-8(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
	jmp	.L22
.L21:
	movl	-4(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	vmovss	.LC0(%rip), %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L26:
	cmpl	$2047, -12(%rbp)
	jg	.L23
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.L25:
	cmpl	$2047, -16(%rbp)
	jg	.L24
	movl	-12(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	movl	-12(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm2
	movl	-4(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm1
	vmulss	%xmm1, %xmm2, %xmm1
	movl	-12(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	vsubss	%xmm1, %xmm0, %xmm0
	movl	-16(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, -16(%rbp)
	jmp	.L25
.L24:
	movl	-12(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, -12(%rbp)
	jmp	.L26
.L23:
	addl	$1, -4(%rbp)
	jmp	.L27
.L28:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z23SIMD_SSE_gausseliminatePA2048_f
	.def	_Z23SIMD_SSE_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z23SIMD_SSE_gausseliminatePA2048_f
_Z23SIMD_SSE_gausseliminatePA2048_f:
.LFB6442:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$320, %rsp
	.seh_stackalloc	320
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 208(%rbp)
	movl	$0, 188(%rbp)
.L53:
	cmpl	$2047, 188(%rbp)
	jg	.L54
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
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -112(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -108(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -104(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -100(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 88(%rbp)
	movq	88(%rbp), %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, 128(%rbp)
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 184(%rbp)
.L33:
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, 184(%rbp)
	jge	.L32
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	184(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm1
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	vdivss	%xmm1, %xmm0, %xmm0
	movl	184(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 184(%rbp)
	jmp	.L33
.L32:
	movl	156(%rbp), %eax
	movl	%eax, 180(%rbp)
.L37:
	cmpl	$2047, 180(%rbp)
	jg	.L34
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
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, 112(%rbp)
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, 48(%rbp)
	vmovaps	128(%rbp), %xmm0
	vmovaps	%xmm0, 32(%rbp)
	vmovaps	48(%rbp), %xmm0
	vdivps	32(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rbp)
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
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, 64(%rbp)
	vmovss	64(%rbp), %xmm0
	movq	80(%rbp), %rax
	vmovss	%xmm0, (%rax)
	nop
	addl	$4, 180(%rbp)
	jmp	.L37
.L34:
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	.LC0(%rip), %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rbp)
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 176(%rbp)
.L43:
	cmpl	$2047, 176(%rbp)
	jg	.L40
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 172(%rbp)
.L42:
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, 172(%rbp)
	jge	.L41
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	172(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm2
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	172(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm1
	vmulss	%xmm1, %xmm2, %xmm1
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	vsubss	%xmm1, %xmm0, %xmm0
	movl	172(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 172(%rbp)
	jmp	.L42
.L41:
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 176(%rbp)
	jmp	.L43
.L40:
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 168(%rbp)
.L52:
	cmpl	$2047, 168(%rbp)
	jg	.L44
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -128(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -124(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -120(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -116(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, 16(%rbp)
	movq	16(%rbp), %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, 96(%rbp)
	movl	156(%rbp), %eax
	movl	%eax, 164(%rbp)
.L51:
	cmpl	$2047, 164(%rbp)
	jg	.L46
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
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, 112(%rbp)
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
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, 128(%rbp)
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, -64(%rbp)
	vmovaps	96(%rbp), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	vmovaps	-64(%rbp), %xmm0
	vmulps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rbp)
	vmovaps	128(%rbp), %xmm0
	vmovaps	%xmm0, -32(%rbp)
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, -48(%rbp)
	vmovaps	-32(%rbp), %xmm0
	vsubps	-48(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rbp)
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
	vmovaps	128(%rbp), %xmm0
	vmovaps	%xmm0, -16(%rbp)
	vmovss	-16(%rbp), %xmm0
	movq	8(%rbp), %rax
	vmovss	%xmm0, (%rax)
	nop
	addl	$4, 164(%rbp)
	jmp	.L51
.L46:
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 168(%rbp)
	jmp	.L52
.L44:
	addl	$1, 188(%rbp)
	jmp	.L53
.L54:
	nop
	addq	$320, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z34SIMD_notaligned_SSE_gausseliminatePA2048_f
	.def	_Z34SIMD_notaligned_SSE_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z34SIMD_notaligned_SSE_gausseliminatePA2048_f
_Z34SIMD_notaligned_SSE_gausseliminatePA2048_f:
.LFB6443:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$320, %rsp
	.seh_stackalloc	320
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 208(%rbp)
	movl	$0, 188(%rbp)
.L79:
	cmpl	$2047, 188(%rbp)
	jg	.L80
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
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -112(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -108(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -104(%rbp)
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -100(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 88(%rbp)
	movq	88(%rbp), %rax
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, 128(%rbp)
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 184(%rbp)
.L59:
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, 184(%rbp)
	jge	.L58
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	184(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm1
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	vdivss	%xmm1, %xmm0, %xmm0
	movl	184(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 184(%rbp)
	jmp	.L59
.L58:
	movl	156(%rbp), %eax
	movl	%eax, 180(%rbp)
.L63:
	cmpl	$2047, 180(%rbp)
	jg	.L60
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
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, 112(%rbp)
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, 48(%rbp)
	vmovaps	128(%rbp), %xmm0
	vmovaps	%xmm0, 32(%rbp)
	vmovaps	48(%rbp), %xmm0
	vdivps	32(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rbp)
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
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, 64(%rbp)
	vmovss	64(%rbp), %xmm0
	movq	80(%rbp), %rax
	vmovss	%xmm0, (%rax)
	nop
	addl	$4, 180(%rbp)
	jmp	.L63
.L60:
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	.LC0(%rip), %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rbp)
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 176(%rbp)
.L69:
	cmpl	$2047, 176(%rbp)
	jg	.L66
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 172(%rbp)
.L68:
	movl	188(%rbp), %eax
	leal	1(%rax), %edx
	movl	160(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, 172(%rbp)
	jge	.L67
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	172(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm2
	movl	188(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	172(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm1
	vmulss	%xmm1, %xmm2, %xmm1
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	vsubss	%xmm1, %xmm0, %xmm0
	movl	172(%rbp), %eax
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 172(%rbp)
	jmp	.L68
.L67:
	movl	176(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 176(%rbp)
	jmp	.L69
.L66:
	movl	188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 168(%rbp)
.L78:
	cmpl	$2047, 168(%rbp)
	jg	.L70
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -128(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -124(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -120(%rbp)
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vmovss	(%rdx,%rax,4), %xmm0
	vmovss	%xmm0, -116(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, 16(%rbp)
	movq	16(%rbp), %rax
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, 96(%rbp)
	movl	156(%rbp), %eax
	movl	%eax, 164(%rbp)
.L77:
	cmpl	$2047, 164(%rbp)
	jg	.L72
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
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, 112(%rbp)
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
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, 128(%rbp)
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, -64(%rbp)
	vmovaps	96(%rbp), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	vmovaps	-64(%rbp), %xmm0
	vmulps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rbp)
	vmovaps	128(%rbp), %xmm0
	vmovaps	%xmm0, -32(%rbp)
	vmovaps	112(%rbp), %xmm0
	vmovaps	%xmm0, -48(%rbp)
	vmovaps	-32(%rbp), %xmm0
	vsubps	-48(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rbp)
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
	vmovaps	128(%rbp), %xmm0
	vmovaps	%xmm0, -16(%rbp)
	vmovss	-16(%rbp), %xmm0
	movq	8(%rbp), %rax
	vmovss	%xmm0, (%rax)
	nop
	addl	$4, 164(%rbp)
	jmp	.L77
.L72:
	movl	168(%rbp), %eax
	cltq
	salq	$13, %rax
	movq	%rax, %rdx
	movq	208(%rbp), %rax
	addq	%rax, %rdx
	movl	188(%rbp), %eax
	cltq
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	addl	$1, 168(%rbp)
	jmp	.L78
.L70:
	addl	$1, 188(%rbp)
	jmp	.L79
.L80:
	nop
	addq	$320, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z23SIMD_AVX_gausseliminatePA2048_f
	.def	_Z23SIMD_AVX_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z23SIMD_AVX_gausseliminatePA2048_f
_Z23SIMD_AVX_gausseliminatePA2048_f:
.LFB6444:
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
.L105:
	cmpl	$2047, 396(%rbp)
	jg	.L106
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
.L85:
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, 392(%rbp)
	jge	.L84
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
	jmp	.L85
.L84:
	movl	364(%rbp), %edx
	movl	%edx, 388(%rbp)
.L89:
	cmpl	$2047, 388(%rbp)
	jg	.L86
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
	jmp	.L89
.L86:
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
.L95:
	cmpl	$2047, 384(%rbp)
	jg	.L92
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 380(%rbp)
.L94:
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, 380(%rbp)
	jge	.L93
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
	jmp	.L94
.L93:
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
	jmp	.L95
.L92:
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 376(%rbp)
.L104:
	cmpl	$2047, 376(%rbp)
	jg	.L96
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
.L103:
	cmpl	$2047, 372(%rbp)
	jg	.L98
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
	jmp	.L103
.L98:
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
	jmp	.L104
.L96:
	addl	$1, 396(%rbp)
	jmp	.L105
.L106:
	nop
	addq	$528, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z34SIMD_AVX_notaligned_gausseliminatePA2048_f
	.def	_Z34SIMD_AVX_notaligned_gausseliminatePA2048_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z34SIMD_AVX_notaligned_gausseliminatePA2048_f
_Z34SIMD_AVX_notaligned_gausseliminatePA2048_f:
.LFB6445:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$528, %rsp
	.seh_stackalloc	528
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 416(%rbp)
	leaq	400(%rbp), %rax
	subq	$464, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movl	$0, 396(%rbp)
.L131:
	cmpl	$2047, 396(%rbp)
	jg	.L132
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
	vmovss	%xmm0, -128(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -124(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -120(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -116(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -112(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -108(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -104(%rbp)
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -100(%rbp)
	leaq	-128(%rbp), %rdx
	movq	%rdx, 352(%rbp)
	movq	352(%rbp), %rdx
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 320(%rax)
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 392(%rbp)
.L111:
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, 392(%rbp)
	jge	.L110
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
	jmp	.L111
.L110:
	movl	364(%rbp), %edx
	movl	%edx, 388(%rbp)
.L115:
	cmpl	$2047, 388(%rbp)
	jg	.L112
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
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
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
	vmovaps	224(%rax), %ymm0
	movq	344(%rbp), %rdx
	vmovups	%xmm0, (%rdx)
	vextractf128	$0x1, %ymm0, 16(%rdx)
	nop
	addl	$8, 388(%rbp)
	jmp	.L115
.L112:
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
.L121:
	cmpl	$2047, 384(%rbp)
	jg	.L118
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 380(%rbp)
.L120:
	movl	396(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	368(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, 380(%rbp)
	jge	.L119
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
	jmp	.L120
.L119:
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
	jmp	.L121
.L118:
	movl	396(%rbp), %edx
	addl	$1, %edx
	movl	%edx, 376(%rbp)
.L130:
	cmpl	$2047, 376(%rbp)
	jg	.L122
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -96(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -92(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -88(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -84(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -80(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -76(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -72(%rbp)
	movl	376(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$13, %rcx
	movq	416(%rbp), %rdx
	addq	%rdx, %rcx
	movl	396(%rbp), %edx
	movslq	%edx, %rdx
	vmovss	(%rcx,%rdx,4), %xmm0
	vmovss	%xmm0, -68(%rbp)
	leaq	-96(%rbp), %rdx
	movq	%rdx, 328(%rbp)
	movq	328(%rbp), %rdx
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 256(%rax)
	movl	364(%rbp), %edx
	movl	%edx, 372(%rbp)
.L129:
	cmpl	$2047, 372(%rbp)
	jg	.L124
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
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
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
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
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
	vmovaps	128(%rax), %ymm0
	movq	320(%rbp), %rdx
	vmovups	%xmm0, (%rdx)
	vextractf128	$0x1, %ymm0, 16(%rdx)
	nop
	addl	$8, 372(%rbp)
	jmp	.L129
.L124:
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
	jmp	.L130
.L122:
	addl	$1, 396(%rbp)
	jmp	.L131
.L132:
	nop
	addq	$528, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "\306\325\315\250\264\256\320\320\313\343\267\250\0"
.LC4:
	.ascii "ms\0"
.LC5:
	.ascii "SSE\266\324\306\353\0"
.LC6:
	.ascii "SSE\262\273\266\324\306\353\0"
.LC7:
	.ascii "AVX\266\324\306\353\0"
.LC8:
	.ascii "AVX\262\273\266\324\306\353\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6446:
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
	leaq	head(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A(%rip), %rcx
	call	_Z21normal_gausseliminatePA2048_f
	leaq	tail(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	tail(%rip), %rdx
	movq	head(%rip), %rcx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vmovsd	.LC3(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	freq(%rip), %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	call	_Z6initA1v
	leaq	head(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A1(%rip), %rcx
	call	_Z23SIMD_SSE_gausseliminatePA2048_f
	leaq	tail(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	tail(%rip), %rdx
	movq	head(%rip), %rcx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vmovsd	.LC3(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	freq(%rip), %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	A(%rip), %rcx
	call	_Z4initPA2048_f
	leaq	head(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A(%rip), %rcx
	call	_Z34SIMD_notaligned_SSE_gausseliminatePA2048_f
	leaq	tail(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	tail(%rip), %rdx
	movq	head(%rip), %rcx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vmovsd	.LC3(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	freq(%rip), %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	call	_Z6initA2v
	leaq	head(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A2(%rip), %rcx
	call	_Z23SIMD_AVX_gausseliminatePA2048_f
	leaq	tail(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	tail(%rip), %rdx
	movq	head(%rip), %rcx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vmovsd	.LC3(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	freq(%rip), %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	A(%rip), %rcx
	call	_Z4initPA2048_f
	leaq	head(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	A(%rip), %rcx
	call	_Z34SIMD_AVX_notaligned_gausseliminatePA2048_f
	leaq	tail(%rip), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	tail(%rip), %rdx
	movq	head(%rip), %rcx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vmovsd	.LC3(%rip), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	freq(%rip), %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
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
.LFB6949:
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
.LFB6948:
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
	jne	.L138
	cmpl	$65535, 24(%rbp)
	jne	.L138
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L138:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_A;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_A
_GLOBAL__sub_I_A:
.LFB6950:
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

	.file	"0-isupper.c"
	.text
	.globl	_isupper
	.def	_isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	_isupper
_isupper:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$64, 16(%rbp)
	jle	.L2
	cmpl	$90, 16(%rbp)
	jg	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 7.4.0"

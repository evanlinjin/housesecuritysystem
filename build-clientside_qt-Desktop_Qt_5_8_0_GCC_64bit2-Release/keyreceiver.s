	.file	"keyreceiver.cpp"
#APP
	.section .qtversion, "aG", @progbits, qt_version_tag, comdat
.align 8
.quad qt_version_tag@GOT
.long ((5<<16)|(8<<8)|(0))
.align 8
.previous
#NO_APP
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.p2align 4,,15
	.globl	_ZN11KeyReceiverC2EP7QObject
	.type	_ZN11KeyReceiverC2EP7QObject, @function
_ZN11KeyReceiverC2EP7QObject:
.LFB13110:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN7QObjectC2EPS_@PLT
	movq	_ZTV11KeyReceiver@GOTPCREL(%rip), %rax
	movl	$1, 16(%rbx)
	addq	$16, %rax
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13110:
	.size	_ZN11KeyReceiverC2EP7QObject, .-_ZN11KeyReceiverC2EP7QObject
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.globl	_ZN11KeyReceiverC1EP7QObject
	.set	_ZN11KeyReceiverC1EP7QObject,_ZN11KeyReceiverC2EP7QObject
	.section	.text.unlikely
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4,,15
	.globl	_ZN11KeyReceiver16updateStackDepthEi
	.type	_ZN11KeyReceiver16updateStackDepthEi, @function
_ZN11KeyReceiver16updateStackDepthEi:
.LFB13113:
	.cfi_startproc
	movl	%esi, 16(%rdi)
	ret
	.cfi_endproc
.LFE13113:
	.size	_ZN11KeyReceiver16updateStackDepthEi, .-_ZN11KeyReceiver16updateStackDepthEi
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4,,15
	.globl	_ZN11KeyReceiver11eventFilterEP7QObjectP6QEvent
	.type	_ZN11KeyReceiver11eventFilterEP7QObjectP6QEvent, @function
_ZN11KeyReceiver11eventFilterEP7QObjectP6QEvent:
.LFB13112:
	.cfi_startproc
	cmpw	$7, 16(%rdx)
	je	.L13
	jmp	_ZN7QObject11eventFilterEPS_P6QEvent@PLT
	.p2align 4,,10
	.p2align 3
.L13:
	movl	40(%rdx), %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmpl	$16777313, %eax
	sete	%cl
	cmpl	$16777216, %eax
	sete	%al
	movl	%ecx, %ebx
	orb	%al, %bl
	jne	.L6
.L5:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObject11eventFilterEPS_P6QEvent@PLT
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
	cmpl	$1, 16(%rdi)
	jle	.L5
	call	_ZN11KeyReceiver8popStackEv@PLT
	movl	%ebx, %eax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13112:
	.size	_ZN11KeyReceiver11eventFilterEP7QObjectP6QEvent, .-_ZN11KeyReceiver11eventFilterEP7QObjectP6QEvent
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

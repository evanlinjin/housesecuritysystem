	.file	"moc_newusermanager.cpp"
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
	.globl	_ZNK14NewUserManager10metaObjectEv
	.type	_ZNK14NewUserManager10metaObjectEv, @function
_ZNK14NewUserManager10metaObjectEv:
.LFB12681:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN14NewUserManager16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE12681:
	.size	_ZNK14NewUserManager10metaObjectEv, .-_ZNK14NewUserManager10metaObjectEv
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager18createUserCompleteE7QString
	.type	_ZN14NewUserManager18createUserCompleteE7QString, @function
_ZN14NewUserManager18createUserCompleteE7QString:
.LFB12684:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorl	%edx, %edx
	movq	%rsi, 8(%rsp)
	movq	_ZN14NewUserManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	movq	%rsp, %rcx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	call	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12684:
	.size	_ZN14NewUserManager18createUserCompleteE7QString, .-_ZN14NewUserManager18createUserCompleteE7QString
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
	.globl	_ZN14NewUserManager12loadingStartE7QString
	.type	_ZN14NewUserManager12loadingStartE7QString, @function
_ZN14NewUserManager12loadingStartE7QString:
.LFB12685:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$1, %edx
	movq	%rsi, 8(%rsp)
	movq	_ZN14NewUserManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	movq	%rsp, %rcx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	call	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L11
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12685:
	.size	_ZN14NewUserManager12loadingStartE7QString, .-_ZN14NewUserManager12loadingStartE7QString
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager11loadingStopEv
	.type	_ZN14NewUserManager11loadingStopEv, @function
_ZN14NewUserManager11loadingStopEv:
.LFB12686:
	.cfi_startproc
	movq	_ZN14NewUserManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$2, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12686:
	.size	_ZN14NewUserManager11loadingStopEv, .-_ZN14NewUserManager11loadingStopEv
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely._ZN14NewUserManagerD2Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
	.align 2
.LCOLDB4:
	.section	.text._ZN14NewUserManagerD2Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
.LHOTB4:
	.align 2
	.p2align 4,,15
	.weak	_ZN14NewUserManagerD2Ev
	.type	_ZN14NewUserManagerD2Ev, @function
_ZN14NewUserManagerD2Ev:
.LFB13736:
	.cfi_startproc
	movq	_ZTV14NewUserManager@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	jmp	_ZN7QObjectD2Ev@PLT
	.cfi_endproc
.LFE13736:
	.size	_ZN14NewUserManagerD2Ev, .-_ZN14NewUserManagerD2Ev
	.section	.text.unlikely._ZN14NewUserManagerD2Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
.LCOLDE4:
	.section	.text._ZN14NewUserManagerD2Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
.LHOTE4:
	.weak	_ZN14NewUserManagerD1Ev
	.set	_ZN14NewUserManagerD1Ev,_ZN14NewUserManagerD2Ev
	.section	.text.unlikely._ZN14NewUserManagerD0Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
	.align 2
.LCOLDB5:
	.section	.text._ZN14NewUserManagerD0Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
.LHOTB5:
	.align 2
	.p2align 4,,15
	.weak	_ZN14NewUserManagerD0Ev
	.type	_ZN14NewUserManagerD0Ev, @function
_ZN14NewUserManagerD0Ev:
.LFB13738:
	.cfi_startproc
	movq	_ZTV14NewUserManager@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	call	_ZN7QObjectD2Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE13738:
	.size	_ZN14NewUserManagerD0Ev, .-_ZN14NewUserManagerD0Ev
	.section	.text.unlikely._ZN14NewUserManagerD0Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
.LCOLDE5:
	.section	.text._ZN14NewUserManagerD0Ev,"axG",@progbits,_ZN14NewUserManagerD5Ev,comdat
.LHOTE5:
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
	.align 2
.LCOLDB6:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTB6:
	.align 2
	.p2align 4,,15
	.weak	_ZN7QStringD2Ev
	.type	_ZN7QStringD2Ev, @function
_ZN7QStringD2Ev:
.LFB9465:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L21
	cmpl	$-1, %edx
	je	.L16
	lock subl	$1, (%rax)
	je	.L21
.L16:
	rep ret
	.p2align 4,,10
	.p2align 3
.L21:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$2, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9465:
	.size	_ZN7QStringD2Ev, .-_ZN7QStringD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LCOLDE6:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTE6:
	.weak	_ZN7QStringD1Ev
	.set	_ZN7QStringD1Ev,_ZN7QStringD2Ev
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB12680:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12680
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rcx, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	jne	.L23
	cmpl	$5, %edx
	ja	.L22
	leaq	.L26(%rip), %rax
	movl	%edx, %edx
	movslq	(%rax,%rdx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L26:
	.long	.L25-.L26
	.long	.L27-.L26
	.long	.L28-.L26
	.long	.L29-.L26
	.long	.L30-.L26
	.long	.L31-.L26
	.text
	.p2align 4,,10
	.p2align 3
.L30:
	movq	8(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L51
	lock addl	$1, (%rdx)
.L51:
	leaq	16(%rsp), %rbp
	movq	%rbp, %rsi
.LEHB0:
	call	_ZN14NewUserManager18testUsernameUniqueE7QString@PLT
.LEHE0:
.L102:
	movq	16(%rsp), %rdi
	movl	%eax, %ebp
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L56
	cmpl	$-1, %edx
	je	.L53
	lock subl	$1, (%rdi)
	je	.L103
.L53:
	movq	(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L22
	movb	%bpl, (%rdx)
	.p2align 4,,10
	.p2align 3
.L22:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L104
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	cmpl	$10, %esi
	jne	.L22
	movq	8(%rbx), %rdx
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	cmpq	_ZN14NewUserManager18createUserCompleteE7QString@GOTPCREL(%rip), %rax
	je	.L105
	cmpq	_ZN14NewUserManager12loadingStartE7QString@GOTPCREL(%rip), %rax
	je	.L106
.L71:
	cmpq	_ZN14NewUserManager11loadingStopEv@GOTPCREL(%rip), %rax
	jne	.L22
	cmpq	$0, 8(%rdx)
	jne	.L22
	movl	$2, (%rcx)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L29:
	movq	8(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L44
	lock addl	$1, (%rdx)
.L44:
	leaq	16(%rsp), %rbp
	movq	%rbp, %rsi
.LEHB1:
	call	_ZN14NewUserManager17testUsernameEmailE7QString@PLT
.LEHE1:
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L28:
.LEHB2:
	call	_ZN14NewUserManager11loadingStopEv@PLT
.LEHE2:
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L27:
	movq	8(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L38
	lock addl	$1, (%rdx)
.L38:
	leaq	16(%rsp), %rbp
	movq	%rbp, %rsi
.LEHB3:
	call	_ZN14NewUserManager12loadingStartE7QString@PLT
.LEHE3:
.L61:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L69
	cmpl	$-1, %eax
	je	.L22
	lock subl	$1, (%rdi)
	jne	.L22
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L69:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L25:
	movq	8(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L32
	lock addl	$1, (%rdx)
.L32:
	leaq	16(%rsp), %rbp
	movq	%rbp, %rsi
.LEHB4:
	call	_ZN14NewUserManager18createUserCompleteE7QString@PLT
.LEHE4:
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L31:
	movq	16(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L58
	lock addl	$1, (%rdx)
.L58:
	movq	8(%rbx), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L59
	lock addl	$1, (%rdx)
.L59:
	leaq	16(%rsp), %rbp
	movq	%rsp, %rsi
	movq	%rsp, %rbx
	movq	%rbp, %rdx
.LEHB5:
	call	_ZN14NewUserManager10createUserE7QStringS0_@PLT
.LEHE5:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L64
	cmpl	$-1, %eax
	je	.L61
	lock subl	$1, (%rdi)
	jne	.L61
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L61
.L103:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L56:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L105:
	cmpq	$0, 8(%rdx)
	jne	.L71
	movl	$0, (%rcx)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L106:
	cmpq	$0, 8(%rdx)
	jne	.L71
	movl	$1, (%rcx)
	jmp	.L22
.L104:
	call	__stack_chk_fail@PLT
.L80:
.L88:
	movq	%rax, %rbx
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.L82:
	movq	%rbx, %rdi
	movq	%rax, %r12
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE6:
.L79:
	jmp	.L88
.L78:
	jmp	.L88
.L81:
	jmp	.L88
	.cfi_endproc
.LFE12680:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA12680:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12680-.LLSDACSB12680
.LLSDACSB12680:
	.uleb128 .LEHB0-.LFB12680
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L81-.LFB12680
	.uleb128 0
	.uleb128 .LEHB1-.LFB12680
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L80-.LFB12680
	.uleb128 0
	.uleb128 .LEHB2-.LFB12680
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB12680
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L79-.LFB12680
	.uleb128 0
	.uleb128 .LEHB4-.LFB12680
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L78-.LFB12680
	.uleb128 0
	.uleb128 .LEHB5-.LFB12680
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L82-.LFB12680
	.uleb128 0
	.uleb128 .LEHB6-.LFB12680
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE12680:
	.text
	.size	_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager11qt_metacastEPKc
	.type	_ZN14NewUserManager11qt_metacastEPKc, @function
_ZN14NewUserManager11qt_metacastEPKc:
.LFB12682:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L109
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	288+_ZL33qt_meta_stringdata_NewUserManager(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L114
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObject11qt_metacastEPKc@PLT
	.p2align 4,,10
	.p2align 3
.L109:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12682:
	.size	_ZN14NewUserManager11qt_metacastEPKc, .-_ZN14NewUserManager11qt_metacastEPKc
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN14NewUserManager11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN14NewUserManager11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB12683:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rcx, %rbp
	movl	%esi, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	_ZN7QObject11qt_metacallEN11QMetaObject4CallEiPPv@PLT
	testl	%eax, %eax
	js	.L116
	testl	%ebx, %ebx
	jne	.L117
	cmpl	$5, %eax
	jg	.L119
	movl	%eax, %edx
	movq	%rbp, %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
.L119:
	subl	$6, %eax
.L116:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_restore_state
	cmpl	$12, %ebx
	jne	.L116
	cmpl	$5, %eax
	jg	.L119
	movq	0(%rbp), %rdx
	movl	$-1, (%rdx)
	jmp	.L119
	.cfi_endproc
.LFE12683:
	.size	_ZN14NewUserManager11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN14NewUserManager11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.weak	_ZTS14NewUserManager
	.section	.rodata._ZTS14NewUserManager,"aG",@progbits,_ZTS14NewUserManager,comdat
	.align 16
	.type	_ZTS14NewUserManager, @object
	.size	_ZTS14NewUserManager, 17
_ZTS14NewUserManager:
	.string	"14NewUserManager"
	.weak	_ZTI14NewUserManager
	.section	.data.rel.ro._ZTI14NewUserManager,"awG",@progbits,_ZTI14NewUserManager,comdat
	.align 8
	.type	_ZTI14NewUserManager, @object
	.size	_ZTI14NewUserManager, 24
_ZTI14NewUserManager:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS14NewUserManager
	.quad	_ZTI7QObject
	.weak	_ZTV14NewUserManager
	.section	.data.rel.ro._ZTV14NewUserManager,"awG",@progbits,_ZTV14NewUserManager,comdat
	.align 8
	.type	_ZTV14NewUserManager, @object
	.size	_ZTV14NewUserManager, 112
_ZTV14NewUserManager:
	.quad	0
	.quad	_ZTI14NewUserManager
	.quad	_ZNK14NewUserManager10metaObjectEv
	.quad	_ZN14NewUserManager11qt_metacastEPKc
	.quad	_ZN14NewUserManager11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN14NewUserManagerD1Ev
	.quad	_ZN14NewUserManagerD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.globl	_ZN14NewUserManager16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN14NewUserManager16staticMetaObjectE, @object
	.size	_ZN14NewUserManager16staticMetaObjectE, 48
_ZN14NewUserManager16staticMetaObjectE:
	.quad	_ZN7QObject16staticMetaObjectE
	.quad	_ZL33qt_meta_stringdata_NewUserManager
	.quad	_ZL27qt_meta_data_NewUserManager
	.quad	_ZN14NewUserManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL27qt_meta_data_NewUserManager, @object
	.size	_ZL27qt_meta_data_NewUserManager, 252
_ZL27qt_meta_data_NewUserManager:
	.long	7
	.long	0
	.long	0
	.long	0
	.long	6
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	1
	.long	1
	.long	44
	.long	2
	.long	6
	.long	4
	.long	1
	.long	47
	.long	2
	.long	6
	.long	5
	.long	0
	.long	50
	.long	2
	.long	6
	.long	6
	.long	1
	.long	51
	.long	2
	.long	10
	.long	8
	.long	1
	.long	54
	.long	2
	.long	10
	.long	9
	.long	2
	.long	57
	.long	2
	.long	10
	.long	43
	.long	10
	.long	3
	.long	43
	.long	10
	.long	3
	.long	43
	.long	1
	.long	10
	.long	7
	.long	1
	.long	10
	.long	7
	.long	43
	.long	10
	.long	10
	.long	10
	.long	11
	.long	0
	.align 32
	.type	_ZL33qt_meta_stringdata_NewUserManager, @object
	.size	_ZL33qt_meta_stringdata_NewUserManager, 424
_ZL33qt_meta_stringdata_NewUserManager:
	.long	-1
	.long	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	288
	.long	-1
	.long	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	279
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	274
	.long	-1
	.long	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	251
	.long	-1
	.long	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	231
	.long	-1
	.long	11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	220
	.long	-1
	.long	17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	208
	.long	-1
	.long	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	202
	.long	-1
	.long	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	187
	.long	-1
	.long	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	182
	.long	-1
	.long	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	169
	.long	-1
	.long	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	151
	.string	"NewUserManager"
	.string	"createUserComplete"
	.string	""
	.string	"msg"
	.string	"loadingStart"
	.string	"loadingStop"
	.string	"testUsernameEmail"
	.string	"username"
	.string	"testUsernameUnique"
	.string	"createUser"
	.string	"email"
	.string	"password"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

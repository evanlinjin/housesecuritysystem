	.file	"moc_sessionmanager.cpp"
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
	.globl	_ZNK14SessionManager10metaObjectEv
	.type	_ZNK14SessionManager10metaObjectEv, @function
_ZNK14SessionManager10metaObjectEv:
.LFB12878:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN14SessionManager16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE12878:
	.size	_ZNK14SessionManager10metaObjectEv, .-_ZNK14SessionManager10metaObjectEv
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
	.globl	_ZN14SessionManager19sessionParamChangedEv
	.type	_ZN14SessionManager19sessionParamChangedEv, @function
_ZN14SessionManager19sessionParamChangedEv:
.LFB12881:
	.cfi_startproc
	movq	_ZN14SessionManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12881:
	.size	_ZN14SessionManager19sessionParamChangedEv, .-_ZN14SessionManager19sessionParamChangedEv
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
	.globl	_ZN14SessionManager8loggedInEv
	.type	_ZN14SessionManager8loggedInEv, @function
_ZN14SessionManager8loggedInEv:
.LFB12882:
	.cfi_startproc
	movq	_ZN14SessionManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12882:
	.size	_ZN14SessionManager8loggedInEv, .-_ZN14SessionManager8loggedInEv
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
	.globl	_ZN14SessionManager9loggedOutEv
	.type	_ZN14SessionManager9loggedOutEv, @function
_ZN14SessionManager9loggedOutEv:
.LFB12883:
	.cfi_startproc
	movq	_ZN14SessionManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$2, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12883:
	.size	_ZN14SessionManager9loggedOutEv, .-_ZN14SessionManager9loggedOutEv
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager12loadingStartE7QString
	.type	_ZN14SessionManager12loadingStartE7QString, @function
_ZN14SessionManager12loadingStartE7QString:
.LFB12884:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$3, %edx
	movq	%rsi, 8(%rsp)
	movq	_ZN14SessionManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	movq	%rsp, %rcx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	call	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L10
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12884:
	.size	_ZN14SessionManager12loadingStartE7QString, .-_ZN14SessionManager12loadingStartE7QString
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager11loadingStopEv
	.type	_ZN14SessionManager11loadingStopEv, @function
_ZN14SessionManager11loadingStopEv:
.LFB12885:
	.cfi_startproc
	movq	_ZN14SessionManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$4, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12885:
	.size	_ZN14SessionManager11loadingStopEv, .-_ZN14SessionManager11loadingStopEv
	.section	.text.unlikely
.LCOLDE5:
	.text
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
	je	.L17
	cmpl	$-1, %edx
	je	.L12
	lock subl	$1, (%rax)
	je	.L17
.L12:
	rep ret
	.p2align 4,,10
	.p2align 3
.L17:
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"uid"
.LC8:
	.string	"session/%1"
.LC9:
	.string	"email"
.LC10:
	.string	"sid"
.LC11:
	.string	"skey"
.LC12:
	.string	"loginTime"
.LC13:
	.string	"lastSeenTime"
	.section	.text.unlikely
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB12877:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12877
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	jne	.L19
	cmpl	$11, %edx
	ja	.L18
	leaq	.L22(%rip), %rax
	movl	%edx, %edx
	movslq	(%rax,%rdx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L22:
	.long	.L386-.L22
	.long	.L23-.L22
	.long	.L24-.L22
	.long	.L25-.L22
	.long	.L26-.L22
	.long	.L27-.L22
	.long	.L28-.L22
	.long	.L29-.L22
	.long	.L30-.L22
	.long	.L31-.L22
	.long	.L32-.L22
	.long	.L33-.L22
	.text
	.p2align 4,,10
	.p2align 3
.L67:
	leaq	.LC7(%rip), %rdi
	movl	$3, %esi
.LEHB0:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE0:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 32(%rsp)
.LEHB1:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE1:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 16(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB2:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE2:
	movq	16(%rbx), %rsi
	movq	%rsp, %rdi
	movq	%r12, %rdx
.LEHB3:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE3:
.L485:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L147
	cmpl	$-1, %eax
	je	.L144
	lock subl	$1, (%rdi)
	je	.L488
.L144:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L152
	cmpl	$-1, %eax
	je	.L149
	lock subl	$1, (%rdi)
	je	.L489
.L149:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L157
	cmpl	$-1, %eax
	je	.L154
	lock subl	$1, (%rdi)
	je	.L490
.L154:
	movq	0(%rbp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 0(%rbp)
	movq	%rax, (%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L165
	cmpl	$-1, %edx
	je	.L18
	lock subl	$1, (%rax)
	jne	.L18
	.p2align 4,,10
	.p2align 3
.L165:
	movq	(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	.p2align 4,,10
	.p2align 3
.L18:
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L491
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	cmpl	$10, %esi
	je	.L492
	cmpl	$1, %esi
	je	.L493
	cmpl	$2, %esi
	jne	.L18
	cmpl	$5, %edx
	movq	(%rcx), %rsi
	ja	.L18
	leaq	.L203(%rip), %rax
	movl	%edx, %edx
	leaq	48(%rsp), %r12
	movslq	(%rax,%rdx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L203:
	.long	.L202-.L203
	.long	.L204-.L203
	.long	.L205-.L203
	.long	.L206-.L203
	.long	.L207-.L203
	.long	.L208-.L203
	.text
	.p2align 4,,10
	.p2align 3
.L492:
	movq	8(%rbp), %rdx
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	cmpq	_ZN14SessionManager19sessionParamChangedEv@GOTPCREL(%rip), %rax
	je	.L494
	cmpq	_ZN14SessionManager8loggedInEv@GOTPCREL(%rip), %rax
	je	.L495
.L63:
	cmpq	_ZN14SessionManager9loggedOutEv@GOTPCREL(%rip), %rax
	je	.L496
.L64:
	cmpq	_ZN14SessionManager12loadingStartE7QString@GOTPCREL(%rip), %rax
	je	.L497
.L65:
	cmpq	_ZN14SessionManager11loadingStopEv@GOTPCREL(%rip), %rax
	jne	.L18
	cmpq	$0, 8(%rdx)
	jne	.L18
	movl	$4, (%rcx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L202:
	movq	%r12, %rdi
.LEHB4:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE4:
	leaq	.LC7(%rip), %rdi
	movl	$3, %esi
.LEHB5:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE5:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 16(%rsp)
.LEHB6:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE6:
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdx
	movq	%r13, %rdi
	movq	%rsp, %rbp
.LEHB7:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE7:
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB8:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE8:
	.p2align 4,,10
	.p2align 3
.L474:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L308
	cmpl	$-1, %eax
	je	.L305
	lock subl	$1, (%rdi)
	je	.L498
.L305:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L313
	cmpl	$-1, %eax
	je	.L310
	lock subl	$1, (%rdi)
	je	.L499
.L310:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L318
	cmpl	$-1, %eax
	je	.L315
	lock subl	$1, (%rdi)
	je	.L500
.L315:
	movq	%r12, %rdi
	call	_ZN8QVariantD1Ev@PLT
.L386:
	movq	%rbx, %rdi
.LEHB9:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L493:
	cmpl	$5, %edx
	movq	(%rcx), %rbp
	ja	.L18
	leaq	.L68(%rip), %rax
	movl	%edx, %edx
	movslq	(%rax,%rdx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L68:
	.long	.L67-.L68
	.long	.L69-.L68
	.long	.L70-.L68
	.long	.L71-.L68
	.long	.L72-.L68
	.long	.L73-.L68
	.text
	.p2align 4,,10
	.p2align 3
.L23:
	call	_ZN14SessionManager8loggedInEv@PLT
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L24:
	call	_ZN14SessionManager9loggedOutEv@PLT
.LEHE9:
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L25:
	movq	8(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 48(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L34
	lock addl	$1, (%rdx)
.L34:
	leaq	48(%rsp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
.LEHB10:
	call	_ZN14SessionManager12loadingStartE7QString@PLT
.LEHE10:
.L40:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L45
	cmpl	$-1, %eax
	je	.L18
	lock subl	$1, (%rdi)
	jne	.L18
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L45:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L26:
.LEHB11:
	call	_ZN14SessionManager11loadingStopEv@PLT
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L27:
	leaq	48(%rsp), %r12
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	_ZN14SessionManager13getClientInfoEv@PLT
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L40
	movq	%r12, %rsi
	call	_ZN7QStringaSERKS_@PLT
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L33:
	xorl	%esi, %esi
.L393:
	movq	%rbx, %rdi
	call	_ZN14SessionManager16genSessionsModelEP7QObject@PLT
.LEHE11:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L18
	movq	%rax, (%rdx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L32:
	movq	8(%rcx), %rax
	movq	(%rax), %rsi
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L28:
	movq	16(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 48(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L46
	lock addl	$1, (%rdx)
.L46:
	movq	8(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, 32(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L47
	lock addl	$1, (%rdx)
.L47:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB12:
	call	_ZN14SessionManager5loginE7QStringS0_@PLT
.LEHE12:
	movq	32(%rsp), %rdi
	movl	%eax, %ebx
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L52
	cmpl	$-1, %edx
	je	.L49
	lock subl	$1, (%rdi)
	je	.L501
.L49:
	movq	48(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L57
	cmpl	$-1, %edx
	je	.L54
	lock subl	$1, (%rdi)
	je	.L502
.L54:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L18
	movb	%bl, (%rdx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L29:
.LEHB13:
	call	_ZN14SessionManager6logoutEv@PLT
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L18
	movb	%al, (%rdx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L30:
	call	_ZN14SessionManager10isLoggedInEv@PLT
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L18
	movb	%al, (%rdx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L31:
	call	_ZN14SessionManager8abortAllEv@PLT
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	.LC13(%rip), %rdi
	movl	$12, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE13:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 32(%rsp)
.LEHB14:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE14:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 16(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB15:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE15:
	movq	16(%rbx), %rdi
	movq	%r12, %rsi
.LEHB16:
	call	_ZN15SettingsManager6getIntE7QString@PLT
.LEHE16:
.L472:
	movq	48(%rsp), %rdi
	movl	%eax, %ebx
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L188
	cmpl	$-1, %eax
	je	.L185
	lock subl	$1, (%rdi)
	je	.L503
.L185:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L193
	cmpl	$-1, %edx
	je	.L190
	lock subl	$1, (%rdi)
	je	.L504
.L190:
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L198
	cmpl	$-1, %edx
	je	.L195
	lock subl	$1, (%rdi)
	je	.L505
.L195:
	movl	%ebx, 0(%rbp)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L72:
	leaq	.LC12(%rip), %rdi
	movl	$9, %esi
.LEHB17:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE17:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 32(%rsp)
.LEHB18:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE18:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 16(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB19:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE19:
	movq	16(%rbx), %rdi
	movq	%r12, %rsi
.LEHB20:
	call	_ZN15SettingsManager6getIntE7QString@PLT
.LEHE20:
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L71:
	leaq	.LC11(%rip), %rdi
	movl	$4, %esi
.LEHB21:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE21:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 32(%rsp)
.LEHB22:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE22:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 16(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB23:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE23:
	movq	16(%rbx), %rsi
	movq	%rsp, %rdi
	movq	%r12, %rdx
.LEHB24:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE24:
	jmp	.L485
	.p2align 4,,10
	.p2align 3
.L70:
	leaq	.LC10(%rip), %rdi
	movl	$3, %esi
.LEHB25:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE25:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 32(%rsp)
.LEHB26:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE26:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 16(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB27:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE27:
	movq	16(%rbx), %rsi
	movq	%rsp, %rdi
	movq	%r12, %rdx
.LEHB28:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE28:
	jmp	.L485
	.p2align 4,,10
	.p2align 3
.L69:
	leaq	.LC9(%rip), %rdi
	movl	$5, %esi
.LEHB29:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE29:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 32(%rsp)
.LEHB30:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE30:
	leaq	48(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 16(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB31:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE31:
	movq	16(%rbx), %rsi
	movq	%rsp, %rdi
	movq	%r12, %rdx
.LEHB32:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE32:
	jmp	.L485
	.p2align 4,,10
	.p2align 3
.L207:
	movl	(%rsi), %esi
	movq	%r12, %rdi
.LEHB33:
	call	_ZN8QVariantC1Ei@PLT
.LEHE33:
	leaq	.LC12(%rip), %rdi
	movl	$9, %esi
.LEHB34:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE34:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 16(%rsp)
.LEHB35:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE35:
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdx
	movq	%r13, %rdi
	movq	%rsp, %rbp
.LEHB36:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE36:
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB37:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE37:
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L206:
	movq	%r12, %rdi
.LEHB38:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE38:
	leaq	.LC11(%rip), %rdi
	movl	$4, %esi
.LEHB39:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE39:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 16(%rsp)
.LEHB40:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE40:
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdx
	movq	%r13, %rdi
	movq	%rsp, %rbp
.LEHB41:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE41:
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB42:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE42:
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L205:
	movq	%r12, %rdi
.LEHB43:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE43:
	leaq	.LC10(%rip), %rdi
	movl	$3, %esi
.LEHB44:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE44:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 16(%rsp)
.LEHB45:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE45:
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdx
	movq	%r13, %rdi
	movq	%rsp, %rbp
.LEHB46:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE46:
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB47:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE47:
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L204:
	movq	%r12, %rdi
.LEHB48:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE48:
	leaq	.LC9(%rip), %rdi
	movl	$5, %esi
.LEHB49:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE49:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 16(%rsp)
.LEHB50:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE50:
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdx
	movq	%r13, %rdi
	movq	%rsp, %rbp
.LEHB51:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE51:
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB52:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE52:
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L208:
	movl	(%rsi), %esi
	movq	%r12, %rdi
.LEHB53:
	call	_ZN8QVariantC1Ei@PLT
.LEHE53:
	leaq	.LC13(%rip), %rdi
	movl	$12, %esi
.LEHB54:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE54:
	leaq	.LC8(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 16(%rsp)
.LEHB55:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE55:
	leaq	32(%rsp), %r13
	leaq	16(%rsp), %r14
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdx
	movq	%r13, %rdi
	movq	%rsp, %rbp
.LEHB56:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE56:
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
.LEHB57:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE57:
	jmp	.L474
.L500:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L318:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L315
.L499:
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L313:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L310
.L498:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L308:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L305
.L490:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L157:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L154
.L489:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L152:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L149
.L488:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L147:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L494:
	cmpq	$0, 8(%rdx)
	je	.L506
	cmpq	_ZN14SessionManager8loggedInEv@GOTPCREL(%rip), %rax
	jne	.L63
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L495:
	cmpq	$0, 8(%rdx)
	jne	.L64
	movl	$1, (%rcx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L497:
	cmpq	$0, 8(%rdx)
	jne	.L65
	movl	$3, (%rcx)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L496:
	cmpq	$0, 8(%rdx)
	jne	.L64
	movl	$2, (%rcx)
	jmp	.L18
.L501:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L52:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L49
.L502:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L57:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L54
.L505:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L198:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L195
.L504:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L193:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L190
.L503:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L188:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L185
.L506:
	movl	$0, (%rcx)
	jmp	.L18
.L491:
	call	__stack_chk_fail@PLT
.L353:
.L428:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L320:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
.L321:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
.L322:
	movq	%r12, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB58:
	call	_Unwind_Resume@PLT
.L352:
.L427:
	movq	%rax, %rbx
	jmp	.L320
.L351:
.L419:
	movq	%rax, %rbx
	leaq	16(%rsp), %r14
	jmp	.L321
.L350:
.L402:
	movq	%rax, %rbx
	jmp	.L322
.L326:
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L343:
.L401:
	leaq	32(%rsp), %r13
	movq	%rax, %rbx
.L201:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L332:
.L410:
	movq	%rax, %rbx
.L200:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L201
.L331:
	jmp	.L401
.L333:
.L411:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L200
.L349:
	jmp	.L428
.L348:
	jmp	.L427
.L347:
	jmp	.L419
.L369:
	jmp	.L428
.L368:
	jmp	.L427
.L367:
	jmp	.L419
.L366:
	jmp	.L402
.L341:
	jmp	.L410
.L340:
	jmp	.L401
.L345:
	jmp	.L411
.L344:
	jmp	.L410
.L339:
	jmp	.L411
.L336:
	jmp	.L411
.L335:
	jmp	.L410
.L334:
	jmp	.L401
.L342:
	jmp	.L411
.L338:
	jmp	.L410
.L337:
	jmp	.L401
.L346:
	jmp	.L402
.L328:
	jmp	.L401
.L327:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE58:
.L330:
	jmp	.L411
.L329:
	jmp	.L410
.L361:
	jmp	.L428
.L360:
	jmp	.L427
.L359:
	jmp	.L419
.L358:
	jmp	.L402
.L357:
	jmp	.L428
.L356:
	jmp	.L427
.L355:
	jmp	.L419
.L354:
	jmp	.L402
.L365:
	jmp	.L428
.L364:
	jmp	.L427
.L363:
	jmp	.L419
.L362:
	jmp	.L402
	.cfi_endproc
.LFE12877:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA12877:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12877-.LLSDACSB12877
.LLSDACSB12877:
	.uleb128 .LEHB0-.LFB12877
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12877
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L328-.LFB12877
	.uleb128 0
	.uleb128 .LEHB2-.LFB12877
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L329-.LFB12877
	.uleb128 0
	.uleb128 .LEHB3-.LFB12877
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L330-.LFB12877
	.uleb128 0
	.uleb128 .LEHB4-.LFB12877
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB12877
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L346-.LFB12877
	.uleb128 0
	.uleb128 .LEHB6-.LFB12877
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L347-.LFB12877
	.uleb128 0
	.uleb128 .LEHB7-.LFB12877
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L348-.LFB12877
	.uleb128 0
	.uleb128 .LEHB8-.LFB12877
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L349-.LFB12877
	.uleb128 0
	.uleb128 .LEHB9-.LFB12877
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB12877
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L326-.LFB12877
	.uleb128 0
	.uleb128 .LEHB11-.LFB12877
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB12877
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L327-.LFB12877
	.uleb128 0
	.uleb128 .LEHB13-.LFB12877
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB12877
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L343-.LFB12877
	.uleb128 0
	.uleb128 .LEHB15-.LFB12877
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L344-.LFB12877
	.uleb128 0
	.uleb128 .LEHB16-.LFB12877
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L345-.LFB12877
	.uleb128 0
	.uleb128 .LEHB17-.LFB12877
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB12877
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L340-.LFB12877
	.uleb128 0
	.uleb128 .LEHB19-.LFB12877
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L341-.LFB12877
	.uleb128 0
	.uleb128 .LEHB20-.LFB12877
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L342-.LFB12877
	.uleb128 0
	.uleb128 .LEHB21-.LFB12877
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB12877
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L337-.LFB12877
	.uleb128 0
	.uleb128 .LEHB23-.LFB12877
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L338-.LFB12877
	.uleb128 0
	.uleb128 .LEHB24-.LFB12877
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L339-.LFB12877
	.uleb128 0
	.uleb128 .LEHB25-.LFB12877
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB12877
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L334-.LFB12877
	.uleb128 0
	.uleb128 .LEHB27-.LFB12877
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L335-.LFB12877
	.uleb128 0
	.uleb128 .LEHB28-.LFB12877
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L336-.LFB12877
	.uleb128 0
	.uleb128 .LEHB29-.LFB12877
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB12877
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L331-.LFB12877
	.uleb128 0
	.uleb128 .LEHB31-.LFB12877
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L332-.LFB12877
	.uleb128 0
	.uleb128 .LEHB32-.LFB12877
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L333-.LFB12877
	.uleb128 0
	.uleb128 .LEHB33-.LFB12877
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB12877
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L362-.LFB12877
	.uleb128 0
	.uleb128 .LEHB35-.LFB12877
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L363-.LFB12877
	.uleb128 0
	.uleb128 .LEHB36-.LFB12877
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L364-.LFB12877
	.uleb128 0
	.uleb128 .LEHB37-.LFB12877
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L365-.LFB12877
	.uleb128 0
	.uleb128 .LEHB38-.LFB12877
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB12877
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L358-.LFB12877
	.uleb128 0
	.uleb128 .LEHB40-.LFB12877
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L359-.LFB12877
	.uleb128 0
	.uleb128 .LEHB41-.LFB12877
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L360-.LFB12877
	.uleb128 0
	.uleb128 .LEHB42-.LFB12877
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L361-.LFB12877
	.uleb128 0
	.uleb128 .LEHB43-.LFB12877
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB12877
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L354-.LFB12877
	.uleb128 0
	.uleb128 .LEHB45-.LFB12877
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L355-.LFB12877
	.uleb128 0
	.uleb128 .LEHB46-.LFB12877
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L356-.LFB12877
	.uleb128 0
	.uleb128 .LEHB47-.LFB12877
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L357-.LFB12877
	.uleb128 0
	.uleb128 .LEHB48-.LFB12877
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB12877
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L350-.LFB12877
	.uleb128 0
	.uleb128 .LEHB50-.LFB12877
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L351-.LFB12877
	.uleb128 0
	.uleb128 .LEHB51-.LFB12877
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L352-.LFB12877
	.uleb128 0
	.uleb128 .LEHB52-.LFB12877
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L353-.LFB12877
	.uleb128 0
	.uleb128 .LEHB53-.LFB12877
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB12877
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L366-.LFB12877
	.uleb128 0
	.uleb128 .LEHB55-.LFB12877
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L367-.LFB12877
	.uleb128 0
	.uleb128 .LEHB56-.LFB12877
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L368-.LFB12877
	.uleb128 0
	.uleb128 .LEHB57-.LFB12877
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L369-.LFB12877
	.uleb128 0
	.uleb128 .LEHB58-.LFB12877
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE12877:
	.text
	.size	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
	.align 2
.LCOLDB15:
	.text
.LHOTB15:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager11qt_metacastEPKc
	.type	_ZN14SessionManager11qt_metacastEPKc, @function
_ZN14SessionManager11qt_metacastEPKc:
.LFB12879:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L509
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	552+_ZL33qt_meta_stringdata_SessionManager(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L514
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
.L514:
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
.L509:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12879:
	.size	_ZN14SessionManager11qt_metacastEPKc, .-_ZN14SessionManager11qt_metacastEPKc
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN14SessionManager11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN14SessionManager11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB12880:
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
	js	.L516
	testl	%ebx, %ebx
	je	.L530
	cmpl	$12, %ebx
	je	.L531
	leal	-1(%rbx), %edx
	cmpl	$2, %edx
	jbe	.L527
	cmpl	$11, %ebx
	je	.L527
	cmpl	$4, %ebx
	je	.L529
	cmpl	$5, %ebx
	je	.L529
	cmpl	$6, %ebx
	je	.L529
	cmpl	$7, %ebx
	je	.L529
	leal	-6(%rax), %edx
	cmpl	$8, %ebx
	cmove	%edx, %eax
.L516:
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
.L530:
	.cfi_restore_state
	cmpl	$11, %eax
	jg	.L520
	movl	%eax, %edx
	movq	%rbp, %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
.L520:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	subl	$12, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L529:
	.cfi_restore_state
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	subl	$6, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L531:
	.cfi_restore_state
	cmpl	$11, %eax
	jg	.L520
	movq	0(%rbp), %rdx
	movl	$-1, (%rdx)
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L527:
	movl	%eax, %edx
	movq	%rbp, %rcx
	movl	%ebx, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
	subl	$6, %eax
	jmp	.L516
	.cfi_endproc
.LFE12880:
	.size	_ZN14SessionManager11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN14SessionManager11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.weak	_ZTS14SessionManager
	.section	.rodata._ZTS14SessionManager,"aG",@progbits,_ZTS14SessionManager,comdat
	.align 16
	.type	_ZTS14SessionManager, @object
	.size	_ZTS14SessionManager, 17
_ZTS14SessionManager:
	.string	"14SessionManager"
	.weak	_ZTI14SessionManager
	.section	.data.rel.ro._ZTI14SessionManager,"awG",@progbits,_ZTI14SessionManager,comdat
	.align 8
	.type	_ZTI14SessionManager, @object
	.size	_ZTI14SessionManager, 24
_ZTI14SessionManager:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS14SessionManager
	.quad	_ZTI7QObject
	.weak	_ZTV14SessionManager
	.section	.data.rel.ro._ZTV14SessionManager,"awG",@progbits,_ZTV14SessionManager,comdat
	.align 8
	.type	_ZTV14SessionManager, @object
	.size	_ZTV14SessionManager, 112
_ZTV14SessionManager:
	.quad	0
	.quad	_ZTI14SessionManager
	.quad	_ZNK14SessionManager10metaObjectEv
	.quad	_ZN14SessionManager11qt_metacastEPKc
	.quad	_ZN14SessionManager11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN14SessionManagerD1Ev
	.quad	_ZN14SessionManagerD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.globl	_ZN14SessionManager16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN14SessionManager16staticMetaObjectE, @object
	.size	_ZN14SessionManager16staticMetaObjectE, 48
_ZN14SessionManager16staticMetaObjectE:
	.quad	_ZN7QObject16staticMetaObjectE
	.quad	_ZL33qt_meta_stringdata_SessionManager
	.quad	_ZL27qt_meta_data_SessionManager
	.quad	_ZN14SessionManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL27qt_meta_data_SessionManager, @object
	.size	_ZL27qt_meta_data_SessionManager, 476
_ZL27qt_meta_data_SessionManager:
	.long	7
	.long	0
	.long	0
	.long	0
	.long	12
	.long	14
	.long	6
	.long	94
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	1
	.long	0
	.long	74
	.long	2
	.long	6
	.long	3
	.long	0
	.long	75
	.long	2
	.long	6
	.long	4
	.long	0
	.long	76
	.long	2
	.long	6
	.long	5
	.long	1
	.long	77
	.long	2
	.long	6
	.long	7
	.long	0
	.long	80
	.long	2
	.long	6
	.long	8
	.long	0
	.long	81
	.long	2
	.long	10
	.long	9
	.long	2
	.long	82
	.long	2
	.long	10
	.long	12
	.long	0
	.long	87
	.long	2
	.long	10
	.long	13
	.long	0
	.long	88
	.long	2
	.long	10
	.long	14
	.long	0
	.long	89
	.long	2
	.long	10
	.long	15
	.long	1
	.long	90
	.long	2
	.long	10
	.long	15
	.long	0
	.long	93
	.long	2
	.long	42
	.long	43
	.long	43
	.long	43
	.long	43
	.long	10
	.long	6
	.long	43
	.long	10
	.long	1
	.long	10
	.long	10
	.long	10
	.long	11
	.long	1
	.long	1
	.long	43
	.long	-2147483632
	.long	39
	.long	17
	.long	-2147483632
	.long	18
	.long	10
	.long	4804611
	.long	10
	.long	10
	.long	4804611
	.long	19
	.long	10
	.long	4804611
	.long	20
	.long	10
	.long	4804611
	.long	21
	.long	2
	.long	4804611
	.long	22
	.long	2
	.long	4804611
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	_ZL33qt_meta_stringdata_SessionManager, @object
	.size	_ZL33qt_meta_stringdata_SessionManager, 776
_ZL33qt_meta_stringdata_SessionManager:
	.long	-1
	.long	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	552
	.long	-1
	.long	19
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	543
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	539
	.long	-1
	.long	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	516
	.long	-1
	.long	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	501
	.long	-1
	.long	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	487
	.long	-1
	.long	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	476
	.long	-1
	.long	11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	456
	.long	-1
	.long	13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	444
	.long	-1
	.long	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	434
	.long	-1
	.long	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	416
	.long	-1
	.long	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	398
	.long	-1
	.long	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	383
	.long	-1
	.long	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	366
	.long	-1
	.long	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	353
	.long	-1
	.long	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	338
	.long	-1
	.long	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	331
	.long	-1
	.long	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	322
	.long	-1
	.long	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	305
	.long	-1
	.long	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	285
	.long	-1
	.long	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	265
	.long	-1
	.long	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	246
	.long	-1
	.long	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	232
	.string	"SessionManager"
	.string	"sessionParamChanged"
	.string	""
	.string	"loggedIn"
	.string	"loggedOut"
	.string	"loadingStart"
	.string	"msg"
	.string	"loadingStop"
	.string	"getClientInfo"
	.string	"login"
	.string	"email"
	.string	"password"
	.string	"logout"
	.string	"isLoggedIn"
	.string	"abortAll"
	.string	"genSessionsModel"
	.string	"SessionsModel*"
	.string	"parent"
	.string	"uid"
	.string	"sid"
	.string	"skey"
	.string	"loginTime"
	.string	"lastSeenTime"
	.zero	3
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

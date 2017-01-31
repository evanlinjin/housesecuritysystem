	.file	"pubnub_qt.cpp"
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
	.type	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.8, @function
_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.8:
.LFB17074:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	16(%rdi), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movslq	12(%rdi), %rdx
	movq	%rdi, %r12
	leaq	(%rax,%rdx,8), %rbx
	movslq	8(%rdi), %rdx
	leaq	(%rax,%rdx,8), %rbp
	cmpq	%rbp, %rbx
	jne	.L10
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	$-1, %edx
	je	.L4
	lock subl	$1, (%rax)
	je	.L7
.L4:
	cmpq	%rbx, %rbp
	je	.L8
.L10:
	subq	$8, %rbx
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L3
.L7:
	movq	(%rbx), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	cmpq	%rbx, %rbp
	jne	.L10
.L8:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%r12, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN9QListData7disposeEPNS_4DataE@PLT
	.cfi_endproc
.LFE17074:
	.size	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.8, .-_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.8
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
	.align 2
.LCOLDB1:
	.section	.text._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LHOTB1:
	.align 2
	.p2align 4,,15
	.weak	_ZN10QByteArrayD2Ev
	.type	_ZN10QByteArrayD2Ev, @function
_ZN10QByteArrayD2Ev:
.LFB9020:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L18
	cmpl	$-1, %edx
	je	.L13
	lock subl	$1, (%rax)
	je	.L18
.L13:
	rep ret
	.p2align 4,,10
	.p2align 3
.L18:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$1, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9020:
	.size	_ZN10QByteArrayD2Ev, .-_ZN10QByteArrayD2Ev
	.section	.text.unlikely._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LCOLDE1:
	.section	.text._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LHOTE1:
	.weak	_ZN10QByteArrayD1Ev
	.set	_ZN10QByteArrayD1Ev,_ZN10QByteArrayD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
	.align 2
.LCOLDB2:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTB2:
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
	je	.L24
	cmpl	$-1, %edx
	je	.L19
	lock subl	$1, (%rax)
	je	.L24
.L19:
	rep ret
	.p2align 4,,10
	.p2align 3
.L24:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$2, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9465:
	.size	_ZN7QStringD2Ev, .-_ZN7QStringD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LCOLDE2:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTE2:
	.weak	_ZN7QStringD1Ev
	.set	_ZN7QStringD1Ev,_ZN7QStringD2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"1httpFinished()"
.LC4:
	.string	"2finished()"
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans
	.type	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans, @function
_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans:
.LFB15356:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15356
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebp
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpl	$10, %esi
	je	.L67
.L26:
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebp, %eax
	jne	.L68
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	.cfi_restore_state
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	movl	%edx, %r12d
	movl	1080(%rdi), %esi
	leaq	56(%rdi), %r13
	cmpl	$-1, %esi
	jne	.L27
	movq	%r13, %rdi
	call	strlen@PLT
	movl	%eax, %esi
.L27:
	movq	%r13, %rdi
.LEHB0:
	call	_ZN7QString17fromLatin1_helperEPKci@PLT
.LEHE0:
	movq	88(%rbx), %rdx
	movq	%rax, 16(%rsp)
	movq	%rdx, 32(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L28
	lock addl	$1, (%rdx)
.L28:
	leaq	16(%rsp), %r13
	leaq	32(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB1:
	call	_ZN7QString6appendERKS_@PLT
.LEHE1:
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%rsp, %rdi
	movq	%rsp, %r15
.LEHB2:
	call	_ZN4QUrlC1ERK7QStringNS_11ParsingModeE@PLT
.LEHE2:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L36
	cmpl	$-1, %eax
	je	.L33
	lock subl	$1, (%rdi)
	je	.L69
.L33:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L41
	cmpl	$-1, %eax
	je	.L38
	lock subl	$1, (%rdi)
	je	.L70
.L38:
	movq	64(%rbx), %rdi
	movl	%r12d, 80(%rbx)
	movq	$0, 64(%rbx)
	testq	%rdi, %rdi
	je	.L44
.LEHB3:
	call	_ZN7QObject11deleteLaterEv@PLT
.L44:
	movb	$0, 104(%rbx)
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	_ZN15QNetworkRequestC1ERK4QUrl@PLT
.LEHE3:
	leaq	48(%rbx), %rdi
	movq	%r13, %rsi
.LEHB4:
	call	_ZN21QNetworkAccessManager3getERK15QNetworkRequest@PLT
.LEHE4:
	movq	64(%rbx), %rdi
	cmpq	%rdi, %rax
	je	.L46
	testq	%rdi, %rdi
	movq	%rax, 64(%rbx)
	je	.L46
	movq	(%rdi), %rax
	call	*32(%rax)
.L46:
	movq	%r13, %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	64(%rbx), %rsi
	leaq	.LC3(%rip), %r8
	leaq	.LC4(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%r14, %rdi
.LEHB5:
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
	movq	%r14, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	movl	100(%rbx), %esi
	movq	112(%rbx), %rdi
	call	_ZN6QTimer5startEi@PLT
.LEHE5:
	movq	%r15, %rdi
	call	_ZN4QUrlD1Ev@PLT
	jmp	.L26
.L70:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L38
.L69:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L36:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L33
.L68:
	call	__stack_chk_fail@PLT
.L54:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN15QNetworkRequestD1Ev@PLT
.L50:
	movq	%r15, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.L53:
	movq	%rax, %rbx
	jmp	.L50
.L52:
.L63:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE6:
.L55:
	jmp	.L63
	.cfi_endproc
.LFE15356:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA15356:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15356-.LLSDACSB15356
.LLSDACSB15356:
	.uleb128 .LEHB0-.LFB15356
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB15356
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L55-.LFB15356
	.uleb128 0
	.uleb128 .LEHB2-.LFB15356
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L52-.LFB15356
	.uleb128 0
	.uleb128 .LEHB3-.LFB15356
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L53-.LFB15356
	.uleb128 0
	.uleb128 .LEHB4-.LFB15356
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L54-.LFB15356
	.uleb128 0
	.uleb128 .LEHB5-.LFB15356
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L53-.LFB15356
	.uleb128 0
	.uleb128 .LEHB6-.LFB15356
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE15356:
	.text
	.size	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans, .-_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt8set_uuidERK7QString
	.type	_ZN9pubnub_qt8set_uuidERK7QString, @function
_ZN9pubnub_qt8set_uuidERK7QString:
.LFB15357:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsp, %rdi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZN7QString15toLatin1_helperERKS_@PLT
	movq	32(%rbx), %rax
	movq	(%rsp), %rdx
	movq	%rax, (%rsp)
	movq	%rdx, 32(%rbx)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L76
	cmpl	$-1, %edx
	je	.L73
	lock subl	$1, (%rax)
	je	.L76
.L73:
	movq	32(%rbx), %rcx
	leaq	32(%rbx), %rdi
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L84
.L78:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	addl	$1, %esi
	shrl	$31, %edx
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	32(%rbx), %rsi
	movq	16(%rsi), %rax
.L79:
	movq	72(%rbx), %rdi
	addq	%rax, %rsi
	call	pbcc_set_uuid@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L85
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	movq	(%rsp), %rdi
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rbx), %rcx
	leaq	32(%rbx), %rdi
	movl	(%rcx), %eax
	cmpl	$1, %eax
	ja	.L78
.L84:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L78
	jmp	.L79
.L85:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15357:
	.size	_ZN9pubnub_qt8set_uuidERK7QString, .-_ZN9pubnub_qt8set_uuidERK7QString
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt8set_authERK7QString
	.type	_ZN9pubnub_qt8set_authERK7QString, @function
_ZN9pubnub_qt8set_authERK7QString:
.LFB15358:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsp, %rdi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZN7QString15toLatin1_helperERKS_@PLT
	movq	40(%rbx), %rax
	movq	(%rsp), %rdx
	movq	%rax, (%rsp)
	movq	%rdx, 40(%rbx)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L91
	cmpl	$-1, %edx
	je	.L88
	lock subl	$1, (%rax)
	je	.L91
.L88:
	movq	40(%rbx), %rcx
	leaq	40(%rbx), %rdi
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L99
.L93:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	addl	$1, %esi
	shrl	$31, %edx
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	40(%rbx), %rsi
	movq	16(%rsi), %rax
.L94:
	movq	72(%rbx), %rdi
	addq	%rax, %rsi
	call	pbcc_set_auth@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L100
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L91:
	.cfi_restore_state
	movq	(%rsp), %rdi
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	40(%rbx), %rcx
	leaq	40(%rbx), %rdi
	movl	(%rcx), %eax
	cmpl	$1, %eax
	ja	.L93
.L99:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L93
	jmp	.L94
.L100:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15358:
	.size	_ZN9pubnub_qt8set_authERK7QString, .-_ZN9pubnub_qt8set_authERK7QString
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
	.globl	_ZNK9pubnub_qt3getEv
	.type	_ZNK9pubnub_qt3getEv, @function
_ZNK9pubnub_qt3getEv:
.LFB15359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	72(%rsi), %rdi
	call	pbcc_get_msg@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	movl	$-1, %esi
	je	.L102
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %esi
.L102:
	movq	%rbx, %rdi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	%rax, 0(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15359:
	.size	_ZNK9pubnub_qt3getEv, .-_ZNK9pubnub_qt3getEv
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
	.globl	_ZNK9pubnub_qt11get_channelEv
	.type	_ZNK9pubnub_qt11get_channelEv, @function
_ZNK9pubnub_qt11get_channelEv:
.LFB15361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	72(%rsi), %rdi
	call	pbcc_get_channel@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	movl	$-1, %esi
	je	.L108
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %esi
.L108:
	movq	%rbx, %rdi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	%rax, 0(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15361:
	.size	_ZNK9pubnub_qt11get_channelEv, .-_ZNK9pubnub_qt11get_channelEv
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
	.align 2
.LCOLDB10:
	.text
.LHOTB10:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt6cancelEv
	.type	_ZN9pubnub_qt6cancelEv, @function
_ZN9pubnub_qt6cancelEv:
.LFB15363:
	.cfi_startproc
	movq	64(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L115
	movq	(%rdi), %rax
	jmp	*232(%rax)
	.p2align 4,,10
	.p2align 3
.L115:
	rep ret
	.cfi_endproc
.LFE15363:
	.size	_ZN9pubnub_qt6cancelEv, .-_ZN9pubnub_qt6cancelEv
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt7publishERK7QStringS2_
	.type	_ZN9pubnub_qt7publishERK7QStringS2_, @function
_ZN9pubnub_qt7publishERK7QStringS2_:
.LFB15364:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15364
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbp
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	leaq	16(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%r13, %rdi
.LEHB7:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE7:
	movq	16(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L141
.L118:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB8:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	16(%rsp), %rdx
	movq	16(%rdx), %rbx
.L133:
	movq	%r14, %rsi
	movq	%rsp, %rdi
	addq	%rdx, %rbx
	movq	%rsp, %r12
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE8:
	movq	(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L142
.L120:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r12, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB9:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	(%rsp), %rsi
	movq	16(%rsi), %rax
.L134:
	movq	72(%rbp), %rdi
	addq	%rax, %rsi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	call	pbcc_publish_prep@PLT
	movl	$2, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE9:
	movq	(%rsp), %rdi
	movl	%eax, %ebx
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L125
	cmpl	$-1, %edx
	je	.L122
	lock subl	$1, (%rdi)
	je	.L143
.L122:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L130
	cmpl	$-1, %edx
	je	.L127
	lock subl	$1, (%rdi)
	je	.L144
.L127:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L145
	addq	$32, %rsp
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
.L144:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L130:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L127
.L143:
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L125:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L142:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L120
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L141:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L118
	jmp	.L133
.L145:
	call	__stack_chk_fail@PLT
.L137:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L132:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L136:
	movq	%rax, %rbx
	jmp	.L132
	.cfi_endproc
.LFE15364:
	.section	.gcc_except_table
.LLSDA15364:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15364-.LLSDACSB15364
.LLSDACSB15364:
	.uleb128 .LEHB7-.LFB15364
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB15364
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L136-.LFB15364
	.uleb128 0
	.uleb128 .LEHB9-.LFB15364
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L137-.LFB15364
	.uleb128 0
	.uleb128 .LEHB10-.LFB15364
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE15364:
	.text
	.size	_ZN9pubnub_qt7publishERK7QStringS2_, .-_ZN9pubnub_qt7publishERK7QStringS2_
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt9publishv2ERK7QStringS2_6QFlagsINS_9pubv2_optEE
	.type	_ZN9pubnub_qt9publishv2ERK7QStringS2_6QFlagsINS_9pubv2_optEE, @function
_ZN9pubnub_qt9publishv2ERK7QStringS2_6QFlagsINS_9pubv2_optEE:
.LFB15365:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15365
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebp
	movq	%rdi, %r12
	andl	$1, %ecx
	shrl	%ebp
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	andl	$1, %ebp
	leaq	32(%rsp), %r14
	movl	%ecx, 12(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%r14, %rdi
.LEHB11:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE11:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L171
.L148:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB12:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbx
.L163:
	leaq	16(%rsp), %r13
	movq	%r15, %rsi
	addq	%rdx, %rbx
	movq	%r13, %rdi
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE12:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L172
.L150:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB13:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L164:
	movq	72(%r12), %rdi
	movl	12(%rsp), %ecx
	addq	%rax, %rsi
	movl	%ebp, %r8d
	movq	%rbx, %rdx
	call	pbcc_publish_prep@PLT
	movl	$2, %edx
	movl	%eax, %esi
	movq	%r12, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE13:
	movq	16(%rsp), %rdi
	movl	%eax, %ebx
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L155
	cmpl	$-1, %edx
	je	.L152
	lock subl	$1, (%rdi)
	je	.L173
.L152:
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L160
	cmpl	$-1, %edx
	je	.L157
	lock subl	$1, (%rdi)
	je	.L174
.L157:
	movl	%ebx, %eax
	movq	40(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L175
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L174:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L160:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L157
.L173:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L155:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L172:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L150
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L171:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L148
	jmp	.L163
.L175:
	call	__stack_chk_fail@PLT
.L167:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L162:
	movq	%r14, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	movq	%rbx, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L166:
	movq	%rax, %rbx
	jmp	.L162
	.cfi_endproc
.LFE15365:
	.section	.gcc_except_table
.LLSDA15365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15365-.LLSDACSB15365
.LLSDACSB15365:
	.uleb128 .LEHB11-.LFB15365
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB15365
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L166-.LFB15365
	.uleb128 0
	.uleb128 .LEHB13-.LFB15365
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L167-.LFB15365
	.uleb128 0
	.uleb128 .LEHB14-.LFB15365
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE15365:
	.text
	.size	_ZN9pubnub_qt9publishv2ERK7QStringS2_6QFlagsINS_9pubv2_optEE, .-_ZN9pubnub_qt9publishv2ERK7QStringS2_6QFlagsINS_9pubv2_optEE
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt9subscribeERK7QStringS2_
	.type	_ZN9pubnub_qt9subscribeERK7QStringS2_, @function
_ZN9pubnub_qt9subscribeERK7QStringS2_:
.LFB15368:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15368
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	(%rdx), %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L224
.L177:
	movq	(%r12), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L205
	leaq	16(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB15:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE15:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L225
.L182:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB16:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE16:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L202:
	addq	%rax, %rsi
	movl	$1, %r12d
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L205:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
.L180:
	movq	72(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
.LEHB17:
	call	pbcc_subscribe_prep@PLT
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE17:
	testb	%r12b, %r12b
	jne	.L226
.L183:
	testb	%r13b, %r13b
	jne	.L227
.L189:
	movq	40(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L228
	addq	$48, %rsp
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
.L227:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L194
	cmpl	$-1, %edx
	je	.L189
	lock subl	$1, (%rdi)
	jne	.L189
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L194:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L226:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L188
	cmpl	$-1, %edx
	je	.L183
	lock subl	$1, (%rdi)
	jne	.L183
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L188:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L224:
	leaq	32(%rsp), %r13
	movq	%rdx, %rsi
	movq	%r13, %rdi
.LEHB18:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE18:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L229
.L179:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB19:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE19:
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbx
.L201:
	addq	%rdx, %rbx
	movl	$1, %r13d
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L225:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L182
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L229:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L179
	jmp	.L201
.L228:
	call	__stack_chk_fail@PLT
.L209:
	testb	%r12b, %r12b
	leaq	16(%rsp), %r14
	jne	.L198
.L197:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L230
.L199:
	movq	%rbx, %rdi
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
.L207:
.L198:
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	8(%rsp), %rax
	jmp	.L197
.L230:
	leaq	32(%rsp), %r13
.L200:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L199
.L208:
	jmp	.L197
.L206:
	movq	%rax, %rbx
	jmp	.L200
	.cfi_endproc
.LFE15368:
	.section	.gcc_except_table
.LLSDA15368:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15368-.LLSDACSB15368
.LLSDACSB15368:
	.uleb128 .LEHB15-.LFB15368
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L208-.LFB15368
	.uleb128 0
	.uleb128 .LEHB16-.LFB15368
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L207-.LFB15368
	.uleb128 0
	.uleb128 .LEHB17-.LFB15368
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L209-.LFB15368
	.uleb128 0
	.uleb128 .LEHB18-.LFB15368
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB15368
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L206-.LFB15368
	.uleb128 0
	.uleb128 .LEHB20-.LFB15368
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE15368:
	.text
	.size	_ZN9pubnub_qt9subscribeERK7QStringS2_, .-_ZN9pubnub_qt9subscribeERK7QStringS2_
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt5leaveERK7QStringS2_
	.type	_ZN9pubnub_qt5leaveERK7QStringS2_, @function
_ZN9pubnub_qt5leaveERK7QStringS2_:
.LFB15369:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15369
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	(%rdx), %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L279
.L232:
	movq	(%r12), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L260
	leaq	16(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB21:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE21:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L280
.L237:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB22:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE22:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L257:
	addq	%rax, %rsi
	movl	$1, %r12d
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L260:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
.L235:
	movq	72(%rbp), %rdi
	movq	%rbx, %rdx
.LEHB23:
	call	pbcc_leave_prep@PLT
	movl	$3, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE23:
	testb	%r12b, %r12b
	jne	.L281
.L238:
	testb	%r13b, %r13b
	jne	.L282
.L244:
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L283
	addq	$48, %rsp
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
.L282:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L249
	cmpl	$-1, %edx
	je	.L244
	lock subl	$1, (%rdi)
	jne	.L244
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L249:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L281:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L243
	cmpl	$-1, %edx
	je	.L238
	lock subl	$1, (%rdi)
	jne	.L238
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L243:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L279:
	leaq	32(%rsp), %r13
	movq	%rdx, %rsi
	movq	%r13, %rdi
.LEHB24:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE24:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L284
.L234:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB25:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE25:
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbx
.L256:
	addq	%rdx, %rbx
	movl	$1, %r13d
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L280:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L237
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L284:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L234
	jmp	.L256
.L283:
	call	__stack_chk_fail@PLT
.L264:
	testb	%r12b, %r12b
	leaq	16(%rsp), %r14
	jne	.L253
.L252:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L285
.L254:
	movq	%rbx, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L262:
.L253:
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	8(%rsp), %rax
	jmp	.L252
.L285:
	leaq	32(%rsp), %r13
.L255:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L254
.L263:
	jmp	.L252
.L261:
	movq	%rax, %rbx
	jmp	.L255
	.cfi_endproc
.LFE15369:
	.section	.gcc_except_table
.LLSDA15369:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15369-.LLSDACSB15369
.LLSDACSB15369:
	.uleb128 .LEHB21-.LFB15369
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L263-.LFB15369
	.uleb128 0
	.uleb128 .LEHB22-.LFB15369
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L262-.LFB15369
	.uleb128 0
	.uleb128 .LEHB23-.LFB15369
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L264-.LFB15369
	.uleb128 0
	.uleb128 .LEHB24-.LFB15369
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB15369
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L261-.LFB15369
	.uleb128 0
	.uleb128 .LEHB26-.LFB15369
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE15369:
	.text
	.size	_ZN9pubnub_qt5leaveERK7QStringS2_, .-_ZN9pubnub_qt5leaveERK7QStringS2_
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
	.globl	_ZN9pubnub_qt4timeEv
	.type	_ZN9pubnub_qt4timeEv, @function
_ZN9pubnub_qt4timeEv:
.LFB15370:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	call	pbcc_time_prep@PLT
	movq	%rbx, %rdi
	movl	$4, %edx
	movl	%eax, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
	.cfi_endproc
.LFE15370:
	.size	_ZN9pubnub_qt4timeEv, .-_ZN9pubnub_qt4timeEv
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
	.globl	_ZN9pubnub_qt7historyERK7QStringjb
	.type	_ZN9pubnub_qt7historyERK7QStringjb, @function
_ZN9pubnub_qt7historyERK7QStringjb:
.LFB15371:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15371
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	movzbl	%cl, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L303
	leaq	16(%rsp), %r13
	movq	%r13, %rdi
.LEHB27:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE27:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L315
.L291:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB28:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE28:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L301:
	addq	%rax, %rsi
	movl	$1, %r13d
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L303:
	xorl	%r13d, %r13d
	xorl	%esi, %esi
.L289:
	movq	72(%rbp), %rdi
	movl	%ebx, %ecx
	movl	%r12d, %edx
.LEHB29:
	call	pbcc_history_prep@PLT
	movl	$5, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE29:
	testb	%r13b, %r13b
	jne	.L316
.L292:
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L317
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L297
	cmpl	$-1, %edx
	je	.L292
	lock subl	$1, (%rdi)
	jne	.L292
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L297:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 12(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	12(%rsp), %eax
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L315:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L291
	jmp	.L301
.L317:
	call	__stack_chk_fail@PLT
.L305:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L318
.L299:
	movq	%rbx, %rdi
.LEHB30:
	call	_Unwind_Resume@PLT
.LEHE30:
.L304:
	movq	%rax, %rbx
.L300:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L299
.L318:
	leaq	16(%rsp), %r13
	jmp	.L300
	.cfi_endproc
.LFE15371:
	.section	.gcc_except_table
.LLSDA15371:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15371-.LLSDACSB15371
.LLSDACSB15371:
	.uleb128 .LEHB27-.LFB15371
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB15371
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L304-.LFB15371
	.uleb128 0
	.uleb128 .LEHB29-.LFB15371
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L305-.LFB15371
	.uleb128 0
	.uleb128 .LEHB30-.LFB15371
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE15371:
	.text
	.size	_ZN9pubnub_qt7historyERK7QStringjb, .-_ZN9pubnub_qt7historyERK7QStringjb
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt8here_nowERK7QStringS2_
	.type	_ZN9pubnub_qt8here_nowERK7QStringS2_, @function
_ZN9pubnub_qt8here_nowERK7QStringS2_:
.LFB15372:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15372
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	(%rdx), %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L367
.L320:
	movq	(%r12), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L348
	leaq	16(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB31:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE31:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L368
.L325:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB32:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE32:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L345:
	addq	%rax, %rsi
	movl	$1, %r12d
	jmp	.L323
	.p2align 4,,10
	.p2align 3
.L348:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
.L323:
	movq	72(%rbp), %rdi
	movl	$2, %r8d
	movl	$2, %ecx
	movq	%rbx, %rdx
.LEHB33:
	call	pbcc_here_now_prep@PLT
	movl	$6, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE33:
	testb	%r12b, %r12b
	jne	.L369
.L326:
	testb	%r13b, %r13b
	jne	.L370
.L332:
	movq	40(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L371
	addq	$48, %rsp
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
.L370:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L337
	cmpl	$-1, %edx
	je	.L332
	lock subl	$1, (%rdi)
	jne	.L332
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L337:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L369:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L331
	cmpl	$-1, %edx
	je	.L326
	lock subl	$1, (%rdi)
	jne	.L326
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L331:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L367:
	leaq	32(%rsp), %r13
	movq	%rdx, %rsi
	movq	%r13, %rdi
.LEHB34:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE34:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L372
.L322:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB35:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE35:
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbx
.L344:
	addq	%rdx, %rbx
	movl	$1, %r13d
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L368:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L325
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L372:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L322
	jmp	.L344
.L371:
	call	__stack_chk_fail@PLT
.L352:
	testb	%r12b, %r12b
	leaq	16(%rsp), %r14
	jne	.L341
.L340:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L373
.L342:
	movq	%rbx, %rdi
.LEHB36:
	call	_Unwind_Resume@PLT
.LEHE36:
.L350:
.L341:
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	8(%rsp), %rax
	jmp	.L340
.L373:
	leaq	32(%rsp), %r13
.L343:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L342
.L351:
	jmp	.L340
.L349:
	movq	%rax, %rbx
	jmp	.L343
	.cfi_endproc
.LFE15372:
	.section	.gcc_except_table
.LLSDA15372:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15372-.LLSDACSB15372
.LLSDACSB15372:
	.uleb128 .LEHB31-.LFB15372
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L351-.LFB15372
	.uleb128 0
	.uleb128 .LEHB32-.LFB15372
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L350-.LFB15372
	.uleb128 0
	.uleb128 .LEHB33-.LFB15372
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L352-.LFB15372
	.uleb128 0
	.uleb128 .LEHB34-.LFB15372
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB15372
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L349-.LFB15372
	.uleb128 0
	.uleb128 .LEHB36-.LFB15372
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE15372:
	.text
	.size	_ZN9pubnub_qt8here_nowERK7QStringS2_, .-_ZN9pubnub_qt8here_nowERK7QStringS2_
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
	.align 2
.LCOLDB18:
	.text
.LHOTB18:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt15global_here_nowEv
	.type	_ZN9pubnub_qt15global_here_nowEv, @function
_ZN9pubnub_qt15global_here_nowEv:
.LFB15373:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$2, %r8d
	movl	$2, %ecx
	call	pbcc_here_now_prep@PLT
	movq	%rbx, %rdi
	movl	$7, %edx
	movl	%eax, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
	.cfi_endproc
.LFE15373:
	.size	_ZN9pubnub_qt15global_here_nowEv, .-_ZN9pubnub_qt15global_here_nowEv
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt9where_nowERK7QString
	.type	_ZN9pubnub_qt9where_nowERK7QString, @function
_ZN9pubnub_qt9where_nowERK7QString:
.LFB15374:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15374
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L377
	movq	32(%rbx), %rcx
	leaq	32(%rdi), %rdi
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L406
.L379:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB37:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	32(%rbx), %rsi
	movq	16(%rsi), %rax
.L392:
	addq	%rax, %rsi
	xorl	%ebp, %ebp
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L377:
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE37:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L407
.L382:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%rbp, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB38:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE38:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L393:
	addq	%rax, %rsi
	movl	$1, %ebp
.L380:
	movq	72(%rbx), %rdi
.LEHB39:
	call	pbcc_where_now_prep@PLT
	movl	$8, %edx
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE39:
	testb	%bpl, %bpl
	jne	.L408
.L383:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L409
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L408:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L388
	cmpl	$-1, %edx
	je	.L383
	lock subl	$1, (%rdi)
	jne	.L383
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L388:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 12(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	12(%rsp), %eax
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L407:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L382
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L406:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L379
	jmp	.L392
.L409:
	call	__stack_chk_fail@PLT
.L395:
	movq	%rax, %rbx
.L391:
	movq	%rbp, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
.L390:
	movq	%rbx, %rdi
.LEHB40:
	call	_Unwind_Resume@PLT
.LEHE40:
.L396:
	testb	%bpl, %bpl
	movq	%rax, %rbx
	je	.L390
	leaq	16(%rsp), %rbp
	jmp	.L391
	.cfi_endproc
.LFE15374:
	.section	.gcc_except_table
.LLSDA15374:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15374-.LLSDACSB15374
.LLSDACSB15374:
	.uleb128 .LEHB37-.LFB15374
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB15374
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L395-.LFB15374
	.uleb128 0
	.uleb128 .LEHB39-.LFB15374
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L396-.LFB15374
	.uleb128 0
	.uleb128 .LEHB40-.LFB15374
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE15374:
	.text
	.size	_ZN9pubnub_qt9where_nowERK7QString, .-_ZN9pubnub_qt9where_nowERK7QString
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt9set_stateERK7QStringS2_S2_S2_
	.type	_ZN9pubnub_qt9set_stateERK7QStringS2_S2_S2_, @function
_ZN9pubnub_qt9set_stateERK7QStringS2_S2_S2_:
.LFB15375:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15375
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	movq	%r8, %rsi
	movq	%rcx, %r14
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	leaq	80(%rsp), %r12
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%r12, %rdi
.LEHB41:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE41:
	movq	80(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L490
.L412:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r12, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB42:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	80(%rsp), %rdx
	movq	16(%rdx), %rbx
.L458:
	leaq	(%rdx,%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	(%r14), %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L413
	movq	32(%rbp), %rax
	leaq	32(%rbp), %rdi
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L491
.L415:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	addl	$1, %esi
	shrl	$31, %edx
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE42:
	movq	32(%rbp), %rdx
	movq	16(%rdx), %rcx
.L459:
	leaq	(%rdx,%rcx), %rax
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movb	$0, 15(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%r15), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	je	.L419
.L495:
	leaq	48(%rsp), %r14
	movq	%r15, %rsi
	movq	%r14, %rdi
.LEHB43:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE43:
	movq	48(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L492
.L421:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB44:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE44:
	movq	48(%rsp), %rdx
	movq	16(%rdx), %rcx
.L461:
	movq	0(%r13), %rax
	leaq	(%rdx,%rcx), %rbx
	movl	$1, %r14d
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L493
.L465:
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	.L422
	.p2align 4,,10
	.p2align 3
.L413:
	leaq	64(%rsp), %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdi
.LEHB45:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE45:
	movq	64(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L494
.L418:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%rbx, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB46:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE46:
	movq	64(%rsp), %rdx
	movq	16(%rdx), %rcx
.L460:
	leaq	(%rdx,%rcx), %rax
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movb	$1, 15(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%r15), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	jne	.L495
.L419:
	movq	0(%r13), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L465
.L493:
	leaq	32(%rsp), %r15
	movq	%r13, %rsi
	movq	%r15, %rdi
.LEHB47:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE47:
	movq	32(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L496
.L424:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r15, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB48:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE48:
	movq	32(%rsp), %rsi
	movq	16(%rsi), %rax
.L462:
	addq	%rax, %rsi
	movl	$1, %r13d
.L422:
	movq	72(%rbp), %rdi
	movq	24(%rsp), %r8
	movq	%rbx, %rdx
	movq	16(%rsp), %rcx
.LEHB49:
	call	pbcc_set_state_prep@PLT
	movl	$9, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE49:
	testb	%r13b, %r13b
	movl	%eax, %ebx
	jne	.L497
.L425:
	testb	%r14b, %r14b
	jne	.L498
.L431:
	cmpb	$0, 15(%rsp)
	jne	.L499
.L437:
	movq	80(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L447
	cmpl	$-1, %edx
	je	.L444
	lock subl	$1, (%rdi)
	je	.L500
.L444:
	movq	88(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L501
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L500:
	.cfi_restore_state
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L447:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L499:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L442
	cmpl	$-1, %eax
	je	.L437
	lock subl	$1, (%rdi)
	jne	.L437
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L442:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L498:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L436
	cmpl	$-1, %eax
	je	.L431
	lock subl	$1, (%rdi)
	jne	.L431
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L436:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L431
	.p2align 4,,10
	.p2align 3
.L497:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L430
	cmpl	$-1, %eax
	je	.L425
	lock subl	$1, (%rdi)
	jne	.L425
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L430:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L425
	.p2align 4,,10
	.p2align 3
.L490:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L412
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L491:
	movq	16(%rax), %rcx
	movq	%rax, %rdx
	cmpq	$24, %rcx
	jne	.L415
	jmp	.L459
	.p2align 4,,10
	.p2align 3
.L494:
	movq	16(%rax), %rcx
	movq	%rax, %rdx
	cmpq	$24, %rcx
	jne	.L418
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L496:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L424
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L492:
	movq	16(%rax), %rcx
	movq	%rax, %rdx
	cmpq	$24, %rcx
	jne	.L421
	jmp	.L461
.L501:
	call	__stack_chk_fail@PLT
.L466:
	movq	%rax, %rbx
.L457:
	movq	%r12, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	movq	%rbx, %rdi
.LEHB50:
	call	_Unwind_Resume@PLT
.LEHE50:
.L467:
	movq	%rax, %rbp
.L456:
	movq	%rbx, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
.L455:
	movq	%rbp, %rbx
	jmp	.L457
.L471:
.L450:
	testb	%r14b, %r14b
	movq	%rax, %rbx
	jne	.L502
.L453:
	cmpb	$0, 15(%rsp)
	movq	%rbx, %rbp
	leaq	64(%rsp), %rbx
	je	.L455
	jmp	.L456
.L468:
	movq	%rax, %rbx
.L454:
	movq	%r14, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L453
.L502:
	leaq	48(%rsp), %r14
	jmp	.L454
.L469:
.L451:
	movq	%r15, %rdi
	movq	%rax, 16(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	16(%rsp), %rax
	jmp	.L450
.L472:
	testb	%r13b, %r13b
	leaq	32(%rsp), %r15
	je	.L450
	jmp	.L451
.L470:
	movq	%rax, %rbx
	jmp	.L453
	.cfi_endproc
.LFE15375:
	.section	.gcc_except_table
.LLSDA15375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15375-.LLSDACSB15375
.LLSDACSB15375:
	.uleb128 .LEHB41-.LFB15375
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB15375
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L466-.LFB15375
	.uleb128 0
	.uleb128 .LEHB43-.LFB15375
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L470-.LFB15375
	.uleb128 0
	.uleb128 .LEHB44-.LFB15375
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L468-.LFB15375
	.uleb128 0
	.uleb128 .LEHB45-.LFB15375
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L466-.LFB15375
	.uleb128 0
	.uleb128 .LEHB46-.LFB15375
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L467-.LFB15375
	.uleb128 0
	.uleb128 .LEHB47-.LFB15375
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L471-.LFB15375
	.uleb128 0
	.uleb128 .LEHB48-.LFB15375
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L469-.LFB15375
	.uleb128 0
	.uleb128 .LEHB49-.LFB15375
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L472-.LFB15375
	.uleb128 0
	.uleb128 .LEHB50-.LFB15375
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE15375:
	.text
	.size	_ZN9pubnub_qt9set_stateERK7QStringS2_S2_S2_, .-_ZN9pubnub_qt9set_stateERK7QStringS2_S2_S2_
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
	.align 2
.LCOLDB21:
	.text
.LHOTB21:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt9state_getERK7QStringS2_S2_
	.type	_ZN9pubnub_qt9state_getERK7QStringS2_S2_, @function
_ZN9pubnub_qt9state_getERK7QStringS2_S2_:
.LFB15376:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15376
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	(%rcx), %rax
	movl	4(%rax), %esi
	testl	%esi, %esi
	jne	.L504
	movq	32(%rbx), %rax
	leaq	32(%rdi), %rdi
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L573
.L506:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB51:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE51:
	movq	32(%rbx), %rdx
	movq	16(%rdx), %rcx
.L543:
	leaq	(%rdx,%rcx), %rax
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	%rax, 8(%rsp)
	movq	(%r14), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	je	.L510
.L577:
	leaq	32(%rsp), %r13
	movq	%r14, %rsi
	movq	%r13, %rdi
.LEHB52:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE52:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L574
.L512:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB53:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE53:
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbp
.L545:
	movq	(%r12), %rax
	addq	%rdx, %rbp
	movl	$1, %r13d
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L575
.L549:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	jmp	.L513
	.p2align 4,,10
	.p2align 3
.L504:
	leaq	48(%rsp), %rbp
	movq	%rcx, %rsi
	movq	%rbp, %rdi
.LEHB54:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE54:
	movq	48(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L576
.L509:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%rbp, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB55:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE55:
	movq	48(%rsp), %rdx
	movq	16(%rdx), %rcx
.L544:
	leaq	(%rdx,%rcx), %rax
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movl	$1, %r15d
	movq	%rax, 8(%rsp)
	movq	(%r14), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	jne	.L577
.L510:
	movq	(%r12), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L549
.L575:
	leaq	16(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB56:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE56:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L578
.L515:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB57:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE57:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L546:
	addq	%rax, %rsi
	movl	$1, %r12d
.L513:
	movq	72(%rbx), %rdi
	movq	8(%rsp), %rcx
	movq	%rbp, %rdx
.LEHB58:
	call	pbcc_state_get_prep@PLT
	movl	$10, %edx
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE58:
	testb	%r12b, %r12b
	jne	.L579
.L516:
	testb	%r13b, %r13b
	jne	.L580
.L522:
	testb	%r15b, %r15b
	jne	.L581
.L528:
	movq	56(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L582
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L581:
	.cfi_restore_state
	movq	48(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L533
	cmpl	$-1, %edx
	je	.L528
	lock subl	$1, (%rdi)
	jne	.L528
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L533:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L528
	.p2align 4,,10
	.p2align 3
.L580:
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L527
	cmpl	$-1, %edx
	je	.L522
	lock subl	$1, (%rdi)
	jne	.L522
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L527:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L579:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L521
	cmpl	$-1, %edx
	je	.L516
	lock subl	$1, (%rdi)
	jne	.L516
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L521:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L516
	.p2align 4,,10
	.p2align 3
.L576:
	movq	16(%rax), %rcx
	movq	%rax, %rdx
	cmpq	$24, %rcx
	jne	.L509
	jmp	.L544
	.p2align 4,,10
	.p2align 3
.L573:
	movq	16(%rax), %rcx
	movq	%rax, %rdx
	cmpq	$24, %rcx
	jne	.L506
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L578:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L515
	jmp	.L546
	.p2align 4,,10
	.p2align 3
.L574:
	movq	16(%rax), %rbp
	movq	%rax, %rdx
	cmpq	$24, %rbp
	jne	.L512
	jmp	.L545
.L582:
	call	__stack_chk_fail@PLT
.L550:
	movq	%rax, %rbx
.L542:
	movq	%rbp, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
.L541:
	movq	%rbx, %rdi
.LEHB59:
	call	_Unwind_Resume@PLT
.LEHE59:
.L554:
.L536:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L583
.L539:
	testb	%r15b, %r15b
	leaq	48(%rsp), %rbp
	je	.L541
	jmp	.L542
.L552:
.L537:
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	8(%rsp), %rax
	jmp	.L536
.L555:
	testb	%r12b, %r12b
	leaq	16(%rsp), %r14
	je	.L536
	jmp	.L537
.L553:
	movq	%rax, %rbx
	jmp	.L539
.L551:
	movq	%rax, %rbx
.L540:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L539
.L583:
	leaq	32(%rsp), %r13
	jmp	.L540
	.cfi_endproc
.LFE15376:
	.section	.gcc_except_table
.LLSDA15376:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15376-.LLSDACSB15376
.LLSDACSB15376:
	.uleb128 .LEHB51-.LFB15376
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB15376
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L553-.LFB15376
	.uleb128 0
	.uleb128 .LEHB53-.LFB15376
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L551-.LFB15376
	.uleb128 0
	.uleb128 .LEHB54-.LFB15376
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB15376
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L550-.LFB15376
	.uleb128 0
	.uleb128 .LEHB56-.LFB15376
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L554-.LFB15376
	.uleb128 0
	.uleb128 .LEHB57-.LFB15376
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L552-.LFB15376
	.uleb128 0
	.uleb128 .LEHB58-.LFB15376
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L555-.LFB15376
	.uleb128 0
	.uleb128 .LEHB59-.LFB15376
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
.LLSDACSE15376:
	.text
	.size	_ZN9pubnub_qt9state_getERK7QStringS2_S2_, .-_ZN9pubnub_qt9state_getERK7QStringS2_S2_
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt20remove_channel_groupERK7QString
	.type	_ZN9pubnub_qt20remove_channel_groupERK7QString, @function
_ZN9pubnub_qt20remove_channel_groupERK7QString:
.LFB15377:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15377
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L599
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
.LEHB60:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE60:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L611
.L587:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%rbp, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB61:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE61:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L597:
	addq	%rax, %rsi
	movl	$1, %ebp
	jmp	.L585
	.p2align 4,,10
	.p2align 3
.L599:
	xorl	%ebp, %ebp
	xorl	%esi, %esi
.L585:
	movq	72(%rbx), %rdi
.LEHB62:
	call	pbcc_remove_channel_group_prep@PLT
	movl	$11, %edx
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE62:
	testb	%bpl, %bpl
	jne	.L612
.L588:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L613
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L612:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L593
	cmpl	$-1, %edx
	je	.L588
	lock subl	$1, (%rdi)
	jne	.L588
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L593:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 12(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	12(%rsp), %eax
	jmp	.L588
	.p2align 4,,10
	.p2align 3
.L611:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L587
	jmp	.L597
.L613:
	call	__stack_chk_fail@PLT
.L601:
	testb	%bpl, %bpl
	movq	%rax, %rbx
	jne	.L614
.L595:
	movq	%rbx, %rdi
.LEHB63:
	call	_Unwind_Resume@PLT
.LEHE63:
.L600:
	movq	%rax, %rbx
.L596:
	movq	%rbp, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L595
.L614:
	leaq	16(%rsp), %rbp
	jmp	.L596
	.cfi_endproc
.LFE15377:
	.section	.gcc_except_table
.LLSDA15377:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15377-.LLSDACSB15377
.LLSDACSB15377:
	.uleb128 .LEHB60-.LFB15377
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB15377
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L600-.LFB15377
	.uleb128 0
	.uleb128 .LEHB62-.LFB15377
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L601-.LFB15377
	.uleb128 0
	.uleb128 .LEHB63-.LFB15377
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
.LLSDACSE15377:
	.text
	.size	_ZN9pubnub_qt20remove_channel_groupERK7QString, .-_ZN9pubnub_qt20remove_channel_groupERK7QString
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.rodata.str1.1
.LC23:
	.string	"remove"
	.section	.text.unlikely
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt25remove_channel_from_groupERK7QStringS2_
	.type	_ZN9pubnub_qt25remove_channel_from_groupERK7QStringS2_, @function
_ZN9pubnub_qt25remove_channel_from_groupERK7QStringS2_:
.LFB15378:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15378
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	jne	.L663
.L616:
	movq	(%r12), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L644
	leaq	16(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB64:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE64:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L664
.L621:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB65:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE65:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L641:
	addq	%rax, %rsi
	movl	$1, %r12d
	jmp	.L619
	.p2align 4,,10
	.p2align 3
.L644:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
.L619:
	movq	72(%rbp), %rdi
	leaq	.LC23(%rip), %rdx
	movq	%rbx, %rcx
.LEHB66:
	call	pbcc_channel_registry_prep@PLT
	movl	$12, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE66:
	testb	%r12b, %r12b
	jne	.L665
.L622:
	testb	%r13b, %r13b
	jne	.L666
.L628:
	movq	40(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L667
	addq	$48, %rsp
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
.L666:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L633
	cmpl	$-1, %edx
	je	.L628
	lock subl	$1, (%rdi)
	jne	.L628
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L633:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L628
	.p2align 4,,10
	.p2align 3
.L665:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L627
	cmpl	$-1, %edx
	je	.L622
	lock subl	$1, (%rdi)
	jne	.L622
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L627:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L622
	.p2align 4,,10
	.p2align 3
.L663:
	leaq	32(%rsp), %r13
	movq	%r13, %rdi
.LEHB67:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE67:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L668
.L618:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB68:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE68:
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbx
.L640:
	addq	%rdx, %rbx
	movl	$1, %r13d
	jmp	.L616
	.p2align 4,,10
	.p2align 3
.L664:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L621
	jmp	.L641
	.p2align 4,,10
	.p2align 3
.L668:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L618
	jmp	.L640
.L667:
	call	__stack_chk_fail@PLT
.L648:
	testb	%r12b, %r12b
	leaq	16(%rsp), %r14
	jne	.L637
.L636:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L669
.L638:
	movq	%rbx, %rdi
.LEHB69:
	call	_Unwind_Resume@PLT
.LEHE69:
.L646:
.L637:
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	8(%rsp), %rax
	jmp	.L636
.L669:
	leaq	32(%rsp), %r13
.L639:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L638
.L647:
	jmp	.L636
.L645:
	movq	%rax, %rbx
	jmp	.L639
	.cfi_endproc
.LFE15378:
	.section	.gcc_except_table
.LLSDA15378:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15378-.LLSDACSB15378
.LLSDACSB15378:
	.uleb128 .LEHB64-.LFB15378
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L647-.LFB15378
	.uleb128 0
	.uleb128 .LEHB65-.LFB15378
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L646-.LFB15378
	.uleb128 0
	.uleb128 .LEHB66-.LFB15378
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L648-.LFB15378
	.uleb128 0
	.uleb128 .LEHB67-.LFB15378
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB15378
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L645-.LFB15378
	.uleb128 0
	.uleb128 .LEHB69-.LFB15378
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
.LLSDACSE15378:
	.text
	.size	_ZN9pubnub_qt25remove_channel_from_groupERK7QStringS2_, .-_ZN9pubnub_qt25remove_channel_from_groupERK7QStringS2_
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.rodata.str1.1
.LC25:
	.string	"add"
	.section	.text.unlikely
	.align 2
.LCOLDB26:
	.text
.LHOTB26:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt20add_channel_to_groupERK7QStringS2_
	.type	_ZN9pubnub_qt20add_channel_to_groupERK7QStringS2_, @function
_ZN9pubnub_qt20add_channel_to_groupERK7QStringS2_:
.LFB15379:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15379
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	jne	.L718
.L671:
	movq	(%r12), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L699
	leaq	16(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB70:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE70:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L719
.L676:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB71:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE71:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L696:
	addq	%rax, %rsi
	movl	$1, %r12d
	jmp	.L674
	.p2align 4,,10
	.p2align 3
.L699:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
.L674:
	movq	72(%rbp), %rdi
	leaq	.LC25(%rip), %rdx
	movq	%rbx, %rcx
.LEHB72:
	call	pbcc_channel_registry_prep@PLT
	movl	$13, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE72:
	testb	%r12b, %r12b
	jne	.L720
.L677:
	testb	%r13b, %r13b
	jne	.L721
.L683:
	movq	40(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L722
	addq	$48, %rsp
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
.L721:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L688
	cmpl	$-1, %edx
	je	.L683
	lock subl	$1, (%rdi)
	jne	.L683
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L688:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L683
	.p2align 4,,10
	.p2align 3
.L720:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L682
	cmpl	$-1, %edx
	je	.L677
	lock subl	$1, (%rdi)
	jne	.L677
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L682:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	8(%rsp), %eax
	jmp	.L677
	.p2align 4,,10
	.p2align 3
.L718:
	leaq	32(%rsp), %r13
	movq	%r13, %rdi
.LEHB73:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE73:
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L723
.L673:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB74:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE74:
	movq	32(%rsp), %rdx
	movq	16(%rdx), %rbx
.L695:
	addq	%rdx, %rbx
	movl	$1, %r13d
	jmp	.L671
	.p2align 4,,10
	.p2align 3
.L719:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L676
	jmp	.L696
	.p2align 4,,10
	.p2align 3
.L723:
	movq	16(%rax), %rbx
	movq	%rax, %rdx
	cmpq	$24, %rbx
	jne	.L673
	jmp	.L695
.L722:
	call	__stack_chk_fail@PLT
.L703:
	testb	%r12b, %r12b
	leaq	16(%rsp), %r14
	jne	.L692
.L691:
	testb	%r13b, %r13b
	movq	%rax, %rbx
	jne	.L724
.L693:
	movq	%rbx, %rdi
.LEHB75:
	call	_Unwind_Resume@PLT
.LEHE75:
.L701:
.L692:
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN10QByteArrayD1Ev@PLT
	movq	8(%rsp), %rax
	jmp	.L691
.L724:
	leaq	32(%rsp), %r13
.L694:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L693
.L702:
	jmp	.L691
.L700:
	movq	%rax, %rbx
	jmp	.L694
	.cfi_endproc
.LFE15379:
	.section	.gcc_except_table
.LLSDA15379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15379-.LLSDACSB15379
.LLSDACSB15379:
	.uleb128 .LEHB70-.LFB15379
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L702-.LFB15379
	.uleb128 0
	.uleb128 .LEHB71-.LFB15379
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L701-.LFB15379
	.uleb128 0
	.uleb128 .LEHB72-.LFB15379
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L703-.LFB15379
	.uleb128 0
	.uleb128 .LEHB73-.LFB15379
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB15379
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L700-.LFB15379
	.uleb128 0
	.uleb128 .LEHB75-.LFB15379
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE15379:
	.text
	.size	_ZN9pubnub_qt20add_channel_to_groupERK7QStringS2_, .-_ZN9pubnub_qt20add_channel_to_groupERK7QStringS2_
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
	.align 2
.LCOLDB27:
	.text
.LHOTB27:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt18list_channel_groupERK7QString
	.type	_ZN9pubnub_qt18list_channel_groupERK7QString, @function
_ZN9pubnub_qt18list_channel_groupERK7QString:
.LFB15380:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15380
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L740
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
.LEHB76:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE76:
	movq	16(%rsp), %rcx
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L752
.L728:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%rbp, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB77:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
.LEHE77:
	movq	16(%rsp), %rsi
	movq	16(%rsi), %rax
.L738:
	addq	%rax, %rsi
	movl	$1, %ebp
	jmp	.L726
	.p2align 4,,10
	.p2align 3
.L740:
	xorl	%ebp, %ebp
	xorl	%esi, %esi
.L726:
	movq	72(%rbx), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LEHB78:
	call	pbcc_channel_registry_prep@PLT
	movl	$14, %edx
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN9pubnub_qt12startRequestE10pubnub_res12pubnub_trans@PLT
.LEHE78:
	testb	%bpl, %bpl
	jne	.L753
.L729:
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L754
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L753:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L734
	cmpl	$-1, %edx
	je	.L729
	lock subl	$1, (%rdi)
	jne	.L729
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L734:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 12(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	12(%rsp), %eax
	jmp	.L729
	.p2align 4,,10
	.p2align 3
.L752:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L728
	jmp	.L738
.L754:
	call	__stack_chk_fail@PLT
.L742:
	testb	%bpl, %bpl
	movq	%rax, %rbx
	jne	.L755
.L736:
	movq	%rbx, %rdi
.LEHB79:
	call	_Unwind_Resume@PLT
.LEHE79:
.L741:
	movq	%rax, %rbx
.L737:
	movq	%rbp, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L736
.L755:
	leaq	16(%rsp), %rbp
	jmp	.L737
	.cfi_endproc
.LFE15380:
	.section	.gcc_except_table
.LLSDA15380:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15380-.LLSDACSB15380
.LLSDACSB15380:
	.uleb128 .LEHB76-.LFB15380
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB15380
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L741-.LFB15380
	.uleb128 0
	.uleb128 .LEHB78-.LFB15380
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L742-.LFB15380
	.uleb128 0
	.uleb128 .LEHB79-.LFB15380
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE15380:
	.text
	.size	_ZN9pubnub_qt18list_channel_groupERK7QString, .-_ZN9pubnub_qt18list_channel_groupERK7QString
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.text.unlikely
	.align 2
.LCOLDB28:
	.text
.LHOTB28:
	.align 2
	.p2align 4,,15
	.globl	_ZNK9pubnub_qt14last_http_codeEv
	.type	_ZNK9pubnub_qt14last_http_codeEv, @function
_ZNK9pubnub_qt14last_http_codeEv:
.LFB15381:
	.cfi_startproc
	movl	84(%rdi), %eax
	ret
	.cfi_endproc
.LFE15381:
	.size	_ZNK9pubnub_qt14last_http_codeEv, .-_ZNK9pubnub_qt14last_http_codeEv
	.section	.text.unlikely
.LCOLDE28:
	.text
.LHOTE28:
	.section	.rodata.str1.1
.LC29:
	.string	""
	.section	.text.unlikely
	.align 2
.LCOLDB30:
	.text
.LHOTB30:
	.align 2
	.p2align 4,,15
	.globl	_ZNK9pubnub_qt19last_publish_resultEv
	.type	_ZNK9pubnub_qt19last_publish_resultEv, @function
_ZNK9pubnub_qt19last_publish_resultEv:
.LFB15382:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	72(%rsi), %rax
	movq	1088(%rax), %rdi
	testq	%rdi, %rdi
	je	.L760
	cmpl	$2, 80(%rsi)
	je	.L768
.L760:
	leaq	.LC29(%rip), %rdi
	xorl	%esi, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	%rax, (%rbx)
.L757:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbx, %rax
	jne	.L769
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L768:
	.cfi_restore_state
	cmpb	$0, (%rdi)
	je	.L760
	movq	%rsp, %rsi
	addq	$1, %rdi
	movl	$10, %edx
	call	strtol@PLT
	movq	(%rsp), %rbp
	movl	$-1, %esi
	addq	$1, %rbp
	je	.L763
	movq	%rbp, %rdi
	call	strlen@PLT
	movl	%eax, %esi
.L763:
	movq	%rbp, %rdi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	%rax, (%rbx)
	jmp	.L757
.L769:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15382:
	.size	_ZNK9pubnub_qt19last_publish_resultEv, .-_ZNK9pubnub_qt19last_publish_resultEv
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
	.align 2
.LCOLDB31:
	.text
.LHOTB31:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt25parse_last_publish_resultEv
	.type	_ZN9pubnub_qt25parse_last_publish_resultEv, @function
_ZN9pubnub_qt25parse_last_publish_resultEv:
.LFB15383:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15383
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	leaq	16(%rsp), %rbp
	movq	%rsp, %rdi
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB80:
	call	_ZNK9pubnub_qt19last_publish_resultEv@PLT
.LEHE80:
	movq	%rsp, %rsi
	movq	%rbp, %rdi
.LEHB81:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE81:
	movq	16(%rsp), %rdi
	addq	16(%rdi), %rdi
.LEHB82:
	call	pubnub_parse_publish_result@PLT
.LEHE82:
	movq	16(%rsp), %rdi
	movl	%eax, %ebx
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L775
	cmpl	$-1, %edx
	je	.L772
	lock subl	$1, (%rdi)
	je	.L789
.L772:
	movq	(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L780
	cmpl	$-1, %edx
	je	.L777
	lock subl	$1, (%rdi)
	je	.L790
.L777:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L791
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
.L790:
	.cfi_restore_state
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L780:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L777
.L789:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L775:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L772
.L791:
	call	__stack_chk_fail@PLT
.L785:
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN10QByteArrayD1Ev@PLT
.L782:
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rdi
.LEHB83:
	call	_Unwind_Resume@PLT
.LEHE83:
.L784:
	movq	%rax, %rbp
	jmp	.L782
	.cfi_endproc
.LFE15383:
	.section	.gcc_except_table
.LLSDA15383:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15383-.LLSDACSB15383
.LLSDACSB15383:
	.uleb128 .LEHB80-.LFB15383
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB15383
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L784-.LFB15383
	.uleb128 0
	.uleb128 .LEHB82-.LFB15383
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L785-.LFB15383
	.uleb128 0
	.uleb128 .LEHB83-.LFB15383
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
.LLSDACSE15383:
	.text
	.size	_ZN9pubnub_qt25parse_last_publish_resultEv, .-_ZN9pubnub_qt25parse_last_publish_resultEv
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
	.align 2
.LCOLDB32:
	.text
.LHOTB32:
	.align 2
	.p2align 4,,15
	.globl	_ZNK9pubnub_qt15last_time_tokenEv
	.type	_ZNK9pubnub_qt15last_time_tokenEv, @function
_ZNK9pubnub_qt15last_time_tokenEv:
.LFB15384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	72(%rsi), %rdi
	movl	$-1, %esi
	movq	%rdi, %rbx
	addq	$32, %rbx
	je	.L793
	movq	%rbx, %rdi
	call	strlen@PLT
	movl	%eax, %esi
.L793:
	movq	%rbx, %rdi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	%rax, 0(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15384:
	.size	_ZNK9pubnub_qt15last_time_tokenEv, .-_ZNK9pubnub_qt15last_time_tokenEv
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.rodata.str1.1
.LC33:
	.string	"http:"
.LC34:
	.string	"https:"
	.section	.text.unlikely
	.align 2
.LCOLDB35:
	.text
.LHOTB35:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE
	.type	_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE, @function
_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE:
.LFB15385:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15385
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
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	andl	$1, %esi
	je	.L799
	leaq	.LC33(%rip), %rdi
	leaq	88(%rbx), %r13
	movl	$5, %esi
	movq	%rsp, %r12
.LEHB84:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE84:
	movl	$1, %edx
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
.LEHB85:
	call	_ZNK7QString10startsWithERKS_N2Qt15CaseSensitivityE@PLT
.LEHE85:
	movq	(%rsp), %rdi
	movl	%eax, %r14d
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L804
	cmpl	$-1, %edx
	je	.L801
	lock subl	$1, (%rdi)
	je	.L845
.L801:
	testb	%r14b, %r14b
	jne	.L846
	.p2align 4,,10
	.p2align 3
.L806:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	movl	%ebp, 96(%rbx)
	jne	.L847
	addq	$16, %rsp
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
.L799:
	.cfi_restore_state
	leaq	.LC34(%rip), %rdi
	leaq	88(%rbx), %r13
	movl	$6, %esi
	movq	%rsp, %r12
.LEHB86:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE86:
	movl	$1, %edx
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
.LEHB87:
	call	_ZNK7QString10startsWithERKS_N2Qt15CaseSensitivityE@PLT
.LEHE87:
	movq	(%rsp), %rdi
	movl	%eax, %r14d
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L816
	cmpl	$-1, %edx
	je	.L813
	lock subl	$1, (%rdi)
	je	.L848
.L813:
	testb	%r14b, %r14b
	je	.L806
.L849:
	leaq	.LC33(%rip), %rdi
	movl	$5, %esi
.LEHB88:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE88:
	movq	%r12, %rcx
	movl	$6, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
.LEHB89:
	call	_ZN7QString7replaceEiiRKS_@PLT
.LEHE89:
.L843:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L822
	cmpl	$-1, %eax
	je	.L806
	lock subl	$1, (%rdi)
	jne	.L806
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L822:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L806
.L848:
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L816:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	testb	%r14b, %r14b
	je	.L806
	jmp	.L849
.L845:
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L804:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	testb	%r14b, %r14b
	je	.L806
.L846:
	leaq	.LC34(%rip), %rdi
	movl	$6, %esi
.LEHB90:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE90:
	movq	%r12, %rcx
	movl	$5, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
.LEHB91:
	call	_ZN7QString7replaceEiiRKS_@PLT
.LEHE91:
	jmp	.L843
.L847:
	call	__stack_chk_fail@PLT
.L829:
.L837:
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
.LEHB92:
	call	_Unwind_Resume@PLT
.LEHE92:
.L831:
	jmp	.L837
.L828:
	jmp	.L837
.L830:
	jmp	.L837
	.cfi_endproc
.LFE15385:
	.section	.gcc_except_table
.LLSDA15385:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15385-.LLSDACSB15385
.LLSDACSB15385:
	.uleb128 .LEHB84-.LFB15385
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LFB15385
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L828-.LFB15385
	.uleb128 0
	.uleb128 .LEHB86-.LFB15385
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB15385
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L830-.LFB15385
	.uleb128 0
	.uleb128 .LEHB88-.LFB15385
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB15385
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L831-.LFB15385
	.uleb128 0
	.uleb128 .LEHB90-.LFB15385
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB15385
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L829-.LFB15385
	.uleb128 0
	.uleb128 .LEHB92-.LFB15385
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE15385:
	.text
	.size	_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE, .-_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE
	.section	.text.unlikely
.LCOLDE35:
	.text
.LHOTE35:
	.section	.rodata.str1.1
.LC36:
	.string	"http://"
	.section	.text.unlikely
	.align 2
.LCOLDB37:
	.text
.LHOTB37:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt10set_originERK7QString
	.type	_ZN9pubnub_qt10set_originERK7QString, @function
_ZN9pubnub_qt10set_originERK7QString:
.LFB15388:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15388
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	88(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	movq	%r13, %rdi
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	_ZN7QStringaSERKS_@PLT
	leaq	.LC33(%rip), %rdi
	movl	$5, %esi
.LEHB93:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE93:
	movq	%rsp, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
.LEHB94:
	call	_ZNK7QString10startsWithERKS_N2Qt15CaseSensitivityE@PLT
.LEHE94:
	xorl	%ebp, %ebp
	testb	%al, %al
	je	.L897
.L854:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L868
	cmpl	$-1, %eax
	je	.L865
	lock subl	$1, (%rdi)
	je	.L898
.L865:
	testb	%bpl, %bpl
	jne	.L899
.L850:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L900
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L898:
	.cfi_restore_state
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L868:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	testb	%bpl, %bpl
	je	.L850
.L899:
	leaq	16(%rsp), %rbp
	leaq	.LC36(%rip), %rsi
	movl	$7, %edx
	movq	%rbp, %rdi
.LEHB95:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE95:
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movl	4(%rdx), %ecx
	addq	16(%rdx), %rdx
.LEHB96:
	call	_ZN7QString6insertEiPK5QChari@PLT
.LEHE96:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L874
	cmpl	$-1, %eax
	je	.L871
	lock subl	$1, (%rdi)
	je	.L901
.L871:
	movl	96(%r12), %esi
	movq	%r12, %rdi
.LEHB97:
	call	_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE@PLT
.LEHE97:
	jmp	.L850
	.p2align 4,,10
	.p2align 3
.L897:
	leaq	.LC34(%rip), %rdi
	movl	$6, %esi
.LEHB98:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE98:
	leaq	16(%rsp), %rbp
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, 16(%rsp)
	movq	%rbp, %rsi
.LEHB99:
	call	_ZNK7QString10startsWithERKS_N2Qt15CaseSensitivityE@PLT
.LEHE99:
	movq	16(%rsp), %rdi
	xorl	$1, %eax
	movl	%eax, %ebp
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L863
	cmpl	$-1, %eax
	je	.L854
	lock subl	$1, (%rdi)
	jne	.L854
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L863:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L854
.L901:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L874:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	96(%r12), %esi
	movq	%r12, %rdi
.LEHB100:
	call	_ZN9pubnub_qt15set_ssl_optionsE6QFlagsINS_7ssl_optEE@PLT
	jmp	.L850
.L900:
	call	__stack_chk_fail@PLT
.L882:
	movq	%rax, %rbx
.L877:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L883:
.L894:
	movq	%rax, %rbx
.L892:
	movq	%rsp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L877
.L881:
	movq	%rax, %rbx
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE100:
.L880:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L892
.L884:
	jmp	.L894
	.cfi_endproc
.LFE15388:
	.section	.gcc_except_table
.LLSDA15388:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15388-.LLSDACSB15388
.LLSDACSB15388:
	.uleb128 .LEHB93-.LFB15388
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L882-.LFB15388
	.uleb128 0
	.uleb128 .LEHB94-.LFB15388
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L883-.LFB15388
	.uleb128 0
	.uleb128 .LEHB95-.LFB15388
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB96-.LFB15388
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L881-.LFB15388
	.uleb128 0
	.uleb128 .LEHB97-.LFB15388
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB15388
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L884-.LFB15388
	.uleb128 0
	.uleb128 .LEHB99-.LFB15388
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L880-.LFB15388
	.uleb128 0
	.uleb128 .LEHB100-.LFB15388
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
.LLSDACSE15388:
	.text
	.size	_ZN9pubnub_qt10set_originERK7QString, .-_ZN9pubnub_qt10set_originERK7QString
	.section	.text.unlikely
.LCOLDE37:
	.text
.LHOTE37:
	.section	.rodata.str1.1
.LC38:
	.string	"default"
.LC39:
	.string	"finish('"
.LC40:
	.string	"')"
	.section	.text.unlikely
	.align 2
.LCOLDB41:
	.text
.LHOTB41:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt6finishERK10QByteArrayi
	.type	_ZN9pubnub_qt6finishERK10QByteArrayi, @function
_ZN9pubnub_qt6finishERK10QByteArrayi:
.LFB15389:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15389
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	72(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	leaq	64(%rsp), %r13
	leaq	16(%rsp), %r15
	movq	%rsp, %r14
	movl	4(%rax), %esi
.LEHB101:
	call	pbcc_realloc_reply_buffer@PLT
	movq	0(%rbp), %rsi
	movq	72(%rbx), %rax
	movslq	4(%rsi), %rdx
	addq	16(%rsi), %rsi
	movq	1088(%rax), %rdi
	call	memcpy@PLT
	movq	0(%rbp), %rax
	movq	72(%rbx), %rdx
	movq	%r13, %rsi
	movq	%rsp, %rdi
	movslq	4(%rax), %rax
	movl	%eax, 1080(%rdx)
	movq	1088(%rdx), %rdx
	movb	$0, (%rdx,%rax)
	movq	72(%rbx), %rax
	movq	1088(%rax), %rbp
	leaq	.LC38(%rip), %rax
	movl	$2, 64(%rsp)
	movl	$0, 68(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	%rax, 88(%rsp)
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE101:
	leaq	.LC39(%rip), %rsi
	movl	$8, %edx
	movq	%r15, %rdi
.LEHB102:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE102:
	movq	(%rsp), %rdi
	movq	%r15, %rsi
.LEHB103:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE103:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L907
	cmpl	$-1, %eax
	je	.L904
	lock subl	$1, (%rdi)
	je	.L973
.L904:
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L908
.L911:
	testq	%rbp, %rbp
	movl	$-1, %edx
	je	.L910
	movq	%rbp, %rdi
	call	strlen@PLT
	movl	%eax, %edx
.L910:
	leaq	32(%rsp), %r15
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB104:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE104:
	movq	(%rsp), %rdi
	movq	%r15, %rsi
.LEHB105:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE105:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L918
	cmpl	$-1, %eax
	je	.L915
	lock subl	$1, (%rdi)
	je	.L974
.L915:
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L919
.L921:
	leaq	48(%rsp), %rbp
	leaq	.LC40(%rip), %rsi
	movl	$2, %edx
	movq	%rbp, %rdi
.LEHB106:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE106:
	movq	(%rsp), %rdi
	movq	%rbp, %rsi
.LEHB107:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE107:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L927
	cmpl	$-1, %eax
	je	.L924
	lock subl	$1, (%rdi)
	je	.L975
.L924:
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L928
.L937:
	movq	%r14, %rdi
	call	_ZN6QDebugD1Ev@PLT
	cmpl	$14, 80(%rbx)
	ja	.L947
	movl	80(%rbx), %edx
	leaq	.L931(%rip), %rax
	movslq	(%rax,%rdx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L931:
	.long	.L947-.L931
	.long	.L930-.L931
	.long	.L932-.L931
	.long	.L933-.L931
	.long	.L934-.L931
	.long	.L935-.L931
	.long	.L933-.L931
	.long	.L933-.L931
	.long	.L933-.L931
	.long	.L933-.L931
	.long	.L933-.L931
	.long	.L936-.L931
	.long	.L936-.L931
	.long	.L936-.L931
	.long	.L936-.L931
	.text
	.p2align 4,,10
	.p2align 3
.L935:
	movq	72(%rbx), %rdi
.LEHB108:
	call	pbcc_parse_history_response@PLT
	testl	%eax, %eax
	jne	.L939
	.p2align 4,,10
	.p2align 3
.L947:
	xorl	%ebp, %ebp
.L929:
	movq	64(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	_ZNK13QNetworkReply9attributeEN15QNetworkRequest9AttributeE@PLT
.LEHE108:
	movl	72(%rsp), %eax
	andl	$1073741823, %eax
	jne	.L944
.L941:
	testl	%ebp, %ebp
	movl	%eax, 84(%rbx)
	jne	.L948
	testl	%r12d, %r12d
	je	.L948
	subl	$200, %r12d
	cmpl	$100, %r12d
	sbbl	%ebx, %ebx
	notl	%ebx
	andl	$7, %ebx
.L942:
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L976
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L973:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L907:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L911
.L908:
	movl	$32, %esi
.LEHB109:
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L911
.L975:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L927:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L937
.L928:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L937
.L974:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L918:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L921
.L919:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.LEHE109:
	jmp	.L921
	.p2align 4,,10
	.p2align 3
.L948:
	movl	%ebp, %ebx
	jmp	.L942
	.p2align 4,,10
	.p2align 3
.L977:
	movl	$8, %ebp
.L944:
	xorl	%esi, %esi
	movq	%r13, %rdi
.LEHB110:
	call	_ZNK8QVariant5toIntEPb@PLT
.LEHE110:
	jmp	.L941
	.p2align 4,,10
	.p2align 3
.L936:
	movq	72(%rbx), %rdi
.LEHB111:
	call	pbcc_parse_channel_registry_response@PLT
	movl	%eax, %ebp
	jmp	.L929
	.p2align 4,,10
	.p2align 3
.L930:
	movq	72(%rbx), %rdi
	call	pbcc_parse_subscribe_response@PLT
	testl	%eax, %eax
	je	.L947
.L939:
	movq	64(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	_ZNK13QNetworkReply9attributeEN15QNetworkRequest9AttributeE@PLT
	testl	$1073741823, 72(%rsp)
	jne	.L977
	movl	$0, 84(%rbx)
	movl	$8, %ebx
	jmp	.L942
	.p2align 4,,10
	.p2align 3
.L932:
	movq	72(%rbx), %rdi
	call	pbcc_parse_publish_response@PLT
	movl	%eax, %ebp
	jmp	.L929
	.p2align 4,,10
	.p2align 3
.L934:
	movq	72(%rbx), %rdi
	call	pbcc_parse_time_response@PLT
	testl	%eax, %eax
	jne	.L939
	jmp	.L947
	.p2align 4,,10
	.p2align 3
.L933:
	movq	72(%rbx), %rdi
	call	pbcc_parse_presence_response@PLT
	testl	%eax, %eax
	jne	.L939
	jmp	.L947
.L976:
	call	__stack_chk_fail@PLT
.L952:
	movq	%rax, %rbx
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L954:
.L969:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L913:
	movq	%r14, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE111:
.L955:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L913
.L953:
	jmp	.L969
.L951:
	movq	%rax, %rbx
	jmp	.L913
	.cfi_endproc
.LFE15389:
	.section	.gcc_except_table
.LLSDA15389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15389-.LLSDACSB15389
.LLSDACSB15389:
	.uleb128 .LEHB101-.LFB15389
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB15389
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L951-.LFB15389
	.uleb128 0
	.uleb128 .LEHB103-.LFB15389
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L953-.LFB15389
	.uleb128 0
	.uleb128 .LEHB104-.LFB15389
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L951-.LFB15389
	.uleb128 0
	.uleb128 .LEHB105-.LFB15389
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L954-.LFB15389
	.uleb128 0
	.uleb128 .LEHB106-.LFB15389
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L951-.LFB15389
	.uleb128 0
	.uleb128 .LEHB107-.LFB15389
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L955-.LFB15389
	.uleb128 0
	.uleb128 .LEHB108-.LFB15389
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB15389
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L951-.LFB15389
	.uleb128 0
	.uleb128 .LEHB110-.LFB15389
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L952-.LFB15389
	.uleb128 0
	.uleb128 .LEHB111-.LFB15389
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
.LLSDACSE15389:
	.text
	.size	_ZN9pubnub_qt6finishERK10QByteArrayi, .-_ZN9pubnub_qt6finishERK10QByteArrayi
	.section	.text.unlikely
.LCOLDE41:
	.text
.LHOTE41:
	.section	.text.unlikely
	.align 2
.LCOLDB42:
	.text
.LHOTB42:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt18transactionTimeoutEv
	.type	_ZN9pubnub_qt18transactionTimeoutEv, @function
_ZN9pubnub_qt18transactionTimeoutEv:
.LFB15390:
	.cfi_startproc
	movq	64(%rdi), %rax
	testq	%rax, %rax
	je	.L980
	movq	(%rax), %rdx
	movb	$1, 104(%rdi)
	movq	%rax, %rdi
	movq	232(%rdx), %rdx
	jmp	*%rdx
	.p2align 4,,10
	.p2align 3
.L980:
	rep ret
	.cfi_endproc
.LFE15390:
	.size	_ZN9pubnub_qt18transactionTimeoutEv, .-_ZN9pubnub_qt18transactionTimeoutEv
	.section	.text.unlikely
.LCOLDE42:
	.text
.LHOTE42:
	.section	.rodata.str1.1
.LC43:
	.string	"error: "
.LC44:
	.string	"NetworkError"
.LC45:
	.string	", string: "
	.section	.text.unlikely
	.align 2
.LCOLDB46:
	.text
.LHOTB46:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt12httpFinishedEv
	.type	_ZN9pubnub_qt12httpFinishedEv, @function
_ZN9pubnub_qt12httpFinishedEv:
.LFB15391:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15391
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	112(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	leaq	96(%rsp), %r12
.LEHB112:
	call	_ZN6QTimer4stopEv@PLT
	movq	64(%rbx), %rdi
	call	_ZNK13QNetworkReply5errorEv@PLT
	testl	%eax, %eax
	je	.L982
	movl	%eax, %ebp
	movq	64(%rbx), %rsi
	leaq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	_ZNK9QIODevice11errorStringEv@PLT
.LEHE112:
	movq	64(%rbx), %rdi
.LEHB113:
	call	_ZNK13QNetworkReply5errorEv@PLT
	leaq	96(%rsp), %r12
	movl	%eax, %r15d
	leaq	16(%rsp), %rdi
	leaq	.LC38(%rip), %rax
	movl	$2, 96(%rsp)
	movl	$0, 100(%rsp)
	movq	%r12, %rsi
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	%rax, 120(%rsp)
	movq	%rdi, (%rsp)
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE113:
	leaq	64(%rsp), %r13
	leaq	.LC43(%rip), %rsi
	movl	$7, %edx
	movq	%r13, %rdi
.LEHB114:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE114:
	movq	16(%rsp), %rdi
	movq	%r13, %rsi
.LEHB115:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE115:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L987
	cmpl	$-1, %eax
	je	.L984
	lock subl	$1, (%rdi)
	je	.L1050
.L984:
	movq	16(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L1051
.L988:
	movq	%rdi, 64(%rsp)
	addl	$1, 24(%rdi)
	leaq	32(%rsp), %r14
	movq	_ZN13QNetworkReply16staticMetaObjectE@GOTPCREL(%rip), %rcx
	leaq	.LC44(%rip), %r8
	movl	%r15d, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB116:
	call	_Z26qt_QMetaEnum_debugOperatorR6QDebugiPK11QMetaObjectPKc@PLT
.LEHE116:
	leaq	80(%rsp), %r15
	leaq	.LC45(%rip), %rsi
	movl	$10, %edx
	movq	%r15, %rdi
.LEHB117:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE117:
	movq	32(%rsp), %rdi
	movq	%r15, %rsi
.LEHB118:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE118:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L996
	cmpl	$-1, %eax
	je	.L993
	lock subl	$1, (%rdi)
	je	.L1052
.L993:
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L997
.L999:
	movq	48(%rsp), %rsi
	movq	%r14, %rdi
	movl	4(%rsi), %edx
	addq	16(%rsi), %rsi
.LEHB119:
	call	_ZN6QDebug9putStringEPK5QCharm@PLT
.LEHE119:
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L1002
.L1005:
	movq	%r14, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	%r13, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	(%rsp), %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1003
	cmpl	$-1, %eax
	je	.L1006
	lock subl	$1, (%rdi)
	je	.L1053
.L1006:
	movq	72(%rbx), %rax
	cmpl	$4, %ebp
	movl	$0, 1080(%rax)
	movq	$0, 1088(%rax)
	je	.L1009
	ja	.L1010
	cmpl	$1, %ebp
	je	.L1011
	cmpl	$3, %ebp
	jne	.L982
	movl	$1, %esi
	movq	%rbx, %rdi
.LEHB120:
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
	jmp	.L981
	.p2align 4,,10
	.p2align 3
.L982:
	movq	64(%rbx), %rdi
	call	_ZNK13QNetworkReply5errorEv@PLT
	movq	64(%rbx), %rsi
	movl	%eax, %ebp
	movq	%r12, %rdi
	call	_ZN9QIODevice7readAllEv@PLT
.LEHE120:
	movl	%ebp, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
.LEHB121:
	call	_ZN9pubnub_qt6finishERK10QByteArrayi@PLT
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
.LEHE121:
	movq	96(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1020
	cmpl	$-1, %eax
	je	.L981
	lock subl	$1, (%rdi)
	je	.L1054
.L981:
	movq	136(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1055
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1054:
	.cfi_restore_state
	movq	96(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1020:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L981
	.p2align 4,,10
	.p2align 3
.L1010:
	cmpl	$5, %ebp
	jne	.L1056
	cmpb	$0, 104(%rbx)
	je	.L1014
	movl	$4, %esi
	movq	%rbx, %rdi
.LEHB122:
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
.LEHE122:
	jmp	.L981
.L1050:
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L987:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	16(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L988
.L1051:
	movl	$32, %esi
.LEHB123:
	call	_ZN11QTextStreamlsEc@PLT
.LEHE123:
	movq	16(%rsp), %rdi
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L1056:
	cmpl	$301, %ebp
	jne	.L982
.L1011:
	movl	$2, %esi
	movq	%rbx, %rdi
.LEHB124:
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
.LEHE124:
	jmp	.L981
.L1052:
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L996:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L999
.L997:
	movl	$32, %esi
.LEHB125:
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L999
.L1053:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1003:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1006
	.p2align 4,,10
	.p2align 3
.L1002:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.LEHE125:
	jmp	.L1005
	.p2align 4,,10
	.p2align 3
.L1009:
	movl	$3, %esi
	movq	%rbx, %rdi
.LEHB126:
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
	jmp	.L981
	.p2align 4,,10
	.p2align 3
.L1014:
	movl	$9, %esi
	movq	%rbx, %rdi
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
	jmp	.L981
.L1055:
	call	__stack_chk_fail@PLT
.L1029:
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L1026:
	movq	%rax, %rbx
.L991:
	movq	(%rsp), %rdi
	call	_ZN6QDebugD1Ev@PLT
.L1022:
	movq	8(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE126:
.L1025:
	movq	%rax, %rbx
	jmp	.L1022
.L1028:
	movq	%rax, %rbx
.L1001:
	movq	%r14, %rdi
	call	_ZN6QDebugD1Ev@PLT
.L1021:
	movq	%r13, %rdi
	call	_ZN6QDebugD1Ev@PLT
	jmp	.L991
.L1031:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L1001
.L1027:
	movq	%rax, %rbx
	jmp	.L1021
.L1030:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L991
	.cfi_endproc
.LFE15391:
	.section	.gcc_except_table
.LLSDA15391:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15391-.LLSDACSB15391
.LLSDACSB15391:
	.uleb128 .LEHB112-.LFB15391
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB15391
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1025-.LFB15391
	.uleb128 0
	.uleb128 .LEHB114-.LFB15391
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1026-.LFB15391
	.uleb128 0
	.uleb128 .LEHB115-.LFB15391
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1030-.LFB15391
	.uleb128 0
	.uleb128 .LEHB116-.LFB15391
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1027-.LFB15391
	.uleb128 0
	.uleb128 .LEHB117-.LFB15391
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1028-.LFB15391
	.uleb128 0
	.uleb128 .LEHB118-.LFB15391
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1031-.LFB15391
	.uleb128 0
	.uleb128 .LEHB119-.LFB15391
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1028-.LFB15391
	.uleb128 0
	.uleb128 .LEHB120-.LFB15391
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB15391
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1029-.LFB15391
	.uleb128 0
	.uleb128 .LEHB122-.LFB15391
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB15391
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1026-.LFB15391
	.uleb128 0
	.uleb128 .LEHB124-.LFB15391
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB15391
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1028-.LFB15391
	.uleb128 0
	.uleb128 .LEHB126-.LFB15391
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
.LLSDACSE15391:
	.text
	.size	_ZN9pubnub_qt12httpFinishedEv, .-_ZN9pubnub_qt12httpFinishedEv
	.section	.text.unlikely
.LCOLDE46:
	.text
.LHOTE46:
	.section	.rodata.str1.1
.LC47:
	.string	"Qt5"
	.section	.text.unlikely
.LCOLDB48:
	.text
.LHOTB48:
	.p2align 4,,15
	.globl	pubnub_sdk_name
	.type	pubnub_sdk_name, @function
pubnub_sdk_name:
.LFB15396:
	.cfi_startproc
	leaq	.LC47(%rip), %rax
	ret
	.cfi_endproc
.LFE15396:
	.size	pubnub_sdk_name, .-pubnub_sdk_name
	.section	.text.unlikely
.LCOLDE48:
	.text
.LHOTE48:
	.section	.rodata.str1.1
.LC49:
	.string	"Qt5%2F2.1.0"
	.section	.text.unlikely
.LCOLDB50:
	.text
.LHOTB50:
	.p2align 4,,15
	.globl	pubnub_uname
	.type	pubnub_uname, @function
pubnub_uname:
.LFB15397:
	.cfi_startproc
	leaq	.LC49(%rip), %rax
	ret
	.cfi_endproc
.LFE15397:
	.size	pubnub_uname, .-pubnub_uname
	.section	.text.unlikely
.LCOLDE50:
	.text
.LHOTE50:
	.section	.rodata.str1.1
.LC51:
	.string	"2.2.0"
	.section	.text.unlikely
.LCOLDB52:
	.text
.LHOTB52:
	.p2align 4,,15
	.globl	pubnub_version
	.type	pubnub_version, @function
pubnub_version:
.LFB15398:
	.cfi_startproc
	leaq	.LC51(%rip), %rax
	ret
	.cfi_endproc
.LFE15398:
	.size	pubnub_version, .-pubnub_version
	.section	.text.unlikely
.LCOLDE52:
	.text
.LHOTE52:
	.section	.text.unlikely._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
	.align 2
.LCOLDB53:
	.section	.text._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LHOTB53:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI7QStringED2Ev
	.type	_ZN5QListI7QStringED2Ev, @function
_ZN5QListI7QStringED2Ev:
.LFB15600:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15600
	movq	(%rdi), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L1065
	cmpl	$-1, %edx
	je	.L1060
	lock subl	$1, (%rax)
	je	.L1065
.L1060:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1065:
	movq	(%rdi), %rdi
	jmp	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.8
	.cfi_endproc
.LFE15600:
	.section	.gcc_except_table
.LLSDA15600:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15600-.LLSDACSB15600
.LLSDACSB15600:
.LLSDACSE15600:
	.section	.text._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
	.size	_ZN5QListI7QStringED2Ev, .-_ZN5QListI7QStringED2Ev
	.section	.text.unlikely._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LCOLDE53:
	.section	.text._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LHOTE53:
	.weak	_ZN5QListI7QStringED1Ev
	.set	_ZN5QListI7QStringED1Ev,_ZN5QListI7QStringED2Ev
	.section	.text.unlikely._ZN5QListI9QSslErrorED2Ev,"axG",@progbits,_ZN5QListI9QSslErrorED5Ev,comdat
	.align 2
.LCOLDB54:
	.section	.text._ZN5QListI9QSslErrorED2Ev,"axG",@progbits,_ZN5QListI9QSslErrorED5Ev,comdat
.LHOTB54:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI9QSslErrorED2Ev
	.type	_ZN5QListI9QSslErrorED2Ev, @function
_ZN5QListI9QSslErrorED2Ev:
.LFB15860:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15860
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %r12
	movl	(%r12), %eax
	testl	%eax, %eax
	je	.L1073
	cmpl	$-1, %eax
	je	.L1066
	lock subl	$1, (%r12)
	je	.L1076
.L1066:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L1076:
	.cfi_restore_state
	movq	(%rdi), %r12
	.p2align 4,,10
	.p2align 3
.L1073:
	movslq	12(%r12), %rdx
	leaq	16(%r12), %rax
	leaq	(%rax,%rdx,8), %rbx
	movslq	8(%r12), %rdx
	leaq	(%rax,%rdx,8), %rbp
	cmpq	%rbp, %rbx
	je	.L1068
	.p2align 4,,10
	.p2align 3
.L1074:
	subq	$8, %rbx
	movq	%rbx, %rdi
	call	_ZN9QSslErrorD1Ev@PLT
	cmpq	%rbx, %rbp
	jne	.L1074
.L1068:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%r12, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN9QListData7disposeEPNS_4DataE@PLT
	.cfi_endproc
.LFE15860:
	.section	.gcc_except_table
.LLSDA15860:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15860-.LLSDACSB15860
.LLSDACSB15860:
.LLSDACSE15860:
	.section	.text._ZN5QListI9QSslErrorED2Ev,"axG",@progbits,_ZN5QListI9QSslErrorED5Ev,comdat
	.size	_ZN5QListI9QSslErrorED2Ev, .-_ZN5QListI9QSslErrorED2Ev
	.section	.text.unlikely._ZN5QListI9QSslErrorED2Ev,"axG",@progbits,_ZN5QListI9QSslErrorED5Ev,comdat
.LCOLDE54:
	.section	.text._ZN5QListI9QSslErrorED2Ev,"axG",@progbits,_ZN5QListI9QSslErrorED5Ev,comdat
.LHOTE54:
	.weak	_ZN5QListI9QSslErrorED1Ev
	.set	_ZN5QListI9QSslErrorED1Ev,_ZN5QListI9QSslErrorED2Ev
	.section	.text.unlikely._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
	.align 2
.LCOLDB55:
	.section	.text._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
.LHOTB55:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI7QStringE18detach_helper_growEii
	.type	_ZN5QListI7QStringE18detach_helper_growEii, @function
_ZN5QListI7QStringE18detach_helper_growEii:
.LFB15985:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movslq	%edx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	movl	%esi, 12(%rsp)
	leaq	12(%rsp), %rsi
	movslq	8(%rax), %rdx
	leaq	16(%rax,%rdx,8), %r12
	movl	%ebp, %edx
	call	_ZN9QListData11detach_growEPii@PLT
	movq	(%rbx), %r9
	movslq	12(%rsp), %rdi
	movslq	8(%r9), %rsi
	leaq	16(%r9), %r11
	leaq	0(,%rdi,8), %r8
	salq	$3, %rsi
	leaq	(%r11,%rsi), %rcx
	leaq	(%rcx,%r8), %r10
	cmpq	%rcx, %r10
	je	.L1078
	movq	%r12, %r9
	.p2align 4,,10
	.p2align 3
.L1082:
	testq	%rcx, %rcx
	je	.L1080
	movq	(%r9), %rsi
	movq	%rsi, (%rcx)
	movl	(%rsi), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L1080
	lock addl	$1, (%rsi)
.L1080:
	addq	$8, %rcx
	addq	$8, %r9
	cmpq	%rcx, %r10
	jne	.L1082
	movq	(%rbx), %r9
	movslq	12(%rsp), %rdi
	movslq	8(%r9), %rsi
	leaq	16(%r9), %r11
	leaq	0(,%rdi,8), %r8
	salq	$3, %rsi
.L1078:
	movslq	12(%r9), %rdx
	addq	%rbp, %rdi
	addq	%r12, %r8
	leaq	(%r11,%rdx,8), %r9
	leaq	(%rsi,%rdi,8), %rdx
	addq	%r11, %rdx
	cmpq	%r9, %rdx
	je	.L1089
	.p2align 4,,10
	.p2align 3
.L1097:
	testq	%rdx, %rdx
	je	.L1087
	movq	(%r8), %rsi
	movq	%rsi, (%rdx)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L1087
	lock addl	$1, (%rsi)
.L1087:
	addq	$8, %rdx
	addq	$8, %r8
	cmpq	%r9, %rdx
	jne	.L1097
.L1089:
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L1084
	cmpl	$-1, %edx
	je	.L1091
	lock subl	$1, (%rax)
	je	.L1084
.L1091:
	movq	(%rbx), %rdx
	movslq	12(%rsp), %rcx
	movslq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	addq	%rcx, %rax
	leaq	16(%rdx,%rax,8), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1084:
	.cfi_restore_state
	movq	%rax, %rdi
	call	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.8
	jmp	.L1091
	.cfi_endproc
.LFE15985:
	.size	_ZN5QListI7QStringE18detach_helper_growEii, .-_ZN5QListI7QStringE18detach_helper_growEii
	.section	.text.unlikely._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
.LCOLDE55:
	.section	.text._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
.LHOTE55:
	.section	.text.unlikely._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
	.align 2
.LCOLDB56:
	.section	.text._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
.LHOTB56:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI7QStringE6appendERKS0_
	.type	_ZN5QListI7QStringE6appendERKS0_, @function
_ZN5QListI7QStringE6appendERKS0_:
.LFB15602:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15602
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rdi), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jbe	.L1102
	movl	$1, %edx
	movl	$2147483647, %esi
.LEHB127:
	call	_ZN5QListI7QStringE18detach_helper_growEii@PLT
.LEHE127:
	testq	%rax, %rax
	je	.L1101
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L1101
	lock addl	$1, (%rdx)
.L1101:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1113
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1102:
	.cfi_restore_state
	movq	(%rsi), %rdx
	movq	%rdx, (%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L1106
	lock addl	$1, (%rdx)
.L1106:
.LEHB128:
	call	_ZN9QListData6appendEv@PLT
.LEHE128:
	movq	(%rsp), %rdx
	movq	%rdx, (%rax)
	jmp	.L1101
.L1113:
	call	__stack_chk_fail@PLT
.L1110:
.L1107:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rsp, %rdi
	call	_ZN7QStringD1Ev@PLT
.LEHB129:
	call	__cxa_rethrow@PLT
.LEHE129:
.L1111:
	movq	%rax, %rbx
.L1108:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB130:
	call	_Unwind_Resume@PLT
.LEHE130:
	.cfi_endproc
.LFE15602:
	.section	.gcc_except_table
	.align 4
.LLSDA15602:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT15602-.LLSDATTD15602
.LLSDATTD15602:
	.byte	0x1
	.uleb128 .LLSDACSE15602-.LLSDACSB15602
.LLSDACSB15602:
	.uleb128 .LEHB127-.LFB15602
	.uleb128 .LEHE127-.LEHB127
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB128-.LFB15602
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1110-.LFB15602
	.uleb128 0x1
	.uleb128 .LEHB129-.LFB15602
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1111-.LFB15602
	.uleb128 0
	.uleb128 .LEHB130-.LFB15602
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
.LLSDACSE15602:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT15602:
	.section	.text._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
	.size	_ZN5QListI7QStringE6appendERKS0_, .-_ZN5QListI7QStringE6appendERKS0_
	.section	.text.unlikely._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
.LCOLDE56:
	.section	.text._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
.LHOTE56:
	.section	.text.unlikely
	.align 2
.LCOLDB57:
	.text
.LHOTB57:
	.align 2
	.p2align 4,,15
	.globl	_ZNK9pubnub_qt7get_allEv
	.type	_ZNK9pubnub_qt7get_allEv, @function
_ZNK9pubnub_qt7get_allEv:
.LFB15360:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15360
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rsp, %r13
	movq	%rax, (%rdi)
	.p2align 4,,10
	.p2align 3
.L1124:
	movq	72(%r12), %rdi
.LEHB131:
	call	pbcc_get_msg@PLT
.LEHE131:
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1114
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rbx, %rdi
	movl	%eax, %esi
.LEHB132:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE132:
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movq	%rax, (%rsp)
.LEHB133:
	call	_ZN5QListI7QStringE6appendERKS0_@PLT
.LEHE133:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1123
	cmpl	$-1, %eax
	je	.L1124
	lock subl	$1, (%rdi)
	jne	.L1124
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1123:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1124
	.p2align 4,,10
	.p2align 3
.L1114:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbp, %rax
	jne	.L1135
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L1129:
	.cfi_restore_state
.L1133:
	movq	%rax, %rbx
.L1118:
	movq	%rbp, %rdi
	call	_ZN5QListI7QStringED2Ev@PLT
	movq	%rbx, %rdi
.LEHB134:
	call	_Unwind_Resume@PLT
.LEHE134:
.L1135:
	call	__stack_chk_fail@PLT
.L1128:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L1118
.L1130:
	jmp	.L1133
	.cfi_endproc
.LFE15360:
	.section	.gcc_except_table
.LLSDA15360:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15360-.LLSDACSB15360
.LLSDACSB15360:
	.uleb128 .LEHB131-.LFB15360
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1129-.LFB15360
	.uleb128 0
	.uleb128 .LEHB132-.LFB15360
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1130-.LFB15360
	.uleb128 0
	.uleb128 .LEHB133-.LFB15360
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1128-.LFB15360
	.uleb128 0
	.uleb128 .LEHB134-.LFB15360
	.uleb128 .LEHE134-.LEHB134
	.uleb128 0
	.uleb128 0
.LLSDACSE15360:
	.text
	.size	_ZNK9pubnub_qt7get_allEv, .-_ZNK9pubnub_qt7get_allEv
	.section	.text.unlikely
.LCOLDE57:
	.text
.LHOTE57:
	.section	.text.unlikely
	.align 2
.LCOLDB58:
	.text
.LHOTB58:
	.align 2
	.p2align 4,,15
	.globl	_ZNK9pubnub_qt16get_all_channelsEv
	.type	_ZNK9pubnub_qt16get_all_channelsEv, @function
_ZNK9pubnub_qt16get_all_channelsEv:
.LFB15362:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15362
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rsp, %r13
	movq	%rax, (%rdi)
	.p2align 4,,10
	.p2align 3
.L1146:
	movq	72(%r12), %rdi
.LEHB135:
	call	pbcc_get_channel@PLT
.LEHE135:
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1136
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rbx, %rdi
	movl	%eax, %esi
.LEHB136:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE136:
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movq	%rax, (%rsp)
.LEHB137:
	call	_ZN5QListI7QStringE6appendERKS0_@PLT
.LEHE137:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1145
	cmpl	$-1, %eax
	je	.L1146
	lock subl	$1, (%rdi)
	jne	.L1146
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1145:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1146
	.p2align 4,,10
	.p2align 3
.L1136:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbp, %rax
	jne	.L1157
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L1151:
	.cfi_restore_state
.L1155:
	movq	%rax, %rbx
.L1140:
	movq	%rbp, %rdi
	call	_ZN5QListI7QStringED2Ev@PLT
	movq	%rbx, %rdi
.LEHB138:
	call	_Unwind_Resume@PLT
.LEHE138:
.L1157:
	call	__stack_chk_fail@PLT
.L1150:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L1140
.L1152:
	jmp	.L1155
	.cfi_endproc
.LFE15362:
	.section	.gcc_except_table
.LLSDA15362:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15362-.LLSDACSB15362
.LLSDACSB15362:
	.uleb128 .LEHB135-.LFB15362
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1151-.LFB15362
	.uleb128 0
	.uleb128 .LEHB136-.LFB15362
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1152-.LFB15362
	.uleb128 0
	.uleb128 .LEHB137-.LFB15362
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1150-.LFB15362
	.uleb128 0
	.uleb128 .LEHB138-.LFB15362
	.uleb128 .LEHE138-.LEHB138
	.uleb128 0
	.uleb128 0
.LLSDACSE15362:
	.text
	.size	_ZNK9pubnub_qt16get_all_channelsEv, .-_ZNK9pubnub_qt16get_all_channelsEv
	.section	.text.unlikely
.LCOLDE58:
	.text
.LHOTE58:
	.section	.text.unlikely._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
	.align 2
.LCOLDB59:
	.section	.text._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
.LHOTB59:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI9QSslErrorEC2ERKS1_
	.type	_ZN5QListI9QSslErrorEC2ERKS1_, @function
_ZN5QListI9QSslErrorEC2ERKS1_:
.LFB16272:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16272
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L1159
	cmpl	$-1, %edx
	je	.L1178
	lock addl	$1, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L1159:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	4(%rax), %esi
.LEHB139:
	call	_ZN9QListData6detachEi@PLT
.LEHE139:
	movq	(%rbx), %rax
	movslq	8(%rax), %rdx
	leaq	16(%rax,%rdx,8), %rbp
	movq	0(%r13), %rax
	leaq	16(%rax), %rdx
	movslq	12(%rax), %rcx
	movslq	8(%rax), %rax
	leaq	(%rdx,%rcx,8), %r12
	leaq	(%rdx,%rax,8), %r14
	cmpq	%r12, %r14
	je	.L1158
	movq	%r14, %rbx
	.p2align 4,,10
	.p2align 3
.L1162:
	testq	%rbx, %rbx
	je	.L1163
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB140:
	call	_ZN9QSslErrorC1ERKS_@PLT
.LEHE140:
.L1163:
	addq	$8, %rbx
	addq	$8, %rbp
	cmpq	%rbx, %r12
	jne	.L1162
.L1158:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.L1178:
	rep ret
.L1171:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
.L1164:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.L1166:
	subq	$8, %rbx
	leaq	8(%rbx), %rax
	cmpq	%rax, %r14
	je	.L1165
	movq	%rbx, %rdi
	call	_ZN9QSslErrorD1Ev@PLT
	jmp	.L1166
.L1165:
.LEHB141:
	call	__cxa_rethrow@PLT
.LEHE141:
.L1172:
	movq	%rax, %rbx
.L1167:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
	call	__cxa_begin_catch@PLT
	movq	0(%r13), %rdi
.LEHB142:
	call	_ZN9QListData7disposeEPNS_4DataE@PLT
	call	__cxa_rethrow@PLT
.LEHE142:
.L1170:
	movq	%rax, %rbx
.L1168:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB143:
	call	_Unwind_Resume@PLT
.LEHE143:
	.cfi_endproc
.LFE16272:
	.section	.gcc_except_table
	.align 4
.LLSDA16272:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT16272-.LLSDATTD16272
.LLSDATTD16272:
	.byte	0x1
	.uleb128 .LLSDACSE16272-.LLSDACSB16272
.LLSDACSB16272:
	.uleb128 .LEHB139-.LFB16272
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB16272
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1171-.LFB16272
	.uleb128 0x1
	.uleb128 .LEHB141-.LFB16272
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L1172-.LFB16272
	.uleb128 0x3
	.uleb128 .LEHB142-.LFB16272
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L1170-.LFB16272
	.uleb128 0
	.uleb128 .LEHB143-.LFB16272
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
.LLSDACSE16272:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT16272:
	.section	.text._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
	.size	_ZN5QListI9QSslErrorEC2ERKS1_, .-_ZN5QListI9QSslErrorEC2ERKS1_
	.section	.text.unlikely._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
.LCOLDE59:
	.section	.text._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
.LHOTE59:
	.weak	_ZN5QListI9QSslErrorEC1ERKS1_
	.set	_ZN5QListI9QSslErrorEC1ERKS1_,_ZN5QListI9QSslErrorEC2ERKS1_
	.section	.rodata.str1.1
.LC60:
	.string	", "
.LC61:
	.string	"SSL error: "
	.section	.text.unlikely
	.align 2
.LCOLDB62:
	.text
.LHOTB62:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt9sslErrorsEP13QNetworkReplyRK5QListI9QSslErrorE
	.type	_ZN9pubnub_qt9sslErrorsEP13QNetworkReplyRK5QListI9QSslErrorE, @function
_ZN9pubnub_qt9sslErrorsEP13QNetworkReplyRK5QListI9QSslErrorE:
.LFB15392:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15392
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	leaq	96(%rsp), %r14
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rdi, 8(%rsp)
	movq	%r14, %rdi
	movq	%rax, 16(%rsp)
.LEHB144:
	call	_ZN5QListI9QSslErrorEC1ERKS1_@PLT
.LEHE144:
	movq	96(%rsp), %rax
	movslq	8(%rax), %rcx
	leaq	16(%rax), %rdx
	movslq	12(%rax), %rax
	movl	$1, 120(%rsp)
	leaq	(%rdx,%rcx,8), %rbx
	leaq	(%rdx,%rax,8), %rax
	cmpq	%rax, %rbx
	movq	%rbx, 104(%rsp)
	movq	%rax, 112(%rsp)
	je	.L1180
	movl	$1, %eax
	leaq	32(%rsp), %r12
	leaq	64(%rsp), %r13
	testl	%eax, %eax
	je	.L1240
	.p2align 4,,10
	.p2align 3
.L1234:
	movq	16(%rsp), %rax
	leaq	16(%rsp), %rbp
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L1182
	leaq	.LC60(%rip), %rsi
	movl	$2, %edx
	movq	%r13, %rdi
.LEHB145:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE145:
	leaq	16(%rsp), %rbp
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB146:
	call	_ZN7QString6appendERKS_@PLT
.LEHE146:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1187
	cmpl	$-1, %eax
	je	.L1182
	lock subl	$1, (%rdi)
	je	.L1241
	.p2align 4,,10
	.p2align 3
.L1182:
	movq	%rbx, %rsi
	movq	%r12, %rdi
.LEHB147:
	call	_ZNK9QSslError11errorStringEv@PLT
.LEHE147:
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB148:
	call	_ZN7QString6appendERKS_@PLT
.LEHE148:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1194
	cmpl	$-1, %eax
	je	.L1191
	lock subl	$1, (%rdi)
	je	.L1242
.L1191:
	movq	104(%rsp), %rax
	movl	$1, 120(%rsp)
	leaq	8(%rax), %rbx
	cmpq	%rbx, 112(%rsp)
	movq	%rbx, 104(%rsp)
	je	.L1180
.L1243:
	movl	120(%rsp), %eax
	movq	104(%rsp), %rbx
	testl	%eax, %eax
	jne	.L1234
.L1240:
	addq	$8, %rbx
	cmpq	%rbx, 112(%rsp)
	movl	$1, 120(%rsp)
	movq	%rbx, 104(%rsp)
	jne	.L1243
	.p2align 4,,10
	.p2align 3
.L1180:
	movq	%r14, %rdi
	leaq	48(%rsp), %rbx
	call	_ZN5QListI9QSslErrorED1Ev@PLT
	leaq	.LC38(%rip), %rax
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movl	$2, 96(%rsp)
	movl	$0, 100(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	%rax, 120(%rsp)
.LEHB149:
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE149:
	leaq	80(%rsp), %r12
	leaq	.LC61(%rip), %rsi
	movl	$11, %edx
	movq	%r12, %rdi
.LEHB150:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE150:
	movq	48(%rsp), %rdi
	movq	%r12, %rsi
.LEHB151:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE151:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1200
	cmpl	$-1, %eax
	je	.L1197
	lock subl	$1, (%rdi)
	movq	80(%rsp), %rdi
	je	.L1200
.L1197:
	movq	48(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L1201
.L1203:
	movq	16(%rsp), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	4(%rax), %edx
	addq	16(%rax), %rsi
.LEHB152:
	call	_ZN6QDebug9putStringEPK5QCharm@PLT
.LEHE152:
	movq	48(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L1206
.L1209:
	movq	%rbx, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	8(%rsp), %rax
	testb	$4, 96(%rax)
	je	.L1208
	movq	(%r15), %rax
	movq	%r15, %rdi
.LEHB153:
	call	*240(%rax)
.LEHE153:
.L1208:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1210
	cmpl	$-1, %eax
	je	.L1179
	lock subl	$1, (%rdi)
	movq	16(%rsp), %rdi
	je	.L1210
.L1179:
	movq	136(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1244
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1242:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1194:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1191
.L1241:
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1187:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1182
.L1210:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1179
.L1206:
	movl	$32, %esi
.LEHB154:
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L1209
.L1201:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.LEHE154:
	jmp	.L1203
.L1200:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1197
.L1223:
	leaq	16(%rsp), %rbp
	movq	%rax, %rbx
.L1216:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
.LEHB155:
	call	_Unwind_Resume@PLT
.LEHE155:
.L1221:
	movq	%rax, %rbx
.L1189:
	movq	%r14, %rdi
	call	_ZN5QListI9QSslErrorED1Ev@PLT
	jmp	.L1216
.L1225:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L1189
.L1222:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L1189
.L1224:
	movq	%rax, %rbp
.L1205:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	leaq	16(%rsp), %rbp
	call	_ZN6QDebugD1Ev@PLT
	jmp	.L1216
.L1226:
	movq	%r12, %rdi
	movq	%rax, %rbp
	call	_ZN7QStringD1Ev@PLT
	jmp	.L1205
.L1244:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15392:
	.section	.gcc_except_table
.LLSDA15392:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15392-.LLSDACSB15392
.LLSDACSB15392:
	.uleb128 .LEHB144-.LFB15392
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1223-.LFB15392
	.uleb128 0
	.uleb128 .LEHB145-.LFB15392
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1221-.LFB15392
	.uleb128 0
	.uleb128 .LEHB146-.LFB15392
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L1225-.LFB15392
	.uleb128 0
	.uleb128 .LEHB147-.LFB15392
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L1221-.LFB15392
	.uleb128 0
	.uleb128 .LEHB148-.LFB15392
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L1222-.LFB15392
	.uleb128 0
	.uleb128 .LEHB149-.LFB15392
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L1223-.LFB15392
	.uleb128 0
	.uleb128 .LEHB150-.LFB15392
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L1224-.LFB15392
	.uleb128 0
	.uleb128 .LEHB151-.LFB15392
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L1226-.LFB15392
	.uleb128 0
	.uleb128 .LEHB152-.LFB15392
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L1224-.LFB15392
	.uleb128 0
	.uleb128 .LEHB153-.LFB15392
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1223-.LFB15392
	.uleb128 0
	.uleb128 .LEHB154-.LFB15392
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L1224-.LFB15392
	.uleb128 0
	.uleb128 .LEHB155-.LFB15392
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
.LLSDACSE15392:
	.text
	.size	_ZN9pubnub_qt9sslErrorsEP13QNetworkReplyRK5QListI9QSslErrorE, .-_ZN9pubnub_qt9sslErrorsEP13QNetworkReplyRK5QListI9QSslErrorE
	.section	.text.unlikely
.LCOLDE62:
	.text
.LHOTE62:
	.section	.rodata.str1.1
.LC63:
	.string	"https://pubsub.pubnub.com"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC64:
	.string	"1sslErrors(QNetworkReply*,QList<QSslError>)"
	.align 8
.LC65:
	.string	"2sslErrors(QNetworkReply*,QList<QSslError>)"
	.section	.rodata.str1.1
.LC66:
	.string	"1transactionTimeout()"
.LC67:
	.string	"2timeout()"
	.section	.text.unlikely
	.align 2
.LCOLDB68:
	.text
.LHOTB68:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qtC2E7QStringS0_
	.type	_ZN9pubnub_qtC2E7QStringS0_, @function
_ZN9pubnub_qtC2E7QStringS0_:
.LFB15350:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15350
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%esi, %esi
	movq	%rdi, %rbx
	movq	%rdx, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	leaq	16(%rbx), %r14
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB156:
	call	_ZN7QObjectC2EPS_@PLT
.LEHE156:
	movq	_ZTV9pubnub_qt@GOTPCREL(%rip), %rax
	movq	%r12, %rsi
	movq	%r14, %rdi
	addq	$16, %rax
	movq	%rax, (%rbx)
.LEHB157:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE157:
	leaq	24(%rbx), %r13
	movq	%rbp, %rsi
	movq	%r13, %rdi
.LEHB158:
	call	_ZN7QString15toLatin1_helperERKS_@PLT
.LEHE158:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	leaq	48(%rbx), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
.LEHB159:
	call	_ZN21QNetworkAccessManagerC1EP7QObject@PLT
.LEHE159:
	movq	$0, 64(%rbx)
	movl	$1112, %edi
.LEHB160:
	call	_Znwm@PLT
.LEHE160:
	leaq	.LC63(%rip), %rdi
	movq	%rax, 72(%rbx)
	movl	$0, 84(%rbx)
	movl	$25, %esi
.LEHB161:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE161:
	movq	%rax, 88(%rbx)
	movl	$1, 96(%rbx)
	movl	$32, %edi
	movl	$10000, 100(%rbx)
	movb	$0, 104(%rbx)
.LEHB162:
	call	_Znwm@PLT
.LEHE162:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB163:
	call	_ZN6QTimerC1EP7QObject@PLT
.LEHE163:
	movq	24(%rbx), %rax
	movq	%rbp, 112(%rbx)
	movl	(%rax), %edx
	cmpl	$1, %edx
	jbe	.L1274
.L1247:
	movsbl	11(%rax), %edx
	movl	4(%rax), %esi
	movq	%r13, %rdi
	addl	$1, %esi
	shrl	$31, %edx
.LEHB164:
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	24(%rbx), %rdx
	movq	16(%rdx), %rbp
.L1258:
	movq	16(%rbx), %rcx
	addq	%rdx, %rbp
	movl	(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L1275
.L1249:
	movsbl	11(%rcx), %edx
	movl	4(%rcx), %esi
	movq	%r14, %rdi
	addl	$1, %esi
	shrl	$31, %edx
	call	_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE@PLT
	movq	16(%rbx), %rsi
	movq	16(%rsi), %rax
.L1259:
	movq	72(%rbx), %rdi
	addq	%rax, %rsi
	movq	%rbp, %rdx
	call	pbcc_init@PLT
	leaq	.LC64(%rip), %r8
	leaq	.LC65(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%r12, %rsi
	movq	%rsp, %rdi
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
	movq	%rsp, %rdi
	leaq	16(%rsp), %rbp
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	movq	112(%rbx), %rsi
	leaq	.LC66(%rip), %r8
	leaq	.LC67(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rbp, %rdi
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
.LEHE164:
	movq	%rbp, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1276
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1274:
	.cfi_restore_state
	movq	16(%rax), %rbp
	movq	%rax, %rdx
	cmpq	$24, %rbp
	jne	.L1247
	jmp	.L1258
	.p2align 4,,10
	.p2align 3
.L1275:
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$24, %rax
	jne	.L1249
	jmp	.L1259
.L1276:
	call	__stack_chk_fail@PLT
.L1267:
	movq	%rax, %r15
	movq	%rbp, %rdi
	movq	%r15, %rbp
	call	_ZdlPv@PLT
.L1251:
	leaq	88(%rbx), %rdi
	call	_ZN7QStringD1Ev@PLT
.L1252:
	movq	72(%rbx), %rdi
	call	_ZdlPv@PLT
.L1253:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L1254
	movq	(%rdi), %rax
	call	*32(%rax)
.L1254:
	movq	%r12, %rdi
	call	_ZN21QNetworkAccessManagerD1Ev@PLT
.L1255:
	leaq	40(%rbx), %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	leaq	32(%rbx), %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
.L1256:
	movq	%r14, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
.L1257:
	movq	%rbx, %rdi
	call	_ZN7QObjectD2Ev@PLT
	movq	%rbp, %rdi
.LEHB165:
	call	_Unwind_Resume@PLT
.LEHE165:
.L1262:
	movq	%rax, %rbp
	jmp	.L1256
.L1261:
	movq	%rax, %rbp
	jmp	.L1257
.L1266:
	movq	%rax, %rbp
	jmp	.L1251
.L1265:
	movq	%rax, %rbp
	jmp	.L1252
.L1264:
	movq	%rax, %rbp
	jmp	.L1253
.L1263:
	movq	%rax, %rbp
	jmp	.L1255
	.cfi_endproc
.LFE15350:
	.section	.gcc_except_table
.LLSDA15350:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15350-.LLSDACSB15350
.LLSDACSB15350:
	.uleb128 .LEHB156-.LFB15350
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB157-.LFB15350
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L1261-.LFB15350
	.uleb128 0
	.uleb128 .LEHB158-.LFB15350
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L1262-.LFB15350
	.uleb128 0
	.uleb128 .LEHB159-.LFB15350
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L1263-.LFB15350
	.uleb128 0
	.uleb128 .LEHB160-.LFB15350
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L1264-.LFB15350
	.uleb128 0
	.uleb128 .LEHB161-.LFB15350
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L1265-.LFB15350
	.uleb128 0
	.uleb128 .LEHB162-.LFB15350
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L1266-.LFB15350
	.uleb128 0
	.uleb128 .LEHB163-.LFB15350
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L1267-.LFB15350
	.uleb128 0
	.uleb128 .LEHB164-.LFB15350
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L1266-.LFB15350
	.uleb128 0
	.uleb128 .LEHB165-.LFB15350
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
.LLSDACSE15350:
	.text
	.size	_ZN9pubnub_qtC2E7QStringS0_, .-_ZN9pubnub_qtC2E7QStringS0_
	.section	.text.unlikely
.LCOLDE68:
	.text
.LHOTE68:
	.globl	_ZN9pubnub_qtC1E7QStringS0_
	.set	_ZN9pubnub_qtC1E7QStringS0_,_ZN9pubnub_qtC2E7QStringS0_
	.section	.text.unlikely
	.align 2
.LCOLDB69:
	.text
.LHOTB69:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qtD2Ev
	.type	_ZN9pubnub_qtD2Ev, @function
_ZN9pubnub_qtD2Ev:
.LFB15353:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA15353
	movq	_ZTV9pubnub_qt@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	72(%rdi), %rdi
	call	pbcc_deinit@PLT
	movq	88(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1282
	cmpl	$-1, %eax
	je	.L1279
	lock subl	$1, (%rdi)
	je	.L1308
.L1279:
	movq	72(%rbx), %rdi
	call	_ZdlPv@PLT
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L1283
	movq	(%rdi), %rax
	call	*32(%rax)
.L1283:
	leaq	48(%rbx), %rdi
	call	_ZN21QNetworkAccessManagerD1Ev@PLT
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1288
	cmpl	$-1, %eax
	je	.L1285
	lock subl	$1, (%rdi)
	je	.L1309
.L1285:
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1293
	cmpl	$-1, %eax
	je	.L1290
	lock subl	$1, (%rdi)
	je	.L1310
.L1290:
	movq	24(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1298
	cmpl	$-1, %eax
	je	.L1295
	lock subl	$1, (%rdi)
	je	.L1311
.L1295:
	movq	16(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L1303
	cmpl	$-1, %eax
	je	.L1300
	lock subl	$1, (%rdi)
	je	.L1312
.L1300:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObjectD2Ev@PLT
.L1308:
	.cfi_restore_state
	movq	88(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L1282:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1279
.L1312:
	movq	16(%rbx), %rdi
.L1303:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObjectD2Ev@PLT
.L1311:
	.cfi_restore_state
	movq	24(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L1298:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1295
.L1310:
	movq	32(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L1293:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1290
.L1309:
	movq	40(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L1288:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L1285
	.cfi_endproc
.LFE15353:
	.section	.gcc_except_table
.LLSDA15353:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15353-.LLSDACSB15353
.LLSDACSB15353:
.LLSDACSE15353:
	.text
	.size	_ZN9pubnub_qtD2Ev, .-_ZN9pubnub_qtD2Ev
	.section	.text.unlikely
.LCOLDE69:
	.text
.LHOTE69:
	.globl	_ZN9pubnub_qtD1Ev
	.set	_ZN9pubnub_qtD1Ev,_ZN9pubnub_qtD2Ev
	.section	.text.unlikely
	.align 2
.LCOLDB70:
	.text
.LHOTB70:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qtD0Ev
	.type	_ZN9pubnub_qtD0Ev, @function
_ZN9pubnub_qtD0Ev:
.LFB15355:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN9pubnub_qtD1Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE15355:
	.size	_ZN9pubnub_qtD0Ev, .-_ZN9pubnub_qtD0Ev
	.section	.text.unlikely
.LCOLDE70:
	.text
.LHOTE70:
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

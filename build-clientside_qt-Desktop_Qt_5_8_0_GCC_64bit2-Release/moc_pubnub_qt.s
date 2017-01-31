	.file	"moc_pubnub_qt.cpp"
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
	.globl	_ZNK9pubnub_qt10metaObjectEv
	.type	_ZNK9pubnub_qt10metaObjectEv, @function
_ZNK9pubnub_qt10metaObjectEv:
.LFB12703:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN9pubnub_qt16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE12703:
	.size	_ZNK9pubnub_qt10metaObjectEv, .-_ZNK9pubnub_qt10metaObjectEv
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
	.globl	_ZN9pubnub_qt7outcomeE10pubnub_res
	.type	_ZN9pubnub_qt7outcomeE10pubnub_res, @function
_ZN9pubnub_qt7outcomeE10pubnub_res:
.LFB12706:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	xorl	%edx, %edx
	movl	%esi, 12(%rsp)
	movq	_ZN9pubnub_qt16staticMetaObjectE@GOTPCREL(%rip), %rsi
	leaq	16(%rsp), %rcx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	12(%rsp), %rax
	movq	$0, 16(%rsp)
	movq	%rax, 24(%rsp)
	call	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12706:
	.size	_ZN9pubnub_qt7outcomeE10pubnub_res, .-_ZN9pubnub_qt7outcomeE10pubnub_res
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,comdat
.LCOLDB2:
	.section	.text._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,comdat
.LHOTB2:
	.p2align 4,,15
	.weak	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv
	.type	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv, @function
_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv:
.LFB13469:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13469
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
	je	.L15
	cmpl	$-1, %eax
	je	.L8
	lock subl	$1, (%r12)
	je	.L18
.L8:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	movq	(%rdi), %r12
	.p2align 4,,10
	.p2align 3
.L15:
	movslq	12(%r12), %rdx
	leaq	16(%r12), %rax
	leaq	(%rax,%rdx,8), %rbx
	movslq	8(%r12), %rdx
	leaq	(%rax,%rdx,8), %rbp
	cmpq	%rbp, %rbx
	je	.L10
	.p2align 4,,10
	.p2align 3
.L16:
	subq	$8, %rbx
	movq	%rbx, %rdi
	call	_ZN9QSslErrorD1Ev@PLT
	cmpq	%rbx, %rbp
	jne	.L16
.L10:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%r12, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN9QListData7disposeEPNS_4DataE@PLT
	.cfi_endproc
.LFE13469:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,"aG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,comdat
.LLSDA13469:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13469-.LLSDACSB13469
.LLSDACSB13469:
.LLSDACSE13469:
	.section	.text._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,comdat
	.size	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv, .-_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv
	.section	.text.unlikely._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,comdat
.LCOLDE2:
	.section	.text._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv,comdat
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"QList<QSslError>"
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB12699:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12699
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	jne	.L20
	cmpl	$1, %edx
	je	.L22
	jle	.L51
	cmpl	$2, %edx
	je	.L25
	cmpl	$3, %edx
	jne	.L19
	movq	8(%rcx), %rax
	movq	16(%rcx), %rdx
	movq	(%rax), %rsi
.LEHB0:
	call	_ZN9pubnub_qt9sslErrorsEP13QNetworkReplyRK5QListI9QSslErrorE@PLT
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L20:
	cmpl	$12, %esi
	je	.L52
	cmpl	$10, %esi
	je	.L53
.L19:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L54
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
.L52:
	.cfi_restore_state
	cmpl	$3, %edx
	jne	.L50
	movq	8(%rcx), %rax
	cmpl	$1, (%rax)
	je	.L31
.L50:
	movq	(%rcx), %rax
	movl	$-1, (%rax)
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L22:
	call	_ZN9pubnub_qt12httpFinishedEv@PLT
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L25:
	call	_ZN9pubnub_qt18transactionTimeoutEv@PLT
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L51:
	testl	%edx, %edx
	jne	.L19
	movq	8(%rcx), %rax
	movl	(%rax), %esi
	call	_ZN9pubnub_qt7outcomeE10pubnub_res@PLT
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L53:
	movq	8(%rcx), %rax
	movq	_ZN9pubnub_qt7outcomeE10pubnub_res@GOTPCREL(%rip), %rbx
	cmpq	%rbx, (%rax)
	jne	.L19
	cmpq	$0, 8(%rax)
	jne	.L19
	movq	(%rcx), %rax
	movl	$0, (%rax)
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L31:
	movq	_ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id@GOTPCREL(%rip), %rbx
	movq	(%rcx), %rbp
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.L55
.L32:
	movl	%eax, 0(%rbp)
	jmp	.L19
.L55:
	leaq	16(%rsp), %r12
	leaq	.LC3(%rip), %rsi
	movq	%r12, %rdi
	call	_ZN11QMetaObject14normalizedTypeEPKc@PLT
.LEHE0:
	movq	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv@GOTPCREL(%rip), %rdx
	movq	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE8DestructEPv@GOTPCREL(%rip), %rsi
	xorl	%r9d, %r9d
	movl	$263, %r8d
	movl	$8, %ecx
	movq	%r12, %rdi
.LEHB1:
	call	_ZN9QMetaType22registerNormalizedTypeERK10QByteArrayPFvPvEPFS3_S3_PKvEi6QFlagsINS_8TypeFlagEEPK11QMetaObject@PLT
.LEHE1:
	movq	16(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L37
	cmpl	$-1, %edx
	je	.L34
	lock subl	$1, (%rdi)
	je	.L56
.L34:
	movl	%eax, (%rbx)
	jmp	.L32
.L56:
	movq	16(%rsp), %rdi
.L37:
	movl	$8, %edx
	movl	$1, %esi
	movl	%eax, 12(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movl	12(%rsp), %eax
	jmp	.L34
.L54:
	call	__stack_chk_fail@PLT
.L43:
	movq	16(%rsp), %rdi
	movq	%rax, %rbx
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L41
	addl	$1, %edx
	je	.L40
	orl	$-1, %eax
	lock xaddl	%eax, (%rdi)
	subl	$1, %eax
	je	.L57
.L40:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L57:
	movq	16(%rsp), %rdi
.L41:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L40
	.cfi_endproc
.LFE12699:
	.section	.gcc_except_table,"a",@progbits
.LLSDA12699:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12699-.LLSDACSB12699
.LLSDACSB12699:
	.uleb128 .LEHB0-.LFB12699
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12699
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L43-.LFB12699
	.uleb128 0
	.uleb128 .LEHB2-.LFB12699
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE12699:
	.text
	.size	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
	.align 2
.LCOLDB5:
	.section	.text._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
.LHOTB5:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI9QSslErrorEC2ERKS1_
	.type	_ZN5QListI9QSslErrorEC2ERKS1_, @function
_ZN5QListI9QSslErrorEC2ERKS1_:
.LFB13614:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13614
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L59
	cmpl	$-1, %edx
	je	.L78
	lock addl	$1, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L59:
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
.LEHB3:
	call	_ZN9QListData6detachEi@PLT
.LEHE3:
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
	je	.L58
	movq	%r14, %rbx
	.p2align 4,,10
	.p2align 3
.L62:
	testq	%rbx, %rbx
	je	.L63
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	_ZN9QSslErrorC1ERKS_@PLT
.LEHE4:
.L63:
	addq	$8, %rbx
	addq	$8, %rbp
	cmpq	%rbx, %r12
	jne	.L62
.L58:
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
.L78:
	rep ret
.L71:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
.L64:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.L66:
	subq	$8, %rbx
	leaq	8(%rbx), %rax
	cmpq	%rax, %r14
	je	.L65
	movq	%rbx, %rdi
	call	_ZN9QSslErrorD1Ev@PLT
	jmp	.L66
.L65:
.LEHB5:
	call	__cxa_rethrow@PLT
.LEHE5:
.L72:
	movq	%rax, %rbx
.L67:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
	call	__cxa_begin_catch@PLT
	movq	0(%r13), %rdi
.LEHB6:
	call	_ZN9QListData7disposeEPNS_4DataE@PLT
	call	__cxa_rethrow@PLT
.LEHE6:
.L70:
	movq	%rax, %rbx
.L68:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE13614:
	.section	.gcc_except_table
	.align 4
.LLSDA13614:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT13614-.LLSDATTD13614
.LLSDATTD13614:
	.byte	0x1
	.uleb128 .LLSDACSE13614-.LLSDACSB13614
.LLSDACSB13614:
	.uleb128 .LEHB3-.LFB13614
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB13614
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L71-.LFB13614
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB13614
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L72-.LFB13614
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB13614
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L70-.LFB13614
	.uleb128 0
	.uleb128 .LEHB7-.LFB13614
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE13614:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT13614:
	.section	.text._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
	.size	_ZN5QListI9QSslErrorEC2ERKS1_, .-_ZN5QListI9QSslErrorEC2ERKS1_
	.section	.text.unlikely._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
.LCOLDE5:
	.section	.text._ZN5QListI9QSslErrorEC2ERKS1_,"axG",@progbits,_ZN5QListI9QSslErrorEC5ERKS1_,comdat
.LHOTE5:
	.weak	_ZN5QListI9QSslErrorEC1ERKS1_
	.set	_ZN5QListI9QSslErrorEC1ERKS1_,_ZN5QListI9QSslErrorEC2ERKS1_
	.section	.text.unlikely._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,comdat
.LCOLDB6:
	.section	.text._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,comdat
.LHOTB6:
	.p2align 4,,15
	.weak	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv
	.type	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv, @function
_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv:
.LFB13470:
	.cfi_startproc
	testq	%rsi, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	je	.L80
	testq	%rdi, %rdi
	je	.L81
	call	_ZN5QListI9QSslErrorEC1ERKS1_@PLT
.L81:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	.cfi_restore_state
	testq	%rdi, %rdi
	je	.L81
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13470:
	.size	_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv, .-_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv
	.section	.text.unlikely._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,comdat
.LCOLDE6:
	.section	.text._ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,"axG",@progbits,_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperI5QListI9QSslErrorELb1EE9ConstructEPvPKv,comdat
.LHOTE6:
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZN9pubnub_qt11qt_metacastEPKc
	.type	_ZN9pubnub_qt11qt_metacastEPKc, @function
_ZN9pubnub_qt11qt_metacastEPKc:
.LFB12704:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L91
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	288+_ZL28qt_meta_stringdata_pubnub_qt(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L96
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
.L96:
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
.L91:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12704:
	.size	_ZN9pubnub_qt11qt_metacastEPKc, .-_ZN9pubnub_qt11qt_metacastEPKc
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
	.globl	_ZN9pubnub_qt11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN9pubnub_qt11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN9pubnub_qt11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB12705:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rcx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp
	movl	%esi, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	_ZN7QObject11qt_metacallEN11QMetaObject4CallEiPPv@PLT
	testl	%eax, %eax
	js	.L98
	testl	%ebx, %ebx
	jne	.L99
	cmpl	$3, %eax
	jg	.L101
	movl	%eax, %edx
	movq	%r12, %rcx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
.L101:
	subl	$4, %eax
.L98:
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
.L99:
	.cfi_restore_state
	cmpl	$12, %ebx
	jne	.L98
	cmpl	$3, %eax
	jg	.L101
	movl	%eax, %edx
	movq	%r12, %rcx
	movl	$12, %esi
	movq	%rbp, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
	jmp	.L101
	.cfi_endproc
.LFE12705:
	.size	_ZN9pubnub_qt11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN9pubnub_qt11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.weak	_ZTS9pubnub_qt
	.section	.rodata._ZTS9pubnub_qt,"aG",@progbits,_ZTS9pubnub_qt,comdat
	.align 8
	.type	_ZTS9pubnub_qt, @object
	.size	_ZTS9pubnub_qt, 11
_ZTS9pubnub_qt:
	.string	"9pubnub_qt"
	.weak	_ZTI9pubnub_qt
	.section	.data.rel.ro._ZTI9pubnub_qt,"awG",@progbits,_ZTI9pubnub_qt,comdat
	.align 8
	.type	_ZTI9pubnub_qt, @object
	.size	_ZTI9pubnub_qt, 24
_ZTI9pubnub_qt:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS9pubnub_qt
	.quad	_ZTI7QObject
	.weak	_ZTV9pubnub_qt
	.section	.data.rel.ro._ZTV9pubnub_qt,"awG",@progbits,_ZTV9pubnub_qt,comdat
	.align 8
	.type	_ZTV9pubnub_qt, @object
	.size	_ZTV9pubnub_qt, 112
_ZTV9pubnub_qt:
	.quad	0
	.quad	_ZTI9pubnub_qt
	.quad	_ZNK9pubnub_qt10metaObjectEv
	.quad	_ZN9pubnub_qt11qt_metacastEPKc
	.quad	_ZN9pubnub_qt11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN9pubnub_qtD1Ev
	.quad	_ZN9pubnub_qtD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.globl	_ZN9pubnub_qt16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN9pubnub_qt16staticMetaObjectE, @object
	.size	_ZN9pubnub_qt16staticMetaObjectE, 48
_ZN9pubnub_qt16staticMetaObjectE:
	.quad	_ZN7QObject16staticMetaObjectE
	.quad	_ZL28qt_meta_stringdata_pubnub_qt
	.quad	_ZL22qt_meta_data_pubnub_qt
	.quad	_ZN9pubnub_qt18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL22qt_meta_data_pubnub_qt, @object
	.size	_ZL22qt_meta_data_pubnub_qt, 180
_ZL22qt_meta_data_pubnub_qt:
	.long	7
	.long	0
	.long	0
	.long	0
	.long	4
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	34
	.long	2
	.long	6
	.long	5
	.long	0
	.long	37
	.long	2
	.long	8
	.long	6
	.long	0
	.long	38
	.long	2
	.long	8
	.long	7
	.long	2
	.long	39
	.long	2
	.long	8
	.long	43
	.long	-2147483645
	.long	4
	.long	43
	.long	43
	.long	43
	.long	-2147483640
	.long	-2147483638
	.long	9
	.long	11
	.long	0
	.align 32
	.type	_ZL28qt_meta_stringdata_pubnub_qt, @object
	.size	_ZL28qt_meta_stringdata_pubnub_qt, 416
_ZL28qt_meta_stringdata_pubnub_qt:
	.long	-1
	.long	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	288
	.long	-1
	.long	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	274
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	258
	.long	-1
	.long	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	235
	.long	-1
	.long	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	222
	.long	-1
	.long	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	205
	.long	-1
	.long	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	194
	.long	-1
	.long	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	189
	.long	-1
	.long	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	175
	.long	-1
	.long	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	166
	.long	-1
	.long	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	148
	.long	-1
	.long	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	141
	.string	"pubnub_qt"
	.string	"outcome"
	.string	""
	.string	"pubnub_res"
	.string	"result"
	.string	"httpFinished"
	.string	"transactionTimeout"
	.string	"sslErrors"
	.string	"QNetworkReply*"
	.string	"reply"
	.string	"QList<QSslError>"
	.string	"errors"
	.zero	4
	.weak	_ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id
	.section	.bss._ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id,"awG",@nobits,_ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id,comdat
	.align 4
	.type	_ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id, @gnu_unique_object
	.size	_ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id, 4
_ZZN11QMetaTypeIdI5QListI9QSslErrorEE14qt_metatype_idEvE11metatype_id:
	.zero	4
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

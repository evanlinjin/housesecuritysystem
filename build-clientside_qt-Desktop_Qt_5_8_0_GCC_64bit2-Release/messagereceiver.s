	.file	"messagereceiver.cpp"
#APP
	.section .qtversion, "aG", @progbits, qt_version_tag, comdat
.align 8
.quad qt_version_tag@GOT
.long ((5<<16)|(8<<8)|(0))
.align 8
.previous
#NO_APP
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTB0:
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
	je	.L6
	cmpl	$-1, %edx
	je	.L1
	lock subl	$1, (%rax)
	je	.L6
.L1:
	rep ret
	.p2align 4,,10
	.p2align 3
.L6:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$2, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9465:
	.size	_ZN7QStringD2Ev, .-_ZN7QStringD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LCOLDE0:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTE0:
	.weak	_ZN7QStringD1Ev
	.set	_ZN7QStringD1Ev,_ZN7QStringD2Ev
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4,,15
	.type	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4, @function
_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4:
.LFB13746:
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
	jne	.L17
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L10:
	cmpl	$-1, %edx
	je	.L11
	lock subl	$1, (%rax)
	je	.L14
.L11:
	cmpq	%rbx, %rbp
	je	.L15
.L17:
	subq	$8, %rbx
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L10
.L14:
	movq	(%rbx), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	cmpq	%rbx, %rbp
	jne	.L17
.L15:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%r12, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN9QListData7disposeEPNS_4DataE@PLT
	.cfi_endproc
.LFE13746:
	.size	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4, .-_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
	.align 2
.LCOLDB2:
	.section	.text._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LHOTB2:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI7QStringED2Ev
	.type	_ZN5QListI7QStringED2Ev, @function
_ZN5QListI7QStringED2Ev:
.LFB12907:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12907
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
	jmp	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4
	.cfi_endproc
.LFE12907:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5QListI7QStringED2Ev,"aG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LLSDA12907:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12907-.LLSDACSB12907
.LLSDACSB12907:
.LLSDACSE12907:
	.section	.text._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
	.size	_ZN5QListI7QStringED2Ev, .-_ZN5QListI7QStringED2Ev
	.section	.text.unlikely._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LCOLDE2:
	.section	.text._ZN5QListI7QStringED2Ev,"axG",@progbits,_ZN5QListI7QStringED5Ev,comdat
.LHOTE2:
	.weak	_ZN5QListI7QStringED1Ev
	.set	_ZN5QListI7QStringED1Ev,_ZN5QListI7QStringED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"default"
.LC4:
	.string	"[SUBSCRIBE FALIED] Result:"
.LC5:
	.string	"[SUBSCRIBE OKAY  ] Result: "
.LC6:
	.string	","
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZN15MessageReceiver11onSubscribeE10pubnub_res
	.type	_ZN15MessageReceiver11onSubscribeE10pubnub_res, @function
_ZN15MessageReceiver11onSubscribeE10pubnub_res:
.LFB12705:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12705
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	movq	%rdi, (%rsp)
	je	.L26
	movl	%esi, %edi
	leaq	32(%rsp), %r15
	leaq	80(%rsp), %r14
.LEHB0:
	call	pubnub_res_2_string@PLT
	movq	%rax, %rbp
	leaq	.LC3(%rip), %rax
	movq	%r14, %rsi
	movq	%r15, %rdi
	leaq	48(%rsp), %rbx
	movl	$2, 80(%rsp)
	movl	$0, 84(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	%rax, 104(%rsp)
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE0:
	leaq	.LC4(%rip), %rsi
	movl	$26, %edx
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE1:
	movq	32(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE2:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L31
	cmpl	$-1, %eax
	je	.L28
	lock subl	$1, (%rdi)
	je	.L155
.L28:
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L32
.L35:
	testq	%rbp, %rbp
	movl	$-1, %edx
	je	.L34
	movq	%rbp, %rdi
	call	strlen@PLT
	movl	%eax, %edx
.L34:
	leaq	64(%rsp), %rbx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE3:
	movq	32(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE4:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L42
	cmpl	$-1, %eax
	je	.L39
	lock subl	$1, (%rdi)
	je	.L156
.L39:
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L43
.L45:
	movq	%r15, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rsp)
	jmp	.L44
.L26:
	movq	(%rsp), %rax
	leaq	80(%rsp), %r14
	movq	%r14, %rdi
	movq	16(%rax), %rsi
.LEHB5:
	call	_ZNK9pubnub_qt7get_allEv@PLT
.LEHE5:
	movq	80(%rsp), %rax
	movq	%r14, %rdi
	movq	%rax, 32(%rsp)
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	%rax, 80(%rsp)
	call	_ZN5QListI7QStringED2Ev@PLT
	movq	32(%rsp), %rdx
	movl	12(%rdx), %eax
	subl	8(%rdx), %eax
	testl	%eax, %eax
	jle	.L157
	leaq	32(%rsp), %r15
	leaq	48(%rsp), %r12
	leaq	64(%rsp), %r13
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L70:
	movl	(%rdx), %eax
	cmpl	$1, %eax
	jbe	.L58
	movq	32(%rsp), %rax
	movq	%r15, %rdi
	movslq	8(%rax), %rdx
	movl	4(%rax), %esi
	leaq	16(%rax,%rdx,8), %rbx
.LEHB6:
	call	_ZN9QListData6detachEi@PLT
	movq	32(%rsp), %rdx
	leaq	16(%rdx), %rcx
	movslq	12(%rdx), %rsi
	movslq	8(%rdx), %rdx
	leaq	(%rcx,%rsi,8), %r8
	leaq	(%rcx,%rdx,8), %rdx
	cmpq	%rdx, %r8
	je	.L56
	.p2align 4,,10
	.p2align 3
.L141:
	testq	%rdx, %rdx
	je	.L54
	movq	(%rbx), %rsi
	movq	%rsi, (%rdx)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L54
	lock addl	$1, (%rsi)
.L54:
	addq	$8, %rdx
	addq	$8, %rbx
	cmpq	%rdx, %r8
	jne	.L141
.L56:
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L51
	cmpl	$-1, %edx
	je	.L149
	lock subl	$1, (%rax)
	je	.L51
.L149:
	movq	32(%rsp), %rdx
.L58:
	movslq	8(%rdx), %rax
	movq	%r14, %rsi
	movq	%r12, %rdi
	movl	$2, 80(%rsp)
	movl	$0, 84(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	addq	%rbp, %rax
	leaq	16(%rdx,%rax,8), %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, 104(%rsp)
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE6:
	leaq	.LC5(%rip), %rsi
	movl	$27, %edx
	movq	%r13, %rdi
.LEHB7:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE7:
	movq	48(%rsp), %rdi
	movq	%r13, %rsi
.LEHB8:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE8:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L63
	cmpl	$-1, %eax
	je	.L60
	lock subl	$1, (%rdi)
	je	.L158
.L60:
	movq	48(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L64
.L66:
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	movl	4(%rsi), %edx
	addq	16(%rsi), %rsi
.LEHB9:
	call	_ZN6QDebug9putStringEPK5QCharm@PLT
.LEHE9:
	movq	48(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L69
.L72:
	movq	%r12, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	32(%rsp), %rdx
	leal	1(%rbp), %ecx
	addq	$1, %rbp
	movl	12(%rdx), %eax
	subl	8(%rdx), %eax
	cmpl	%ecx, %eax
	jg	.L70
.L71:
	movq	%r15, %rdi
	call	_ZN5QListI7QStringED1Ev@PLT
.L44:
	movq	8(%rsp), %rax
	leaq	.LC6(%rip), %rdi
	movl	$1, %esi
	movq	%rax, 16(%rsp)
	movq	(%rsp), %rax
	movq	24(%rax), %r12
	movq	16(%rax), %r13
.LEHB10:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE10:
	movq	%rax, %rdx
	addq	16(%rax), %rdx
	leaq	16(%rsp), %rbp
	movl	4(%rax), %ecx
	movq	%r14, %rdi
	movq	%rax, 64(%rsp)
	movq	%rbp, %rsi
.LEHB11:
	call	_ZN9QtPrivate16QStringList_joinEPK11QStringListPK5QChari@PLT
.LEHE11:
	leaq	.LC6(%rip), %rdi
	movl	$1, %esi
.LEHB12:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE12:
	movq	%rax, %rdx
	addq	16(%rax), %rdx
	leaq	48(%rsp), %rbx
	movl	4(%rax), %ecx
	movq	%r12, %rsi
	movq	%rax, 32(%rsp)
	movq	%rbx, %rdi
.LEHB13:
	call	_ZN9QtPrivate16QStringList_joinEPK11QStringListPK5QChari@PLT
.LEHE13:
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
.LEHB14:
	call	_ZN9pubnub_qt9subscribeERK7QStringS2_@PLT
.LEHE14:
	movq	48(%rsp), %rdi
	movl	%eax, %r12d
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L77
	cmpl	$-1, %eax
	je	.L74
	lock subl	$1, (%rdi)
	je	.L159
.L74:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L82
.L78:
	cmpl	$-1, %eax
	je	.L79
	lock subl	$1, (%rdi)
	je	.L160
.L79:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L87
.L83:
	cmpl	$-1, %eax
	je	.L84
	lock subl	$1, (%rdi)
	je	.L161
.L84:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L92
	cmpl	$-1, %eax
	je	.L89
	lock subl	$1, (%rdi)
	je	.L162
.L89:
	movq	%rbp, %rdi
	call	_ZN5QListI7QStringED2Ev@PLT
	cmpl	$10, %r12d
	je	.L25
	movl	%r12d, %edi
.LEHB15:
	call	pubnub_res_2_string@PLT
	movq	%rax, %rbp
	leaq	.LC3(%rip), %rax
	movq	%r14, %rsi
	movq	%r15, %rdi
	movl	$2, 80(%rsp)
	movl	$0, 84(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	%rax, 104(%rsp)
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE15:
	leaq	.LC4(%rip), %rsi
	movl	$26, %edx
	movq	%rbx, %rdi
.LEHB16:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE16:
	movq	32(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB17:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE17:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L104
	cmpl	$-1, %eax
	je	.L101
	lock subl	$1, (%rdi)
	je	.L163
.L101:
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L105
.L108:
	testq	%rbp, %rbp
	movl	$-1, %edx
	je	.L107
	movq	%rbp, %rdi
	call	strlen@PLT
	movl	%eax, %edx
.L107:
	leaq	64(%rsp), %rbx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB18:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE18:
	movq	32(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB19:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE19:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L115
	cmpl	$-1, %eax
	je	.L112
	lock subl	$1, (%rdi)
	je	.L164
.L112:
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L116
.L117:
	movq	%r15, %rdi
	call	_ZN6QDebugD1Ev@PLT
.L25:
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L165
	addq	$136, %rsp
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
.L155:
	.cfi_restore_state
	movq	48(%rsp), %rdi
.L31:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L35
.L32:
	movl	$32, %esi
.LEHB20:
	call	_ZN11QTextStreamlsEc@PLT
.LEHE20:
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L69:
	movl	$32, %esi
.LEHB21:
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.LEHE21:
	jmp	.L66
.L158:
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rax, %rdi
.LEHB22:
	call	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4
.LEHE22:
	jmp	.L149
.L162:
	movq	64(%rsp), %rdi
.L92:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L89
.L159:
	movq	48(%rsp), %rdi
.L77:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L78
.L82:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L83
.L87:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L84
.L116:
	movl	$32, %esi
.LEHB23:
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L117
.L164:
	movq	64(%rsp), %rdi
.L115:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L112
.L105:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.LEHE23:
	jmp	.L108
.L163:
	movq	48(%rsp), %rdi
.L104:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L101
.L156:
	movq	64(%rsp), %rdi
.L42:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L45
.L43:
	movl	$32, %esi
.LEHB24:
	call	_ZN11QTextStreamlsEc@PLT
.LEHE24:
	jmp	.L45
.L157:
	leaq	32(%rsp), %r15
	jmp	.L71
.L121:
.L152:
	movq	%rax, %rbx
.L110:
	movq	%r15, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	%rbx, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.L126:
.L151:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L110
.L122:
	movq	%rax, %rbx
.L119:
	movq	%r15, %rdi
	call	_ZN5QListI7QStringED1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L123:
	movq	%rax, %rbx
.L68:
	movq	%r12, %rdi
	call	_ZN6QDebugD1Ev@PLT
	jmp	.L119
.L128:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L68
.L124:
	leaq	16(%rsp), %rbp
	movq	%rax, %rbx
.L99:
	movq	%rbp, %rdi
	call	_ZN5QListI7QStringED2Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE25:
.L129:
	movq	%rax, %rbx
.L98:
	leaq	64(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L99
.L130:
	movq	%rax, %rbx
.L97:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L98
.L131:
	movq	%rax, %rbx
.L96:
	movq	%r15, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L97
.L132:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r12, %rbx
	jmp	.L96
.L160:
	movq	32(%rsp), %rdi
	jmp	.L82
.L161:
	movq	80(%rsp), %rdi
	jmp	.L87
.L125:
	jmp	.L152
.L133:
	jmp	.L151
.L134:
	jmp	.L151
.L165:
	call	__stack_chk_fail@PLT
.L127:
	jmp	.L151
	.cfi_endproc
.LFE12705:
	.section	.gcc_except_table,"a",@progbits
.LLSDA12705:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12705-.LLSDACSB12705
.LLSDACSB12705:
	.uleb128 .LEHB0-.LFB12705
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12705
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L121-.LFB12705
	.uleb128 0
	.uleb128 .LEHB2-.LFB12705
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L126-.LFB12705
	.uleb128 0
	.uleb128 .LEHB3-.LFB12705
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L121-.LFB12705
	.uleb128 0
	.uleb128 .LEHB4-.LFB12705
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L127-.LFB12705
	.uleb128 0
	.uleb128 .LEHB5-.LFB12705
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB12705
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L122-.LFB12705
	.uleb128 0
	.uleb128 .LEHB7-.LFB12705
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L123-.LFB12705
	.uleb128 0
	.uleb128 .LEHB8-.LFB12705
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L128-.LFB12705
	.uleb128 0
	.uleb128 .LEHB9-.LFB12705
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L123-.LFB12705
	.uleb128 0
	.uleb128 .LEHB10-.LFB12705
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L124-.LFB12705
	.uleb128 0
	.uleb128 .LEHB11-.LFB12705
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L129-.LFB12705
	.uleb128 0
	.uleb128 .LEHB12-.LFB12705
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L130-.LFB12705
	.uleb128 0
	.uleb128 .LEHB13-.LFB12705
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L131-.LFB12705
	.uleb128 0
	.uleb128 .LEHB14-.LFB12705
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L132-.LFB12705
	.uleb128 0
	.uleb128 .LEHB15-.LFB12705
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB12705
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L125-.LFB12705
	.uleb128 0
	.uleb128 .LEHB17-.LFB12705
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L133-.LFB12705
	.uleb128 0
	.uleb128 .LEHB18-.LFB12705
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L125-.LFB12705
	.uleb128 0
	.uleb128 .LEHB19-.LFB12705
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L134-.LFB12705
	.uleb128 0
	.uleb128 .LEHB20-.LFB12705
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L121-.LFB12705
	.uleb128 0
	.uleb128 .LEHB21-.LFB12705
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L123-.LFB12705
	.uleb128 0
	.uleb128 .LEHB22-.LFB12705
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L122-.LFB12705
	.uleb128 0
	.uleb128 .LEHB23-.LFB12705
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L125-.LFB12705
	.uleb128 0
	.uleb128 .LEHB24-.LFB12705
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L121-.LFB12705
	.uleb128 0
	.uleb128 .LEHB25-.LFB12705
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE12705:
	.text
	.size	_ZN15MessageReceiver11onSubscribeE10pubnub_res, .-_ZN15MessageReceiver11onSubscribeE10pubnub_res
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
	.align 2
.LCOLDB8:
	.section	.text._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
.LHOTB8:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI7QStringE18detach_helper_growEii
	.type	_ZN5QListI7QStringE18detach_helper_growEii, @function
_ZN5QListI7QStringE18detach_helper_growEii:
.LFB13141:
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
	je	.L167
	movq	%r12, %r9
	.p2align 4,,10
	.p2align 3
.L171:
	testq	%rcx, %rcx
	je	.L169
	movq	(%r9), %rsi
	movq	%rsi, (%rcx)
	movl	(%rsi), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L169
	lock addl	$1, (%rsi)
.L169:
	addq	$8, %rcx
	addq	$8, %r9
	cmpq	%rcx, %r10
	jne	.L171
	movq	(%rbx), %r9
	movslq	12(%rsp), %rdi
	movslq	8(%r9), %rsi
	leaq	16(%r9), %r11
	leaq	0(,%rdi,8), %r8
	salq	$3, %rsi
.L167:
	movslq	12(%r9), %rdx
	addq	%rbp, %rdi
	addq	%r12, %r8
	leaq	(%r11,%rdx,8), %r9
	leaq	(%rsi,%rdi,8), %rdx
	addq	%r11, %rdx
	cmpq	%r9, %rdx
	je	.L178
	.p2align 4,,10
	.p2align 3
.L186:
	testq	%rdx, %rdx
	je	.L176
	movq	(%r8), %rsi
	movq	%rsi, (%rdx)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L176
	lock addl	$1, (%rsi)
.L176:
	addq	$8, %rdx
	addq	$8, %r8
	cmpq	%r9, %rdx
	jne	.L186
.L178:
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L173
	cmpl	$-1, %edx
	je	.L180
	lock subl	$1, (%rax)
	je	.L173
.L180:
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
.L173:
	.cfi_restore_state
	movq	%rax, %rdi
	call	_ZN5QListI7QStringE7deallocEPN9QListData4DataE.isra.4
	jmp	.L180
	.cfi_endproc
.LFE13141:
	.size	_ZN5QListI7QStringE18detach_helper_growEii, .-_ZN5QListI7QStringE18detach_helper_growEii
	.section	.text.unlikely._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
.LCOLDE8:
	.section	.text._ZN5QListI7QStringE18detach_helper_growEii,"axG",@progbits,_ZN5QListI7QStringE18detach_helper_growEii,comdat
.LHOTE8:
	.section	.text.unlikely._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
	.align 2
.LCOLDB9:
	.section	.text._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
.LHOTB9:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI7QStringE6appendERKS0_
	.type	_ZN5QListI7QStringE6appendERKS0_, @function
_ZN5QListI7QStringE6appendERKS0_:
.LFB12909:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12909
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
	jbe	.L191
	movl	$1, %edx
	movl	$2147483647, %esi
.LEHB26:
	call	_ZN5QListI7QStringE18detach_helper_growEii@PLT
.LEHE26:
	testq	%rax, %rax
	je	.L190
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L190
	lock addl	$1, (%rdx)
.L190:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L202
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	.cfi_restore_state
	movq	(%rsi), %rdx
	movq	%rdx, (%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L195
	lock addl	$1, (%rdx)
.L195:
.LEHB27:
	call	_ZN9QListData6appendEv@PLT
.LEHE27:
	movq	(%rsp), %rdx
	movq	%rdx, (%rax)
	jmp	.L190
.L202:
	call	__stack_chk_fail@PLT
.L199:
.L196:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rsp, %rdi
	call	_ZN7QStringD1Ev@PLT
.LEHB28:
	call	__cxa_rethrow@PLT
.LEHE28:
.L200:
	movq	%rax, %rbx
.L197:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
	.cfi_endproc
.LFE12909:
	.section	.gcc_except_table
	.align 4
.LLSDA12909:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12909-.LLSDATTD12909
.LLSDATTD12909:
	.byte	0x1
	.uleb128 .LLSDACSE12909-.LLSDACSB12909
.LLSDACSB12909:
	.uleb128 .LEHB26-.LFB12909
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB12909
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L199-.LFB12909
	.uleb128 0x1
	.uleb128 .LEHB28-.LFB12909
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L200-.LFB12909
	.uleb128 0
	.uleb128 .LEHB29-.LFB12909
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE12909:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT12909:
	.section	.text._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
	.size	_ZN5QListI7QStringE6appendERKS0_, .-_ZN5QListI7QStringE6appendERKS0_
	.section	.text.unlikely._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
.LCOLDE9:
	.section	.text._ZN5QListI7QStringE6appendERKS0_,"axG",@progbits,_ZN5QListI7QStringE6appendERKS0_,comdat
.LHOTE9:
	.section	.rodata.str1.1
.LC10:
	.string	"testCh"
.LC11:
	.string	"1onSubscribe(pubnub_res)"
.LC12:
	.string	"2outcome(pubnub_res)"
	.section	.text.unlikely
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4,,15
	.globl	_ZN15MessageReceiverC2EP7QObject
	.type	_ZN15MessageReceiverC2EP7QObject, @function
_ZN15MessageReceiverC2EP7QObject:
.LFB12703:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12703
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
.LEHB30:
	call	_ZN7QObjectC2EPS_@PLT
.LEHE30:
	movq	_ZTV15MessageReceiver@GOTPCREL(%rip), %rax
	movq	$0, 16(%rbx)
	movl	$8, %edi
	addq	$16, %rax
	movq	%rax, (%rbx)
.LEHB31:
	call	_Znwm@PLT
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %r13
	leaq	.LC10(%rip), %rdi
	movq	%rax, 24(%rbx)
	movl	$6, %esi
	movq	%r13, (%rax)
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE31:
	leaq	80(%rsp), %rbp
	movq	24(%rbx), %rdi
	movq	%rax, 80(%rsp)
	movq	%rbp, %rsi
.LEHB32:
	call	_ZN5QListI7QStringE6appendERKS0_@PLT
.LEHE32:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L208
	cmpl	$-1, %eax
	je	.L205
	lock subl	$1, (%rdi)
	je	.L273
.L205:
	movq	_ZN4KeysL9pnPublishE(%rip), %rdx
	movq	%rdx, 64(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L209
	lock addl	$1, (%rdx)
.L209:
	movq	_ZN4KeysL11pnSubscribeE(%rip), %rdx
	movq	%rdx, 80(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L210
	lock addl	$1, (%rdx)
.L210:
	movl	$120, %edi
.LEHB33:
	call	_Znwm@PLT
.LEHE33:
	leaq	64(%rsp), %r12
	movq	%rbp, %rdx
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%r12, %rsi
.LEHB34:
	call	_ZN9pubnub_qtC1E7QStringS0_@PLT
.LEHE34:
	movq	16(%rbx), %rdi
	cmpq	%rdi, %r14
	je	.L212
	testq	%rdi, %rdi
	movq	%r14, 16(%rbx)
	je	.L212
	movq	(%rdi), %rax
	call	*32(%rax)
.L212:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L218
	cmpl	$-1, %eax
	je	.L215
	lock subl	$1, (%rdi)
	je	.L274
.L215:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L223
	cmpl	$-1, %eax
	je	.L220
	lock subl	$1, (%rdi)
	je	.L275
.L220:
	movq	16(%rbx), %rsi
	leaq	.LC11(%rip), %r8
	leaq	.LC12(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%r12, %rdi
.LEHB35:
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
.LEHE35:
	movq	%r12, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	movq	16(%rbx), %rax
	leaq	.LC6(%rip), %rdi
	movl	$1, %esi
	movq	%r13, 16(%rsp)
	movq	24(%rbx), %r15
	movq	%rax, 8(%rsp)
.LEHB36:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE36:
	movq	%rax, %rdx
	addq	16(%rax), %rdx
	leaq	16(%rsp), %r13
	movl	4(%rax), %ecx
	movq	%rbp, %rdi
	movq	%rax, 64(%rsp)
	movq	%r13, %rsi
.LEHB37:
	call	_ZN9QtPrivate16QStringList_joinEPK11QStringListPK5QChari@PLT
.LEHE37:
	leaq	.LC6(%rip), %rdi
	movl	$1, %esi
.LEHB38:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE38:
	movq	%rax, %rdx
	addq	16(%rax), %rdx
	leaq	48(%rsp), %r14
	movl	4(%rax), %ecx
	movq	%r15, %rsi
	movq	%rax, 32(%rsp)
	movq	%r14, %rdi
.LEHB39:
	call	_ZN9QtPrivate16QStringList_joinEPK11QStringListPK5QChari@PLT
.LEHE39:
	movq	8(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%r14, %rsi
.LEHB40:
	call	_ZN9pubnub_qt9subscribeERK7QStringS2_@PLT
.LEHE40:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L228
	cmpl	$-1, %eax
	je	.L225
	lock subl	$1, (%rdi)
	je	.L276
.L225:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L233
	cmpl	$-1, %eax
	je	.L230
	lock subl	$1, (%rdi)
	je	.L277
.L230:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L238
.L234:
	cmpl	$-1, %eax
	je	.L235
	lock subl	$1, (%rdi)
	je	.L278
.L235:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L243
.L239:
	cmpl	$-1, %eax
	je	.L240
	lock subl	$1, (%rdi)
	je	.L279
.L240:
	movq	%r13, %rdi
	call	_ZN5QListI7QStringED2Ev@PLT
	movq	88(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L280
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
.L275:
	.cfi_restore_state
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L223:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L220
.L274:
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L218:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L215
.L273:
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L208:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L205
.L277:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L233:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L234
.L238:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L239
.L243:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L240
.L276:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L228:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L225
.L280:
	call	__stack_chk_fail@PLT
.L255:
	movq	%rax, %rbp
.L250:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L253
	movq	(%rdi), %rax
	call	*32(%rax)
.L253:
	movq	%rbx, %rdi
	call	_ZN7QObjectD2Ev@PLT
	movq	%rbp, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.LEHE41:
.L257:
	leaq	64(%rsp), %r12
	movq	%rax, %r13
.L252:
	movq	%rbp, %rdi
	movq	%r13, %rbp
	call	_ZN7QStringD1Ev@PLT
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L250
.L259:
	leaq	16(%rsp), %r13
	movq	%rax, %rbp
.L248:
	movq	%r13, %rdi
	call	_ZN5QListI7QStringED2Ev@PLT
	jmp	.L250
.L258:
	movq	%r14, %rdi
	movq	%rax, %r13
	call	_ZdlPv@PLT
	jmp	.L252
.L256:
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r12, %rbp
	jmp	.L250
.L263:
	movq	%rax, %r15
	movq	%r14, %rdi
	movq	%r15, %r14
	call	_ZN7QStringD1Ev@PLT
.L245:
	leaq	32(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L246:
	movq	%rbp, %rdi
	movq	%r14, %rbp
	call	_ZN7QStringD1Ev@PLT
.L247:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L248
.L262:
	movq	%rax, %r14
	jmp	.L245
.L261:
	movq	%rax, %r14
	jmp	.L246
.L260:
	movq	%rax, %rbp
	jmp	.L247
.L279:
	movq	64(%rsp), %rdi
	jmp	.L243
.L278:
	movq	80(%rsp), %rdi
	jmp	.L238
	.cfi_endproc
.LFE12703:
	.section	.gcc_except_table
.LLSDA12703:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12703-.LLSDACSB12703
.LLSDACSB12703:
	.uleb128 .LEHB30-.LFB12703
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB12703
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L255-.LFB12703
	.uleb128 0
	.uleb128 .LEHB32-.LFB12703
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L256-.LFB12703
	.uleb128 0
	.uleb128 .LEHB33-.LFB12703
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L257-.LFB12703
	.uleb128 0
	.uleb128 .LEHB34-.LFB12703
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L258-.LFB12703
	.uleb128 0
	.uleb128 .LEHB35-.LFB12703
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L255-.LFB12703
	.uleb128 0
	.uleb128 .LEHB36-.LFB12703
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L259-.LFB12703
	.uleb128 0
	.uleb128 .LEHB37-.LFB12703
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L260-.LFB12703
	.uleb128 0
	.uleb128 .LEHB38-.LFB12703
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L261-.LFB12703
	.uleb128 0
	.uleb128 .LEHB39-.LFB12703
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L262-.LFB12703
	.uleb128 0
	.uleb128 .LEHB40-.LFB12703
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L263-.LFB12703
	.uleb128 0
	.uleb128 .LEHB41-.LFB12703
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE12703:
	.text
	.size	_ZN15MessageReceiverC2EP7QObject, .-_ZN15MessageReceiverC2EP7QObject
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.globl	_ZN15MessageReceiverC1EP7QObject
	.set	_ZN15MessageReceiverC1EP7QObject,_ZN15MessageReceiverC2EP7QObject
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC14:
	.string	"sub-c-0c523a04-d172-11e6-b045-02ee2ddab7fe"
	.align 8
.LC15:
	.string	"pub-c-ed602478-ff17-43d0-bffc-8a7bbf288bec"
	.section	.text.unlikely
.LCOLDB16:
	.section	.text.startup,"ax",@progbits
.LHOTB16:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_messagereceiver.cpp, @function
_GLOBAL__sub_I_messagereceiver.cpp:
.LFB13741:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC14(%rip), %rdi
	movl	$42, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	_ZN7QStringD1Ev@GOTPCREL(%rip), %rbx
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZN4KeysL11pnSubscribeE(%rip), %rsi
	movq	%rax, _ZN4KeysL11pnSubscribeE(%rip)
	movq	%rbx, %rdi
	call	__cxa_atexit@PLT
	leaq	.LC15(%rip), %rdi
	movl	$42, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	%rbx, %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZN4KeysL9pnPublishE(%rip), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	%rax, _ZN4KeysL9pnPublishE(%rip)
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE13741:
	.size	_GLOBAL__sub_I_messagereceiver.cpp, .-_GLOBAL__sub_I_messagereceiver.cpp
	.section	.text.unlikely
.LCOLDE16:
	.section	.text.startup
.LHOTE16:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_messagereceiver.cpp
	.local	_ZN4KeysL9pnPublishE
	.comm	_ZN4KeysL9pnPublishE,8,8
	.local	_ZN4KeysL11pnSubscribeE
	.comm	_ZN4KeysL11pnSubscribeE,8,8
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

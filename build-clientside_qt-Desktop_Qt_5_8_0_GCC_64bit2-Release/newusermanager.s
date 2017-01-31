	.file	"newusermanager.cpp"
#APP
	.section .qtversion, "aG", @progbits, qt_version_tag, comdat
.align 8
.quad qt_version_tag@GOT
.long ((5<<16)|(8<<8)|(0))
.align 8
.previous
#NO_APP
	.section	.text.unlikely._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZN10QByteArrayD2Ev
	.type	_ZN10QByteArrayD2Ev, @function
_ZN10QByteArrayD2Ev:
.LFB9157:
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
	movl	$1, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9157:
	.size	_ZN10QByteArrayD2Ev, .-_ZN10QByteArrayD2Ev
	.section	.text.unlikely._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LCOLDE0:
	.section	.text._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LHOTE0:
	.weak	_ZN10QByteArrayD1Ev
	.set	_ZN10QByteArrayD1Ev,_ZN10QByteArrayD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
	.align 2
.LCOLDB1:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTB1:
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
	je	.L13
	cmpl	$-1, %edx
	je	.L8
	lock subl	$1, (%rax)
	je	.L13
.L8:
	rep ret
	.p2align 4,,10
	.p2align 3
.L13:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$2, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9465:
	.size	_ZN7QStringD2Ev, .-_ZN7QStringD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LCOLDE1:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTE1:
	.weak	_ZN7QStringD1Ev
	.set	_ZN7QStringD1Ev,_ZN7QStringD2Ev
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManagerC2EP7QObject
	.type	_ZN14NewUserManagerC2EP7QObject, @function
_ZN14NewUserManagerC2EP7QObject:
.LFB12681:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12681
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
.LEHB0:
	call	_ZN7QObjectC2EPS_@PLT
.LEHE0:
	movq	_ZTV14NewUserManager@GOTPCREL(%rip), %rax
	movl	$16, %edi
	addq	$16, %rax
	movq	%rax, (%rbx)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB2:
	call	_ZN21QNetworkAccessManagerC1EP7QObject@PLT
.LEHE2:
	movq	%rbp, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	movq	%rax, %rbp
.L16:
	movq	%rbx, %rdi
	call	_ZN7QObjectD2Ev@PLT
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L18:
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	_ZdlPv@PLT
	movq	%r12, %rbp
	jmp	.L16
	.cfi_endproc
.LFE12681:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA12681:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12681-.LLSDACSB12681
.LLSDACSB12681:
	.uleb128 .LEHB0-.LFB12681
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12681
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB12681
	.uleb128 0
	.uleb128 .LEHB2-.LFB12681
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L18-.LFB12681
	.uleb128 0
	.uleb128 .LEHB3-.LFB12681
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE12681:
	.text
	.size	_ZN14NewUserManagerC2EP7QObject, .-_ZN14NewUserManagerC2EP7QObject
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.globl	_ZN14NewUserManagerC1EP7QObject
	.set	_ZN14NewUserManagerC1EP7QObject,_ZN14NewUserManagerC2EP7QObject
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b"
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager17testUsernameEmailE7QString
	.type	_ZN14NewUserManager17testUsernameEmailE7QString, @function
_ZN14NewUserManager17testUsernameEmailE7QString:
.LFB12683:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12683
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC3(%rip), %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %r12
	movl	$42, %esi
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	leaq	16(%rsp), %rbp
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB4:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE4:
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, 16(%rsp)
.LEHB5:
	call	_ZN7QRegExpC1ERK7QStringN2Qt15CaseSensitivityENS_13PatternSyntaxE@PLT
.LEHE5:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L26
	cmpl	$-1, %eax
	je	.L23
	lock subl	$1, (%rdi)
	je	.L35
.L23:
	xorl	%esi, %esi
	movq	%rbx, %rdi
.LEHB6:
	call	_ZN7QRegExp18setCaseSensitivityEN2Qt15CaseSensitivityE@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_ZN7QRegExp16setPatternSyntaxENS_13PatternSyntaxE@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNK7QRegExp10exactMatchERK7QString@PLT
.LEHE6:
	movq	%rbx, %rdi
	movl	%eax, %ebp
	call	_ZN7QRegExpD1Ev@PLT
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebp, %eax
	jne	.L36
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
.L35:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L26:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L23
.L36:
	call	__stack_chk_fail@PLT
.L30:
	movq	%rax, %rbx
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L31:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN7QRegExpD1Ev@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE12683:
	.section	.gcc_except_table
.LLSDA12683:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12683-.LLSDACSB12683
.LLSDACSB12683:
	.uleb128 .LEHB4-.LFB12683
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB12683
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L30-.LFB12683
	.uleb128 0
	.uleb128 .LEHB6-.LFB12683
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L31-.LFB12683
	.uleb128 0
	.uleb128 .LEHB7-.LFB12683
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE12683:
	.text
	.size	_ZN14NewUserManager17testUsernameEmailE7QString, .-_ZN14NewUserManager17testUsernameEmailE7QString
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"https://telepool-144405.appspot.com/api/v0/test_un_uniq"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"application/json"
.LC7:
	.string	"Content-Type"
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager18testUsernameUniqueE7QString
	.type	_ZN14NewUserManager18testUsernameUniqueE7QString, @function
_ZN14NewUserManager18testUsernameUniqueE7QString:
.LFB12684:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12684
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	leaq	48(%rsp), %rbx
	movq	%rsp, %rbp
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rbx, %rdi
.LEHB8:
	call	_ZN4QUrlC1Ev@PLT
.LEHE8:
	movq	%rbx, %rsi
	movq	%rsp, %rdi
.LEHB9:
	call	_ZN15QNetworkRequestC1ERK4QUrl@PLT
.LEHE9:
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	leaq	.LC5(%rip), %rdi
	movl	$55, %esi
.LEHB10:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE10:
	leaq	16(%rsp), %r12
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rax, 48(%rsp)
	movq	%r12, %rdi
.LEHB11:
	call	_ZN4QUrlC1ERK7QStringNS_11ParsingModeE@PLT
.LEHE11:
	movq	%r12, %rsi
	movq	%rsp, %rdi
.LEHB12:
	call	_ZN15QNetworkRequest6setUrlERK4QUrl@PLT
.LEHE12:
	movq	%r12, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L42
	cmpl	$-1, %eax
	je	.L39
	lock subl	$1, (%rdi)
	je	.L69
.L39:
	leaq	.LC6(%rip), %rsi
	movl	$-1, %edx
	movq	%rbx, %rdi
.LEHB13:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE13:
	leaq	32(%rsp), %r12
	leaq	.LC7(%rip), %rsi
	movl	$-1, %edx
	movq	%r12, %rdi
.LEHB14:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE14:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB15:
	call	_ZN15QNetworkRequest12setRawHeaderERK10QByteArrayS2_@PLT
.LEHE15:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L47
	cmpl	$-1, %eax
	je	.L44
	lock subl	$1, (%rdi)
	je	.L70
.L44:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L52
.L48:
	cmpl	$-1, %eax
	je	.L49
	lock subl	$1, (%rdi)
	je	.L71
.L49:
	movq	%rbp, %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	$1, %eax
	jne	.L72
	addq	$72, %rsp
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
.L70:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L48
.L52:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L49
.L69:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L42:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L39
.L72:
	call	__stack_chk_fail@PLT
.L65:
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%r13, %r12
	call	_ZN10QByteArrayD1Ev@PLT
.L58:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L56:
	movq	%rbp, %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	%rbx, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.L64:
	movq	%rax, %r12
	jmp	.L58
.L63:
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%r13, %r12
	call	_ZN4QUrlD1Ev@PLT
.L55:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L56
.L60:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE16:
.L62:
	movq	%rax, %r12
	jmp	.L55
.L61:
	movq	%rax, %rbx
	jmp	.L56
.L71:
	movq	48(%rsp), %rdi
	jmp	.L52
	.cfi_endproc
.LFE12684:
	.section	.gcc_except_table
.LLSDA12684:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12684-.LLSDACSB12684
.LLSDACSB12684:
	.uleb128 .LEHB8-.LFB12684
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB12684
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L60-.LFB12684
	.uleb128 0
	.uleb128 .LEHB10-.LFB12684
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L61-.LFB12684
	.uleb128 0
	.uleb128 .LEHB11-.LFB12684
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L62-.LFB12684
	.uleb128 0
	.uleb128 .LEHB12-.LFB12684
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L63-.LFB12684
	.uleb128 0
	.uleb128 .LEHB13-.LFB12684
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L61-.LFB12684
	.uleb128 0
	.uleb128 .LEHB14-.LFB12684
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L64-.LFB12684
	.uleb128 0
	.uleb128 .LEHB15-.LFB12684
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L65-.LFB12684
	.uleb128 0
	.uleb128 .LEHB16-.LFB12684
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE12684:
	.text
	.size	_ZN14NewUserManager18testUsernameUniqueE7QString, .-_ZN14NewUserManager18testUsernameUniqueE7QString
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"Creating new account..."
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"https://telepool-144405.appspot.com/api/v1/create_user"
	.section	.rodata.str1.1
.LC11:
	.string	"email"
.LC12:
	.string	"password"
.LC13:
	.string	"1quit()"
.LC14:
	.string	"2finished()"
.LC15:
	.string	"status"
.LC16:
	.string	"SUCCESS"
.LC17:
	.string	"OKAY"
.LC18:
	.string	" to enable it!"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Account successfully created. Please check your email "
	.section	.text.unlikely
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NewUserManager10createUserE7QStringS0_
	.type	_ZN14NewUserManager10createUserE7QStringS0_, @function
_ZN14NewUserManager10createUserE7QStringS0_:
.LFB12685:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12685
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.LC9(%rip), %rdi
	movq	%rdx, %r13
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	leaq	384(%rsp), %rbx
	movq	%rsi, 24(%rsp)
	movl	$23, %esi
	movq	%fs:40, %rax
	movq	%rax, 408(%rsp)
	xorl	%eax, %eax
.LEHB17:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE17:
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 384(%rsp)
.LEHB18:
	call	_ZN14NewUserManager12loadingStartE7QString@PLT
.LEHE18:
	movq	384(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L78
	cmpl	$-1, %eax
	je	.L75
	lock subl	$1, (%rdi)
	je	.L224
.L75:
	leaq	48(%rsp), %r15
	movq	%rbx, %rdi
.LEHB19:
	call	_ZN4QUrlC1Ev@PLT
.LEHE19:
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	%r15, (%rsp)
.LEHB20:
	call	_ZN15QNetworkRequestC1ERK4QUrl@PLT
.LEHE20:
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	leaq	.LC10(%rip), %rdi
	movl	$54, %esi
.LEHB21:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE21:
	leaq	64(%rsp), %rbp
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rax, 384(%rsp)
	movq	%rbp, %rdi
.LEHB22:
	call	_ZN4QUrlC1ERK7QStringNS_11ParsingModeE@PLT
.LEHE22:
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB23:
	call	_ZN15QNetworkRequest6setUrlERK4QUrl@PLT
.LEHE23:
	movq	%rbp, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	384(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L83
	cmpl	$-1, %eax
	je	.L80
	lock subl	$1, (%rdi)
	je	.L225
.L80:
	leaq	96(%rsp), %rbp
	leaq	.LC6(%rip), %rsi
	movl	$-1, %edx
	movq	%rbp, %rdi
.LEHB24:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE24:
	leaq	80(%rsp), %r14
	leaq	.LC7(%rip), %rsi
	movl	$-1, %edx
	movq	%r14, %rdi
.LEHB25:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE25:
	movq	(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%r14, %rsi
.LEHB26:
	call	_ZN15QNetworkRequest12setRawHeaderERK10QByteArrayS2_@PLT
.LEHE26:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L88
	cmpl	$-1, %eax
	je	.L85
	lock subl	$1, (%rdi)
	je	.L226
.L85:
	movq	96(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L93
	cmpl	$-1, %eax
	je	.L90
	lock subl	$1, (%rdi)
	je	.L227
.L90:
	leaq	272(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, 8(%rsp)
.LEHB27:
	call	_ZN11QJsonObjectC1Ev@PLT
.LEHE27:
	leaq	320(%rsp), %rbp
	movq	24(%rsp), %rsi
	movq	%rbp, %rdi
.LEHB28:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE28:
	leaq	.LC11(%rip), %rdi
	movl	$5, %esi
.LEHB29:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE29:
	leaq	352(%rsp), %r15
	movq	%r14, %rdi
	movq	%rax, 352(%rsp)
	movq	%r15, %rsi
.LEHB30:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 384(%rsp)
	movq	%rdx, 392(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE30:
	movq	352(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L98
	cmpl	$-1, %eax
	je	.L95
	lock subl	$1, (%rdi)
	je	.L228
.L95:
	movq	%rbp, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%r13, %rsi
	movq	%r15, %rdi
.LEHB31:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE31:
	leaq	.LC12(%rip), %rdi
	movl	$8, %esi
.LEHB32:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE32:
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rax, 320(%rsp)
.LEHB33:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r15, %rsi
	movq	%rbx, %rdi
	movq	%rax, 384(%rsp)
	movq	%rdx, 392(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE33:
	movq	320(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L103
	cmpl	$-1, %eax
	je	.L100
	lock subl	$1, (%rdi)
	je	.L229
.L100:
	movq	%r15, %rdi
	leaq	112(%rsp), %r13
	call	_ZN10QJsonValueD1Ev@PLT
	movq	8(%rsp), %rsi
	movq	%r13, %rdi
.LEHB34:
	call	_ZN13QJsonDocumentC1ERK11QJsonObject@PLT
.LEHE34:
	leaq	128(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB35:
	call	_ZNK13QJsonDocument6toJsonEv@PLT
.LEHE35:
	movq	16(%r12), %rdi
	movq	(%rsp), %rsi
	movq	%r14, %rdx
.LEHB36:
	call	_ZN21QNetworkAccessManager4postERK15QNetworkRequestRK10QByteArray@PLT
.LEHE36:
	movq	128(%rsp), %rdi
	movq	%rax, 16(%rsp)
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L108
	cmpl	$-1, %eax
	je	.L105
	lock subl	$1, (%rdi)
	je	.L230
.L105:
	movq	%r13, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	leaq	288(%rsp), %rax
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, 32(%rsp)
.LEHB37:
	call	_ZN10QEventLoopC1EP7QObject@PLT
.LEHE37:
	leaq	144(%rsp), %r13
	movq	16(%rsp), %rsi
	leaq	.LC13(%rip), %r8
	leaq	.LC14(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r13, %rdi
.LEHB38:
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
	movq	%r13, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_ZN10QEventLoop4execE6QFlagsINS_17ProcessEventsFlagEE@PLT
	leaq	160(%rsp), %rax
	movq	16(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, 40(%rsp)
	call	_ZN9QIODevice7readAllEv@PLT
.LEHE38:
	leaq	176(%rsp), %r14
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB39:
	call	_ZN13QJsonDocument8fromJsonERK10QByteArrayP15QJsonParseError@PLT
.LEHE39:
	leaq	304(%rsp), %r13
	movq	%r14, %rsi
	movq	%r13, %rdi
.LEHB40:
	call	_ZNK13QJsonDocument6objectEv@PLT
.LEHE40:
	movq	%r14, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	movq	160(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L113
	cmpl	$-1, %eax
	je	.L110
	lock subl	$1, (%rdi)
	je	.L231
.L110:
	movq	16(%rsp), %rdi
.LEHB41:
	call	_ZN7QObject11deleteLaterEv@PLT
	leaq	.LC15(%rip), %rdi
	movl	$6, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE41:
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%rax, 320(%rsp)
.LEHB42:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r15, %rsi
	movq	%rbx, %rdi
	movq	%rax, 352(%rsp)
	movq	%rdx, 360(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE42:
	leaq	208(%rsp), %r14
	movq	%rbx, %rsi
	movq	%r14, %rdi
.LEHB43:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE43:
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	192(%rsp), %rax
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
.LEHB44:
	call	_ZN7QString14trimmed_helperERS_@PLT
.LEHE44:
	movq	208(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L121
	cmpl	$-1, %eax
	je	.L118
	lock subl	$1, (%rdi)
	je	.L232
.L118:
	movq	320(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L126
.L122:
	cmpl	$-1, %eax
	je	.L123
	lock subl	$1, (%rdi)
	je	.L233
.L123:
	movq	192(%rsp), %rdi
	leaq	.LC16(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
.LEHB45:
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
	testl	%eax, %eax
	jne	.L234
.L127:
	leaq	224(%rsp), %rbp
	leaq	.LC19(%rip), %rsi
	movl	$54, %edx
	movq	%rbp, %rdi
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE45:
	movq	24(%rsp), %rsi
	movq	%rbp, %rdi
.LEHB46:
	call	_ZN7QString6appendERKS_@PLT
.LEHE46:
	movq	224(%rsp), %rdx
	movq	%rdx, 240(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L132
	lock addl	$1, (%rdx)
.L132:
	leaq	256(%rsp), %r15
	leaq	.LC18(%rip), %rsi
	movl	$14, %edx
	movq	%r15, %rdi
.LEHB47:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE47:
	leaq	240(%rsp), %r14
	movq	%r15, %rsi
	movq	%r14, %rdi
.LEHB48:
	call	_ZN7QString6appendERKS_@PLT
.LEHE48:
	movq	256(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L137
	cmpl	$-1, %eax
	je	.L134
	lock subl	$1, (%rdi)
	je	.L235
.L134:
	movq	16(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZN7QStringaSERKS_@PLT
	movq	240(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L144
	cmpl	$-1, %eax
	je	.L139
	lock subl	$1, (%rdi)
	je	.L236
.L139:
	movq	224(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L149
	cmpl	$-1, %eax
	je	.L128
	lock subl	$1, (%rdi)
	je	.L237
.L128:
	movq	192(%rsp), %rdx
	movq	%rdx, 384(%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L150
	lock addl	$1, (%rdx)
.L150:
	movq	%rbx, %rsi
	movq	%r12, %rdi
.LEHB49:
	call	_ZN14NewUserManager18createUserCompleteE7QString@PLT
.LEHE49:
	movq	384(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L155
	cmpl	$-1, %eax
	je	.L152
	lock subl	$1, (%rdi)
	je	.L238
.L152:
	movq	%r12, %rdi
.LEHB50:
	call	_ZN14NewUserManager11loadingStopEv@PLT
	movq	192(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L160
	cmpl	$-1, %eax
	je	.L157
	lock subl	$1, (%rdi)
	je	.L239
.L157:
	movq	%r13, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	32(%rsp), %rdi
	call	_ZN10QEventLoopD1Ev@PLT
	movq	8(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	(%rsp), %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	408(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L240
	addq	$424, %rsp
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
.L239:
	.cfi_restore_state
	movq	192(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L160:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L157
.L238:
	movq	384(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L155:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L152
.L225:
	movq	384(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L83:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L80
.L224:
	movq	384(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L78:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L75
.L232:
	movq	208(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L121:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	320(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L122
.L126:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L123
.L231:
	movq	160(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L113:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L110
.L227:
	movq	96(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L93:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L90
.L226:
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L88:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L85
.L228:
	movq	352(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L98:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L95
.L230:
	movq	128(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L108:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L105
.L229:
	movq	320(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L103:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L234:
	movq	192(%rsp), %rdi
	leaq	.LC17(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
.LEHE50:
	testl	%eax, %eax
	je	.L127
	jmp	.L128
.L235:
	movq	256(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L137:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L134
.L237:
	movq	224(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L149:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L128
.L236:
	movq	240(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L144:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L139
.L240:
	call	__stack_chk_fail@PLT
.L200:
	movq	%rax, %rbx
.L179:
	movq	%r13, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L177:
	movq	32(%rsp), %rdi
	call	_ZN10QEventLoopD1Ev@PLT
.L170:
	movq	8(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L165:
	movq	(%rsp), %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	%rbx, %rdi
.LEHB51:
	call	_Unwind_Resume@PLT
.L205:
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
.L116:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L179
.L201:
	movq	%rax, %rbx
	jmp	.L116
.L194:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L172:
	movq	%r15, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L170
.L193:
	movq	%rax, %rbx
	jmp	.L172
.L184:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.L206:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L131:
	movq	16(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L179
.L187:
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN4QUrlD1Ev@PLT
.L164:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L165
.L183:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE51:
.L208:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L141:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L131
.L207:
	movq	%rax, %rbx
	leaq	240(%rsp), %r14
	jmp	.L141
.L202:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L116
.L199:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN13QJsonDocumentD1Ev@PLT
.L176:
	movq	40(%rsp), %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L177
.L198:
	movq	%rax, %rbx
	jmp	.L176
.L197:
	movq	%rax, %rbx
	jmp	.L177
.L186:
	movq	%rax, %rbp
	jmp	.L164
.L185:
	movq	%rax, %rbx
	jmp	.L165
.L196:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L174:
	movq	%r13, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	jmp	.L170
.L195:
	movq	%rax, %rbx
	jmp	.L174
.L233:
	movq	320(%rsp), %rdi
	jmp	.L126
.L189:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L167:
	movq	%rbp, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L165
.L192:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L169:
	movq	%rbp, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L170
.L191:
	movq	%rax, %rbx
	jmp	.L169
.L190:
	movq	%rax, %rbx
	jmp	.L170
.L203:
	movq	%rax, %rbx
	jmp	.L131
.L188:
	movq	%rax, %rbx
	jmp	.L167
.L204:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L131
	.cfi_endproc
.LFE12685:
	.section	.gcc_except_table
.LLSDA12685:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12685-.LLSDACSB12685
.LLSDACSB12685:
	.uleb128 .LEHB17-.LFB12685
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB12685
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L183-.LFB12685
	.uleb128 0
	.uleb128 .LEHB19-.LFB12685
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB12685
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L184-.LFB12685
	.uleb128 0
	.uleb128 .LEHB21-.LFB12685
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L185-.LFB12685
	.uleb128 0
	.uleb128 .LEHB22-.LFB12685
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L186-.LFB12685
	.uleb128 0
	.uleb128 .LEHB23-.LFB12685
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L187-.LFB12685
	.uleb128 0
	.uleb128 .LEHB24-.LFB12685
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L185-.LFB12685
	.uleb128 0
	.uleb128 .LEHB25-.LFB12685
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L188-.LFB12685
	.uleb128 0
	.uleb128 .LEHB26-.LFB12685
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L189-.LFB12685
	.uleb128 0
	.uleb128 .LEHB27-.LFB12685
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L185-.LFB12685
	.uleb128 0
	.uleb128 .LEHB28-.LFB12685
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L190-.LFB12685
	.uleb128 0
	.uleb128 .LEHB29-.LFB12685
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L191-.LFB12685
	.uleb128 0
	.uleb128 .LEHB30-.LFB12685
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L192-.LFB12685
	.uleb128 0
	.uleb128 .LEHB31-.LFB12685
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L190-.LFB12685
	.uleb128 0
	.uleb128 .LEHB32-.LFB12685
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L193-.LFB12685
	.uleb128 0
	.uleb128 .LEHB33-.LFB12685
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L194-.LFB12685
	.uleb128 0
	.uleb128 .LEHB34-.LFB12685
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L190-.LFB12685
	.uleb128 0
	.uleb128 .LEHB35-.LFB12685
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L195-.LFB12685
	.uleb128 0
	.uleb128 .LEHB36-.LFB12685
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L196-.LFB12685
	.uleb128 0
	.uleb128 .LEHB37-.LFB12685
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L190-.LFB12685
	.uleb128 0
	.uleb128 .LEHB38-.LFB12685
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L197-.LFB12685
	.uleb128 0
	.uleb128 .LEHB39-.LFB12685
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L198-.LFB12685
	.uleb128 0
	.uleb128 .LEHB40-.LFB12685
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L199-.LFB12685
	.uleb128 0
	.uleb128 .LEHB41-.LFB12685
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L200-.LFB12685
	.uleb128 0
	.uleb128 .LEHB42-.LFB12685
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L201-.LFB12685
	.uleb128 0
	.uleb128 .LEHB43-.LFB12685
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L205-.LFB12685
	.uleb128 0
	.uleb128 .LEHB44-.LFB12685
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L202-.LFB12685
	.uleb128 0
	.uleb128 .LEHB45-.LFB12685
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L203-.LFB12685
	.uleb128 0
	.uleb128 .LEHB46-.LFB12685
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L206-.LFB12685
	.uleb128 0
	.uleb128 .LEHB47-.LFB12685
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L207-.LFB12685
	.uleb128 0
	.uleb128 .LEHB48-.LFB12685
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L208-.LFB12685
	.uleb128 0
	.uleb128 .LEHB49-.LFB12685
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L204-.LFB12685
	.uleb128 0
	.uleb128 .LEHB50-.LFB12685
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L203-.LFB12685
	.uleb128 0
	.uleb128 .LEHB51-.LFB12685
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE12685:
	.text
	.size	_ZN14NewUserManager10createUserE7QStringS0_, .-_ZN14NewUserManager10createUserE7QStringS0_
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
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

	.file	"networkmanager.cpp"
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
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NetworkManagerC2Ev
	.type	_ZN14NetworkManagerC2Ev, @function
_ZN14NetworkManagerC2Ev:
.LFB12681:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12681
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%esi, %esi
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LEHB0:
	call	_ZN21QNetworkAccessManagerC2EP7QObject@PLT
.LEHE0:
	movq	_ZTV14NetworkManager@GOTPCREL(%rip), %rax
	leaq	16(%rbx), %rdi
	xorl	%esi, %esi
	addq	$16, %rax
	movq	%rax, (%rbx)
.LEHB1:
	call	_ZN10QEventLoopC1EP7QObject@PLT
.LEHE1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN21QNetworkAccessManagerD2Ev@PLT
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
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
	.uleb128 .L10-.LFB12681
	.uleb128 0
	.uleb128 .LEHB2-.LFB12681
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE12681:
	.text
	.size	_ZN14NetworkManagerC2Ev, .-_ZN14NetworkManagerC2Ev
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.globl	_ZN14NetworkManagerC1Ev
	.set	_ZN14NetworkManagerC1Ev,_ZN14NetworkManagerC2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"1quit()"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"2error(QNetworkReply::NetworkError)"
	.section	.rodata.str1.1
.LC4:
	.string	"2finished()"
.LC5:
	.string	"1abort()"
.LC6:
	.string	"2abort()"
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray
	.type	_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray, @function
_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray:
.LFB12683:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	16(%r13), %r12
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZN21QNetworkAccessManager4postERK15QNetworkRequestRK10QByteArray@PLT
	leaq	.LC2(%rip), %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rsi
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%rsp, %rdi
	movq	%rax, %rbp
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
	movq	%rsp, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	leaq	.LC2(%rip), %r8
	leaq	.LC4(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
	movq	%rsp, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	leaq	.LC5(%rip), %r8
	leaq	.LC6(%rip), %rdx
	xorl	%r9d, %r9d
	movq	%rbp, %rcx
	movq	%r13, %rsi
	movq	%rsp, %rdi
	call	_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE@PLT
	movq	%rsp, %rdi
	call	_ZN11QMetaObject10ConnectionD1Ev@PLT
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZN10QEventLoop4execE6QFlagsINS_17ProcessEventsFlagEE@PLT
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L17
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12683:
	.size	_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray, .-_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"application/json"
.LC9:
	.string	"Content-Type"
	.section	.text.unlikely
	.align 2
.LCOLDB10:
	.text
.LHOTB10:
	.align 2
	.p2align 4,,15
	.globl	_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject
	.type	_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject, @function
_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject:
.LFB12684:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12684
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r15
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
	movq	%rdx, %r13
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	leaq	112(%rsp), %rbx
	leaq	16(%rsp), %rbp
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN4QUrlC1Ev@PLT
.LEHE3:
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB4:
	call	_ZN15QNetworkRequestC1ERK4QUrl@PLT
.LEHE4:
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB5:
	call	_ZN15QNetworkRequest6setUrlERK4QUrl@PLT
	leaq	48(%rsp), %r13
	leaq	.LC8(%rip), %rsi
	movl	$-1, %edx
	movq	%r13, %rdi
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE5:
	leaq	32(%rsp), %r14
	leaq	.LC9(%rip), %rsi
	movl	$-1, %edx
	movq	%r14, %rdi
.LEHB6:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE6:
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
.LEHB7:
	call	_ZN15QNetworkRequest12setRawHeaderERK10QByteArrayS2_@PLT
.LEHE7:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L23
	cmpl	$-1, %eax
	je	.L20
	lock subl	$1, (%rdi)
	je	.L62
.L20:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L28
	cmpl	$-1, %eax
	je	.L25
	lock subl	$1, (%rdi)
	je	.L63
.L25:
	leaq	64(%rsp), %r13
	movq	%r15, %rsi
	movq	%r13, %rdi
.LEHB8:
	call	_ZN13QJsonDocumentC1ERK11QJsonObject@PLT
.LEHE8:
	leaq	80(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB9:
	call	_ZNK13QJsonDocument6toJsonEv@PLT
.LEHE9:
	movq	8(%rsp), %rdi
	movq	%r14, %rdx
	movq	%rbp, %rsi
.LEHB10:
	call	_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray@PLT
.LEHE10:
	movq	80(%rsp), %rdi
	movq	%rax, %r14
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L33
	cmpl	$-1, %eax
	je	.L30
	lock subl	$1, (%rdi)
	je	.L64
.L30:
	movq	%r13, %rdi
	leaq	96(%rsp), %r13
	call	_ZN13QJsonDocumentD1Ev@PLT
	movq	%r14, %rsi
	movq	%r13, %rdi
.LEHB11:
	call	_ZN9QIODevice7readAllEv@PLT
.LEHE11:
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB12:
	call	_ZN13QJsonDocument8fromJsonERK10QByteArrayP15QJsonParseError@PLT
.LEHE12:
	movq	%rbx, %rsi
	movq	%r12, %rdi
.LEHB13:
	call	_ZNK13QJsonDocument6objectEv@PLT
.LEHE13:
	movq	%rbx, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	movq	96(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L38
	cmpl	$-1, %eax
	je	.L35
	lock subl	$1, (%rdi)
	je	.L65
.L35:
	movq	%r14, %rdi
.LEHB14:
	call	_ZN7QObject11deleteLaterEv@PLT
.LEHE14:
	movq	%rbp, %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	120(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%r12, %rax
	jne	.L66
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
.L65:
	.cfi_restore_state
	movq	96(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L35
.L64:
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L33:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L30
.L63:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L28:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L25
.L62:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L23:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L20
.L66:
	call	__stack_chk_fail@PLT
.L57:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN11QJsonObjectD1Ev@PLT
.L42:
	movq	%rbp, %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	%rbx, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L52:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L46:
	movq	%r13, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L42
.L51:
.L60:
	movq	%rax, %rbx
	jmp	.L46
.L50:
	movq	%rax, %rbx
	jmp	.L42
.L49:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L54:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L44:
	movq	%r13, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	jmp	.L42
.L53:
	movq	%rax, %rbx
	jmp	.L44
.L56:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	movq	%r12, %rbx
	jmp	.L46
.L55:
	jmp	.L60
	.cfi_endproc
.LFE12684:
	.section	.gcc_except_table
.LLSDA12684:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12684-.LLSDACSB12684
.LLSDACSB12684:
	.uleb128 .LEHB3-.LFB12684
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB12684
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L49-.LFB12684
	.uleb128 0
	.uleb128 .LEHB5-.LFB12684
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L50-.LFB12684
	.uleb128 0
	.uleb128 .LEHB6-.LFB12684
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L51-.LFB12684
	.uleb128 0
	.uleb128 .LEHB7-.LFB12684
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L52-.LFB12684
	.uleb128 0
	.uleb128 .LEHB8-.LFB12684
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L50-.LFB12684
	.uleb128 0
	.uleb128 .LEHB9-.LFB12684
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L53-.LFB12684
	.uleb128 0
	.uleb128 .LEHB10-.LFB12684
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L54-.LFB12684
	.uleb128 0
	.uleb128 .LEHB11-.LFB12684
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L50-.LFB12684
	.uleb128 0
	.uleb128 .LEHB12-.LFB12684
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L55-.LFB12684
	.uleb128 0
	.uleb128 .LEHB13-.LFB12684
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L56-.LFB12684
	.uleb128 0
	.uleb128 .LEHB14-.LFB12684
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L57-.LFB12684
	.uleb128 0
	.uleb128 .LEHB15-.LFB12684
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE12684:
	.text
	.size	_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject, .-_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
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

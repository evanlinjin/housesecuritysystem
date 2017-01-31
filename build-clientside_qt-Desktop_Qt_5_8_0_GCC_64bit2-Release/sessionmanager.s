	.file	"sessionmanager.cpp"
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Gooseberry"
.LC2:
	.string	"House Security System"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManagerC2E7QStringP7QObject
	.type	_ZN14SessionManagerC2E7QStringP7QObject, @function
_ZN14SessionManagerC2E7QStringP7QObject:
.LFB12878:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12878
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
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rsi
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZN7QObjectC2EPS_@PLT
.LEHE0:
	movq	_ZTV14SessionManager@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	movq	0(%rbp), %rdx
	movq	%rdx, 48(%rbx)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L9
	lock addl	$1, (%rdx)
.L9:
	movl	$32, %edi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB2:
	call	_ZN14NetworkManagerC1Ev@PLT
.LEHE2:
	leaq	.LC1(%rip), %rdi
	movq	%rbp, 24(%rbx)
	movl	$10, %esi
.LEHB3:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE3:
	leaq	.LC2(%rip), %rdi
	movl	$21, %esi
	movq	%rax, (%rsp)
.LEHB4:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE4:
	movl	$16, %edi
	movq	%rax, 16(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	16(%rsp), %r13
	movq	%rbx, %rcx
	movq	%rsp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rsp, %r12
	movq	%r13, %rdx
.LEHB6:
	call	_ZN15SettingsManagerC1ERK7QStringS2_P7QObject@PLT
.LEHE6:
	movq	16(%rsp), %rdi
	movq	%rbp, 16(%rbx)
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L14
	cmpl	$-1, %eax
	je	.L11
	lock subl	$1, (%rdi)
	je	.L32
.L11:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L19
	cmpl	$-1, %eax
	je	.L8
	lock subl	$1, (%rdi)
	je	.L33
.L8:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L34
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
.L33:
	.cfi_restore_state
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L19:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L8
.L32:
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L14:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L11
.L34:
	call	__stack_chk_fail@PLT
.L26:
	movq	%rax, %rbp
.L21:
	leaq	48(%rbx), %rdi
	call	_ZN7QStringD1Ev@PLT
	leaq	40(%rbx), %rdi
	call	_ZN7QStringD1Ev@PLT
	leaq	32(%rbx), %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_ZN7QObjectD2Ev@PLT
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L30:
	movq	%rax, %r14
	movq	%rbp, %rdi
	movq	%r14, %rbp
	call	_ZdlPv@PLT
.L23:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
.L24:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L21
.L29:
	movq	%rax, %rbp
	leaq	16(%rsp), %r13
	movq	%rsp, %r12
	jmp	.L23
.L28:
	movq	%rax, %rbp
	movq	%rsp, %r12
	jmp	.L24
.L27:
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	_ZdlPv@PLT
	movq	%r12, %rbp
	jmp	.L21
	.cfi_endproc
.LFE12878:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA12878:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12878-.LLSDACSB12878
.LLSDACSB12878:
	.uleb128 .LEHB0-.LFB12878
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12878
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB12878
	.uleb128 0
	.uleb128 .LEHB2-.LFB12878
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L27-.LFB12878
	.uleb128 0
	.uleb128 .LEHB3-.LFB12878
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L26-.LFB12878
	.uleb128 0
	.uleb128 .LEHB4-.LFB12878
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L28-.LFB12878
	.uleb128 0
	.uleb128 .LEHB5-.LFB12878
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L29-.LFB12878
	.uleb128 0
	.uleb128 .LEHB6-.LFB12878
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L30-.LFB12878
	.uleb128 0
	.uleb128 .LEHB7-.LFB12878
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE12878:
	.text
	.size	_ZN14SessionManagerC2E7QStringP7QObject, .-_ZN14SessionManagerC2E7QStringP7QObject
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.globl	_ZN14SessionManagerC1E7QStringP7QObject
	.set	_ZN14SessionManagerC1E7QStringP7QObject,_ZN14SessionManagerC2E7QStringP7QObject
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManagerD2Ev
	.type	_ZN14SessionManagerD2Ev, @function
_ZN14SessionManagerD2Ev:
.LFB12881:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12881
	movq	_ZTV14SessionManager@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	16(%rdi), %rdi
	call	_ZN7QObject11deleteLaterEv@PLT
	movq	24(%rbx), %rdi
	call	_ZN7QObject11deleteLaterEv@PLT
	movq	48(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L40
	cmpl	$-1, %eax
	je	.L37
	lock subl	$1, (%rdi)
	je	.L52
.L37:
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L45
.L41:
	cmpl	$-1, %eax
	je	.L42
	lock subl	$1, (%rdi)
	je	.L53
.L42:
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L50
.L46:
	cmpl	$-1, %eax
	je	.L47
	lock subl	$1, (%rdi)
	je	.L54
.L47:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObjectD2Ev@PLT
.L52:
	.cfi_restore_state
	movq	48(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L41
.L45:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L46
.L50:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObjectD2Ev@PLT
.L54:
	.cfi_restore_state
	movq	32(%rbx), %rdi
	jmp	.L50
.L53:
	movq	40(%rbx), %rdi
	jmp	.L45
	.cfi_endproc
.LFE12881:
	.section	.gcc_except_table
.LLSDA12881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12881-.LLSDACSB12881
.LLSDACSB12881:
.LLSDACSE12881:
	.text
	.size	_ZN14SessionManagerD2Ev, .-_ZN14SessionManagerD2Ev
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN14SessionManagerD1Ev
	.set	_ZN14SessionManagerD1Ev,_ZN14SessionManagerD2Ev
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManagerD0Ev
	.type	_ZN14SessionManagerD0Ev, @function
_ZN14SessionManagerD0Ev:
.LFB12883:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN14SessionManagerD1Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE12883:
	.size	_ZN14SessionManagerD0Ev, .-_ZN14SessionManagerD0Ev
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"%1 on %2 %3"
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager13getClientInfoEv
	.type	_ZN14SessionManager13getClientInfoEv, @function
_ZN14SessionManager13getClientInfoEv:
.LFB12884:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12884
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	leaq	16(%rsp), %r13
	leaq	32(%rsp), %r14
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%r13, %rdi
.LEHB8:
	call	_ZN8QSysInfo11productTypeEv@PLT
.LEHE8:
	movq	%r14, %rdi
.LEHB9:
	call	_ZN8QSysInfo14productVersionEv@PLT
.LEHE9:
	movq	16(%rsp), %rbx
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jle	.L58
	movq	16(%rbx), %rdx
	movzwl	(%rbx,%rdx), %edi
	movq	%rdx, 8(%rsp)
	call	_ZN5QChar7toUpperEj@PLT
	movl	%eax, %ebp
	movl	(%rbx), %eax
	movq	8(%rsp), %rdx
	cmpl	$1, %eax
	jbe	.L90
.L62:
	movl	4(%rbx), %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	addl	$1, %esi
.LEHB10:
	call	_ZN7QString11reallocDataEjb@PLT
.L89:
	movq	16(%rsp), %rcx
	movq	16(%rcx), %rax
.L61:
	leaq	.LC6(%rip), %rdi
	movw	%bp, (%rcx,%rax)
	movl	$11, %esi
	addq	$48, %r12
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE10:
	leaq	48(%rsp), %rbx
	leaq	64(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%rax, 48(%rsp)
	movq	%r12, 64(%rsp)
	movq	%rbx, %rsi
	movq	%r13, 72(%rsp)
	movq	%r14, 80(%rsp)
.LEHB11:
	call	_ZNK7QString8multiArgEiPPKS_@PLT
.LEHE11:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L67
	cmpl	$-1, %eax
	je	.L64
	lock subl	$1, (%rdi)
	je	.L91
.L64:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L72
.L68:
	cmpl	$-1, %eax
	je	.L69
	lock subl	$1, (%rdi)
	je	.L92
.L69:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L77
.L73:
	cmpl	$-1, %eax
	je	.L57
	lock subl	$1, (%rdi)
	je	.L93
.L57:
	movq	88(%rsp), %rdx
	xorq	%fs:40, %rdx
	movq	%r15, %rax
	jne	.L94
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
.L91:
	.cfi_restore_state
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L67:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L68
.L72:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L73
.L77:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L58:
	xorl	%edi, %edi
	call	_ZN5QChar7toUpperEj@PLT
	movl	$32, %edx
	movl	$1, %esi
	movq	%r13, %rdi
	movl	%eax, %ebp
.LEHB12:
	call	_ZN7QString6resizeEi5QChar@PLT
.LEHE12:
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L90:
	cmpq	$24, %rdx
	movq	%rbx, %rcx
	movq	%rdx, %rax
	jne	.L62
	jmp	.L61
.L94:
	call	__stack_chk_fail@PLT
.L85:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN7QStringD1Ev@PLT
.L79:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
.L80:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L84:
	movq	%rax, %rbx
	jmp	.L79
.L83:
	movq	%rax, %rbx
	jmp	.L80
.L93:
	movq	16(%rsp), %rdi
	jmp	.L77
.L92:
	movq	32(%rsp), %rdi
	jmp	.L72
	.cfi_endproc
.LFE12884:
	.section	.gcc_except_table
.LLSDA12884:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12884-.LLSDACSB12884
.LLSDACSB12884:
	.uleb128 .LEHB8-.LFB12884
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB12884
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L83-.LFB12884
	.uleb128 0
	.uleb128 .LEHB10-.LFB12884
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L84-.LFB12884
	.uleb128 0
	.uleb128 .LEHB11-.LFB12884
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L85-.LFB12884
	.uleb128 0
	.uleb128 .LEHB12-.LFB12884
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L84-.LFB12884
	.uleb128 0
	.uleb128 .LEHB13-.LFB12884
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE12884:
	.text
	.size	_ZN14SessionManager13getClientInfoEv, .-_ZN14SessionManager13getClientInfoEv
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"Logging in..."
.LC9:
	.string	"app_name"
.LC10:
	.string	"app_version"
.LC11:
	.string	"%1 %2"
.LC12:
	.string	"os_name"
.LC13:
	.string	"os_version"
.LC14:
	.string	"email"
.LC15:
	.string	"password"
.LC16:
	.string	"client"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC17:
	.string	"https://telepool-144405.appspot.com/api/v1/login"
	.section	.rodata.str1.1
.LC18:
	.string	"status"
.LC19:
	.string	"SUCCESS"
.LC20:
	.string	"OKAY"
.LC21:
	.string	"uid"
.LC22:
	.string	"session/%1"
.LC23:
	.string	"session_id"
.LC24:
	.string	"sid"
.LC25:
	.string	"session_key"
.LC26:
	.string	"skey"
.LC27:
	.string	"login_time"
.LC28:
	.string	"loginTime"
.LC29:
	.string	"last_seen_time"
.LC30:
	.string	"lastSeenTime"
.LC31:
	.string	"user_id"
	.section	.text.unlikely
	.align 2
.LCOLDB32:
	.text
.LHOTB32:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager5loginE7QStringS0_
	.type	_ZN14SessionManager5loginE7QStringS0_, @function
_ZN14SessionManager5loginE7QStringS0_:
.LFB12885:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12885
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC8(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$968, %rsp
	.cfi_def_cfa_offset 1024
	leaq	896(%rsp), %r12
	movq	%rsi, 32(%rsp)
	movl	$13, %esi
	movq	%rdx, 40(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 952(%rsp)
	xorl	%eax, %eax
.LEHB14:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE14:
	movq	%r12, %rsi
	movq	%r15, %rdi
	movq	%rax, 896(%rsp)
.LEHB15:
	call	_ZN14SessionManager12loadingStartE7QString@PLT
.LEHE15:
	movq	896(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L100
	cmpl	$-1, %eax
	je	.L97
	lock subl	$1, (%rdi)
	je	.L531
.L97:
	leaq	336(%rsp), %rax
	leaq	480(%rsp), %rbx
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
.LEHB16:
	call	_ZN11QJsonObjectC1Ev@PLT
.LEHE16:
	leaq	32(%r15), %rsi
	movq	%rbx, %rdi
.LEHB17:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE17:
	leaq	.LC9(%rip), %rdi
	movl	$8, %esi
.LEHB18:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE18:
	leaq	864(%rsp), %r14
	movq	%rbp, %rdi
	movq	%rax, 864(%rsp)
	movq	%r14, %rsi
.LEHB19:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE19:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L105
	cmpl	$-1, %eax
	je	.L102
	lock subl	$1, (%rdi)
	je	.L532
.L102:
	movq	%rbx, %rdi
	leaq	512(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	40(%r15), %rsi
	movq	%rbx, %rdi
.LEHB20:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE20:
	leaq	.LC10(%rip), %rdi
	movl	$11, %esi
.LEHB21:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE21:
	movq	8(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rax, 864(%rsp)
.LEHB22:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE22:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L110
	cmpl	$-1, %eax
	je	.L107
	lock subl	$1, (%rdi)
	je	.L533
.L107:
	leaq	80(%rsp), %rbp
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rdi
.LEHB23:
	call	_ZN8QSysInfo10kernelTypeEv@PLT
.LEHE23:
	leaq	64(%rsp), %r13
	movq	%r13, %rdi
.LEHB24:
	call	_ZN8QSysInfo11productTypeEv@PLT
.LEHE24:
	leaq	.LC11(%rip), %rdi
	movl	$5, %esi
.LEHB25:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE25:
	movq	%rax, 864(%rsp)
	leaq	96(%rsp), %rax
	leaq	928(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rsi
	movq	%r13, 928(%rsp)
	movq	%rax, %rdi
	movq	%rbp, 936(%rsp)
	movq	%rax, 16(%rsp)
.LEHB26:
	call	_ZNK7QString8multiArgEiPPKS_@PLT
.LEHE26:
	leaq	544(%rsp), %rbx
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
.LEHB27:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE27:
	leaq	.LC12(%rip), %rdi
	movl	$7, %esi
.LEHB28:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE28:
	movq	%rax, 832(%rsp)
	movq	8(%rsp), %rdi
	leaq	832(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 24(%rsp)
.LEHB29:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE29:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L115
	cmpl	$-1, %eax
	je	.L112
	lock subl	$1, (%rdi)
	je	.L534
.L112:
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	96(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L120
	cmpl	$-1, %eax
	je	.L117
	lock subl	$1, (%rdi)
	je	.L535
.L117:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L125
	cmpl	$-1, %eax
	je	.L122
	lock subl	$1, (%rdi)
	je	.L536
.L122:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L130
	cmpl	$-1, %eax
	je	.L127
	lock subl	$1, (%rdi)
	je	.L537
.L127:
	movq	80(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L135
	cmpl	$-1, %eax
	je	.L132
	lock subl	$1, (%rdi)
	je	.L538
.L132:
	leaq	112(%rsp), %rbp
	movq	%rbp, %rdi
.LEHB30:
	call	_ZN8QSysInfo14productVersionEv@PLT
.LEHE30:
	leaq	576(%rsp), %rbx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB31:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE31:
	leaq	.LC13(%rip), %rdi
	movl	$10, %esi
.LEHB32:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE32:
	movq	8(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rax, 864(%rsp)
.LEHB33:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE33:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L140
	cmpl	$-1, %eax
	je	.L137
	lock subl	$1, (%rdi)
	je	.L539
.L137:
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	112(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L145
	cmpl	$-1, %eax
	je	.L142
	lock subl	$1, (%rdi)
	je	.L540
.L142:
	leaq	352(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, 16(%rsp)
.LEHB34:
	call	_ZN11QJsonObjectC1Ev@PLT
.LEHE34:
	leaq	608(%rsp), %rbx
	movq	32(%rsp), %rsi
	movq	%rbx, %rdi
.LEHB35:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE35:
	leaq	.LC14(%rip), %rdi
	movl	$5, %esi
.LEHB36:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE36:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movq	%rax, 864(%rsp)
.LEHB37:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE37:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L150
	cmpl	$-1, %eax
	je	.L147
	lock subl	$1, (%rdi)
	je	.L541
.L147:
	movq	%rbx, %rdi
	leaq	640(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	movq	40(%rsp), %rsi
	movq	%rbx, %rdi
.LEHB38:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE38:
	leaq	.LC15(%rip), %rdi
	movl	$8, %esi
.LEHB39:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE39:
	movq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rax, 864(%rsp)
.LEHB40:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE40:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L155
	cmpl	$-1, %eax
	je	.L152
	lock subl	$1, (%rdi)
	je	.L542
.L152:
	movq	%rbx, %rdi
	leaq	672(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
.LEHB41:
	call	_ZN10QJsonValueC1ERK11QJsonObject@PLT
.LEHE41:
	leaq	.LC16(%rip), %rdi
	movl	$6, %esi
.LEHB42:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE42:
	movq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rax, 864(%rsp)
.LEHB43:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE43:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L160
	cmpl	$-1, %eax
	je	.L157
	lock subl	$1, (%rdi)
	je	.L543
.L157:
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	.LC17(%rip), %rdi
	movl	$48, %esi
.LEHB44:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE44:
	leaq	128(%rsp), %rbx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rax, 896(%rsp)
	movq	%rbx, %rdi
.LEHB45:
	call	_ZN4QUrlC1ERK7QStringNS_11ParsingModeE@PLT
.LEHE45:
	leaq	368(%rsp), %r13
	movq	24(%r15), %rsi
	movq	16(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%r13, %rdi
.LEHB46:
	call	_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject@PLT
.LEHE46:
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	896(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L165
	cmpl	$-1, %eax
	je	.L162
	lock subl	$1, (%rdi)
	je	.L544
.L162:
	leaq	.LC18(%rip), %rdi
	movl	$6, %esi
.LEHB47:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE47:
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rax, 864(%rsp)
.LEHB48:
	call	_ZN11QJsonObjectixERK7QString@PLT
	leaq	704(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	movq	%rbx, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE48:
	leaq	160(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB49:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE49:
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	144(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
.LEHB50:
	call	_ZN7QString14trimmed_helperERS_@PLT
.LEHE50:
	movq	160(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L173
	cmpl	$-1, %eax
	je	.L170
	lock subl	$1, (%rdi)
	je	.L545
.L170:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L178
.L174:
	cmpl	$-1, %eax
	je	.L175
	lock subl	$1, (%rdi)
	je	.L546
.L175:
	movq	144(%rsp), %rdi
	leaq	.LC19(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
.LEHB51:
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
	testl	%eax, %eax
	jne	.L547
.L179:
	leaq	.LC31(%rip), %rdi
	movl	$7, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE51:
	movq	%rax, 800(%rsp)
	leaq	800(%rsp), %rax
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rax, 32(%rsp)
.LEHB52:
	call	_ZN11QJsonObjectixERK7QString@PLT
	leaq	736(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	movq	%rbx, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE52:
	leaq	176(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB53:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE53:
	movq	%rbx, %rdi
	leaq	384(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB54:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE54:
	leaq	.LC21(%rip), %rdi
	movl	$3, %esi
.LEHB55:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE55:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 864(%rsp)
.LEHB56:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE56:
	movq	%rax, 832(%rsp)
	movq	24(%rsp), %rsi
	leaq	240(%rsp), %rax
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB57:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE57:
	movq	16(%r15), %rdi
	movq	40(%rsp), %rsi
	movq	%rbx, %rdx
.LEHB58:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE58:
	movq	240(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L188
	cmpl	$-1, %eax
	je	.L185
	lock subl	$1, (%rdi)
	je	.L548
.L185:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L193
.L189:
	cmpl	$-1, %eax
	je	.L190
	lock subl	$1, (%rdi)
	je	.L549
.L190:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L198
.L194:
	cmpl	$-1, %eax
	je	.L195
	lock subl	$1, (%rdi)
	je	.L550
.L195:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%r15, %rdi
.LEHB59:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE59:
	movq	176(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L209
	cmpl	$-1, %eax
	je	.L206
	lock subl	$1, (%rdi)
	je	.L551
.L206:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L214
	cmpl	$-1, %eax
	je	.L211
	lock subl	$1, (%rdi)
	je	.L552
.L211:
	leaq	.LC14(%rip), %rdi
	movl	$5, %esi
.LEHB60:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE60:
	movq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 800(%rsp)
.LEHB61:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rax, 896(%rsp)
	leaq	768(%rsp), %rax
	movq	%r12, %rsi
	movq	%rdx, 904(%rsp)
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rax, 40(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE61:
	leaq	192(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, 56(%rsp)
.LEHB62:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE62:
	movq	%rbx, %rdi
	leaq	400(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB63:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE63:
	leaq	.LC14(%rip), %rdi
	movl	$5, %esi
.LEHB64:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE64:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 864(%rsp)
.LEHB65:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE65:
	leaq	256(%rsp), %rbp
	movq	24(%rsp), %rsi
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rax, 832(%rsp)
	movq	%rbp, %rdi
.LEHB66:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE66:
	movq	16(%r15), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
.LEHB67:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE67:
	movq	256(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L222
	cmpl	$-1, %eax
	je	.L219
	lock subl	$1, (%rdi)
	je	.L553
.L219:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L227
	cmpl	$-1, %eax
	je	.L224
	lock subl	$1, (%rdi)
	je	.L554
.L224:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L232
	cmpl	$-1, %eax
	je	.L229
	lock subl	$1, (%rdi)
	je	.L555
.L229:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%r15, %rdi
.LEHB68:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE68:
	movq	192(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L243
	cmpl	$-1, %eax
	je	.L240
	lock subl	$1, (%rdi)
	je	.L556
.L240:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L248
	cmpl	$-1, %eax
	je	.L245
	lock subl	$1, (%rdi)
	je	.L557
.L245:
	leaq	.LC23(%rip), %rdi
	movl	$10, %esi
.LEHB69:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE69:
	movq	40(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 768(%rsp)
.LEHB70:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	32(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	movq	%rbx, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE70:
	leaq	208(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, 56(%rsp)
.LEHB71:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE71:
	movq	%rbx, %rdi
	leaq	416(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB72:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE72:
	leaq	.LC24(%rip), %rdi
	movl	$3, %esi
.LEHB73:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE73:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 864(%rsp)
.LEHB74:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE74:
	leaq	272(%rsp), %rbp
	movq	24(%rsp), %rsi
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rax, 832(%rsp)
	movq	%rbp, %rdi
.LEHB75:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE75:
	movq	16(%r15), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
.LEHB76:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE76:
	movq	272(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L256
	cmpl	$-1, %eax
	je	.L253
	lock subl	$1, (%rdi)
	je	.L558
.L253:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L261
	cmpl	$-1, %eax
	je	.L258
	lock subl	$1, (%rdi)
	je	.L559
.L258:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L266
	cmpl	$-1, %eax
	je	.L263
	lock subl	$1, (%rdi)
	je	.L560
.L263:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%r15, %rdi
.LEHB77:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE77:
	movq	208(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L277
	cmpl	$-1, %eax
	je	.L274
	lock subl	$1, (%rdi)
	je	.L561
.L274:
	movq	768(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L282
	cmpl	$-1, %eax
	je	.L279
	lock subl	$1, (%rdi)
	je	.L562
.L279:
	leaq	.LC25(%rip), %rdi
	movl	$11, %esi
.LEHB78:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE78:
	movq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 800(%rsp)
.LEHB79:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	24(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	movq	%rbx, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE79:
	leaq	224(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB80:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE80:
	movq	%rbx, %rdi
	leaq	432(%rsp), %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB81:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE81:
	leaq	.LC26(%rip), %rdi
	movl	$4, %esi
.LEHB82:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE82:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 864(%rsp)
.LEHB83:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE83:
	movq	%rax, 832(%rsp)
	movq	24(%rsp), %rsi
	leaq	288(%rsp), %rax
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB84:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE84:
	movq	16(%r15), %rdi
	movq	40(%rsp), %rsi
	movq	%rbx, %rdx
.LEHB85:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE85:
	movq	288(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L290
	cmpl	$-1, %eax
	je	.L287
	lock subl	$1, (%rdi)
	je	.L563
.L287:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L295
	cmpl	$-1, %eax
	je	.L292
	lock subl	$1, (%rdi)
	je	.L564
.L292:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L300
	cmpl	$-1, %eax
	je	.L297
	lock subl	$1, (%rdi)
	je	.L565
.L297:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%r15, %rdi
.LEHB86:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE86:
	movq	224(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L311
	cmpl	$-1, %eax
	je	.L308
	lock subl	$1, (%rdi)
	je	.L566
.L308:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L316
	cmpl	$-1, %eax
	je	.L313
	lock subl	$1, (%rdi)
	je	.L567
.L313:
	leaq	.LC27(%rip), %rdi
	movl	$10, %esi
.LEHB87:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE87:
	movq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 800(%rsp)
.LEHB88:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	%rax, 896(%rsp)
	movq	%rdx, 904(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE88:
	xorl	%esi, %esi
	movq	%r14, %rdi
.LEHB89:
	call	_ZNK10QJsonValue5toIntEi@PLT
.LEHE89:
	leaq	448(%rsp), %rbx
	movl	%eax, %ebp
	movq	%r14, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movl	%ebp, %esi
	movq	%rbx, %rdi
.LEHB90:
	call	_ZN8QVariantC1Ei@PLT
.LEHE90:
	leaq	.LC28(%rip), %rdi
	movl	$9, %esi
.LEHB91:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE91:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 864(%rsp)
.LEHB92:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE92:
	leaq	304(%rsp), %rbp
	movq	24(%rsp), %rsi
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rax, 832(%rsp)
	movq	%rbp, %rdi
.LEHB93:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE93:
	movq	16(%r15), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
.LEHB94:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE94:
	movq	304(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L324
	cmpl	$-1, %eax
	je	.L321
	lock subl	$1, (%rdi)
	je	.L568
.L321:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L329
	cmpl	$-1, %eax
	je	.L326
	lock subl	$1, (%rdi)
	je	.L569
.L326:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L334
.L330:
	cmpl	$-1, %eax
	je	.L331
	lock subl	$1, (%rdi)
	je	.L570
.L331:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%r15, %rdi
.LEHB95:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE95:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L344
	cmpl	$-1, %eax
	je	.L341
	lock subl	$1, (%rdi)
	je	.L571
.L341:
	leaq	.LC29(%rip), %rdi
	movl	$14, %esi
.LEHB96:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE96:
	movq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 800(%rsp)
.LEHB97:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	movq	%rax, 864(%rsp)
	movq	%rdx, 872(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE97:
	xorl	%esi, %esi
	movq	%r12, %rdi
.LEHB98:
	call	_ZNK10QJsonValue5toIntEi@PLT
.LEHE98:
	leaq	464(%rsp), %rbx
	movl	%eax, %ebp
	movq	%r12, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movl	%ebp, %esi
	movq	%rbx, %rdi
.LEHB99:
	call	_ZN8QVariantC1Ei@PLT
.LEHE99:
	leaq	.LC30(%rip), %rdi
	movl	$12, %esi
.LEHB100:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE100:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 896(%rsp)
.LEHB101:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE101:
	leaq	320(%rsp), %rbp
	movq	24(%rsp), %rsi
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rax, 832(%rsp)
	movq	%rbp, %rdi
.LEHB102:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE102:
	movq	16(%r15), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
.LEHB103:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE103:
	movq	320(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L352
	cmpl	$-1, %eax
	je	.L349
	lock subl	$1, (%rdi)
	je	.L572
.L349:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L357
	cmpl	$-1, %eax
	je	.L354
	lock subl	$1, (%rdi)
	je	.L573
.L354:
	movq	896(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L362
.L358:
	cmpl	$-1, %eax
	je	.L359
	lock subl	$1, (%rdi)
	je	.L574
.L359:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%r15, %rdi
.LEHB104:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE104:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L372
	cmpl	$-1, %eax
	je	.L369
	lock subl	$1, (%rdi)
	je	.L575
.L369:
	movq	%r15, %rdi
.LEHB105:
	call	_ZN14SessionManager8loggedInEv@PLT
	movq	%r15, %rdi
	call	_ZN14SessionManager11loadingStopEv@PLT
	movl	$1, %ebx
.L405:
	movq	144(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L377
	cmpl	$-1, %eax
	je	.L374
	lock subl	$1, (%rdi)
	je	.L576
.L374:
	movq	%r13, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	16(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	8(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	952(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L577
	addq	$968, %rsp
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
.L576:
	.cfi_restore_state
	movq	144(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L377:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L374
.L531:
	movq	896(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L100:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L97
.L543:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L160:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L157
.L541:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L150:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L147
.L542:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L155:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L152
.L545:
	movq	160(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L173:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L174
.L178:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L175
.L544:
	movq	896(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L165:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L162
.L540:
	movq	112(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L145:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L142
.L539:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L140:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L137
.L532:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L105:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L102
.L538:
	movq	80(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L135:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L132
.L537:
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L130:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L127
.L533:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L110:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L107
.L536:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L125:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L122
.L535:
	movq	96(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L120:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L117
.L534:
	movq	832(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L115:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L547:
	movq	144(%rsp), %rdi
	leaq	.LC20(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
	testl	%eax, %eax
	je	.L179
	movq	%r15, %rdi
	call	_ZN14SessionManager11loadingStopEv@PLT
.LEHE105:
	xorl	%ebx, %ebx
	jmp	.L405
.L548:
	movq	240(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L188:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L189
.L193:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L194
.L198:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L195
.L565:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L300:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L297
.L564:
	movq	832(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L295:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L292
.L563:
	movq	288(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L290:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L287
.L569:
	movq	832(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L329:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L330
.L334:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L331
.L567:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L316:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L313
.L566:
	movq	224(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L311:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L308
.L571:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L344:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L341
.L568:
	movq	304(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L324:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L321
.L557:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L248:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L245
.L556:
	movq	192(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L243:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L240
.L560:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L266:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L263
.L559:
	movq	832(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L261:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L258
.L552:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L214:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L211
.L551:
	movq	176(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L209:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L206
.L555:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L232:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L229
.L554:
	movq	832(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L227:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L224
.L553:
	movq	256(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L222:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L219
.L562:
	movq	768(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L282:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L279
.L561:
	movq	208(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L277:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L274
.L558:
	movq	272(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L256:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L253
.L573:
	movq	832(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L357:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	896(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L358
.L362:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L359
.L572:
	movq	320(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L352:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L349
.L575:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L372:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L369
.L577:
	call	__stack_chk_fail@PLT
.L549:
	movq	832(%rsp), %rdi
	jmp	.L193
.L550:
	movq	864(%rsp), %rdi
	jmp	.L198
.L570:
	movq	864(%rsp), %rdi
	jmp	.L334
.L574:
	movq	896(%rsp), %rdi
	jmp	.L362
.L437:
.L507:
	movq	%rax, %rbx
.L347:
	movq	32(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L404:
	movq	48(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L403:
	movq	%r13, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L395:
	movq	16(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L381:
	movq	8(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	%rbx, %rdi
.LEHB106:
	call	_Unwind_Resume@PLT
.L451:
.L512:
	movq	%rax, %r12
.L303:
	movq	24(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L304:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
.L305:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZN8QVariantD1Ev@PLT
.L306:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L347
.L450:
.L511:
	movq	%rax, %r12
	jmp	.L304
.L449:
.L510:
	movq	%rax, %r12
	jmp	.L305
.L438:
.L509:
	movq	%rax, %rbx
	jmp	.L306
.L427:
.L505:
	movq	%rax, %rbp
.L399:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L395
.L421:
.L504:
	movq	%rax, %rbx
.L392:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L381
.L423:
	movq	%r14, %rdi
	movq	%rax, %r12
	call	_ZN7QStringD1Ev@PLT
.L391:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L392
.L422:
	movq	%rax, %r12
	jmp	.L391
.L433:
	movq	%rax, %rbx
	jmp	.L403
.L432:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN4QUrlD1Ev@PLT
.L401:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L395
.L425:
	jmp	.L505
.L424:
	movq	%rax, %rbx
	jmp	.L395
.L430:
.L506:
	movq	%r14, %rdi
	movq	%rax, %rbp
	call	_ZN7QStringD1Ev@PLT
	jmp	.L399
.L426:
	jmp	.L506
.L431:
	movq	%rax, %rbx
	jmp	.L401
.L429:
	jmp	.L505
.L452:
.L513:
	movq	40(%rsp), %rdi
	movq	%rax, %r15
	movq	%r15, %r12
	call	_ZN7QStringD1Ev@PLT
	jmp	.L303
.L409:
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE106:
.L411:
.L502:
	movq	%rax, %rbp
.L383:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L381
.L410:
	movq	%rax, %rbx
	jmp	.L381
.L412:
.L503:
	movq	%r14, %rdi
	movq	%rax, %rbp
	call	_ZN7QStringD1Ev@PLT
	jmp	.L383
.L414:
	jmp	.L503
.L415:
	jmp	.L504
.L413:
	jmp	.L502
.L428:
	jmp	.L506
.L435:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L168:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L403
.L447:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L168
.L434:
	movq	%rax, %rbx
	jmp	.L168
.L546:
	movq	864(%rsp), %rdi
	jmp	.L178
.L473:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L347
.L474:
.L508:
	movq	%rax, %rbp
.L367:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN8QVariantD1Ev@PLT
	jmp	.L347
.L446:
	jmp	.L507
.L441:
	movq	%rax, %rbx
.L251:
	movq	40(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L404
.L475:
	movq	%rax, %rbp
.L366:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L367
.L476:
	movq	%rax, %rbp
.L365:
	movq	24(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L366
.L458:
	movq	32(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L251
.L442:
	movq	%rax, %rbx
.L272:
	movq	56(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L251
.L439:
	jmp	.L507
.L453:
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L347
.L440:
	movq	%rax, %rbx
.L238:
	movq	56(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L347
.L454:
	movq	%rax, %rbp
.L237:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN8QVariantD1Ev@PLT
	jmp	.L238
.L455:
	movq	%rax, %rbp
.L236:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L237
.L456:
	movq	%rax, %rbp
.L235:
	movq	24(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L236
.L457:
	movq	%rax, %r15
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r15, %rbp
	jmp	.L235
.L472:
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN7QStringD1Ev@PLT
.L337:
	movq	24(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L338:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L367
.L416:
	movq	%rax, %rbx
.L388:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L392
.L420:
	movq	24(%rsp), %rdi
	movq	%rax, %r12
	call	_ZN7QStringD1Ev@PLT
.L385:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
.L386:
	movq	16(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L387:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L388
.L436:
	movq	%rax, %rbx
	jmp	.L404
.L448:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L347
.L418:
	movq	%rax, %rbx
	jmp	.L386
.L417:
	movq	%rax, %rbx
	jmp	.L387
.L419:
	movq	%rax, %r12
	jmp	.L385
.L477:
	movq	%rax, %r14
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r14, %rbp
	jmp	.L365
.L444:
	jmp	.L509
.L464:
	jmp	.L510
.L465:
	jmp	.L511
.L466:
	jmp	.L512
.L443:
	jmp	.L507
.L463:
	movq	24(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L347
.L445:
	jmp	.L507
.L467:
	jmp	.L513
.L459:
	movq	%rax, %rbp
.L271:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN8QVariantD1Ev@PLT
	jmp	.L272
.L460:
	movq	%rax, %rbp
.L270:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L271
.L461:
	movq	%rax, %rbp
.L269:
	movq	24(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L270
.L462:
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r12, %rbp
	jmp	.L269
.L468:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L347
.L469:
	jmp	.L508
.L470:
	movq	%rax, %rbp
	jmp	.L338
.L471:
	movq	%rax, %rbp
	jmp	.L337
	.cfi_endproc
.LFE12885:
	.section	.gcc_except_table
.LLSDA12885:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12885-.LLSDACSB12885
.LLSDACSB12885:
	.uleb128 .LEHB14-.LFB12885
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB12885
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L409-.LFB12885
	.uleb128 0
	.uleb128 .LEHB16-.LFB12885
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB12885
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L410-.LFB12885
	.uleb128 0
	.uleb128 .LEHB18-.LFB12885
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L411-.LFB12885
	.uleb128 0
	.uleb128 .LEHB19-.LFB12885
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L412-.LFB12885
	.uleb128 0
	.uleb128 .LEHB20-.LFB12885
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L410-.LFB12885
	.uleb128 0
	.uleb128 .LEHB21-.LFB12885
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L413-.LFB12885
	.uleb128 0
	.uleb128 .LEHB22-.LFB12885
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L414-.LFB12885
	.uleb128 0
	.uleb128 .LEHB23-.LFB12885
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L410-.LFB12885
	.uleb128 0
	.uleb128 .LEHB24-.LFB12885
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L415-.LFB12885
	.uleb128 0
	.uleb128 .LEHB25-.LFB12885
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L416-.LFB12885
	.uleb128 0
	.uleb128 .LEHB26-.LFB12885
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L417-.LFB12885
	.uleb128 0
	.uleb128 .LEHB27-.LFB12885
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L418-.LFB12885
	.uleb128 0
	.uleb128 .LEHB28-.LFB12885
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L419-.LFB12885
	.uleb128 0
	.uleb128 .LEHB29-.LFB12885
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L420-.LFB12885
	.uleb128 0
	.uleb128 .LEHB30-.LFB12885
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L410-.LFB12885
	.uleb128 0
	.uleb128 .LEHB31-.LFB12885
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L421-.LFB12885
	.uleb128 0
	.uleb128 .LEHB32-.LFB12885
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L422-.LFB12885
	.uleb128 0
	.uleb128 .LEHB33-.LFB12885
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L423-.LFB12885
	.uleb128 0
	.uleb128 .LEHB34-.LFB12885
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L410-.LFB12885
	.uleb128 0
	.uleb128 .LEHB35-.LFB12885
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L424-.LFB12885
	.uleb128 0
	.uleb128 .LEHB36-.LFB12885
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L425-.LFB12885
	.uleb128 0
	.uleb128 .LEHB37-.LFB12885
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L426-.LFB12885
	.uleb128 0
	.uleb128 .LEHB38-.LFB12885
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L424-.LFB12885
	.uleb128 0
	.uleb128 .LEHB39-.LFB12885
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L427-.LFB12885
	.uleb128 0
	.uleb128 .LEHB40-.LFB12885
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L428-.LFB12885
	.uleb128 0
	.uleb128 .LEHB41-.LFB12885
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L424-.LFB12885
	.uleb128 0
	.uleb128 .LEHB42-.LFB12885
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L429-.LFB12885
	.uleb128 0
	.uleb128 .LEHB43-.LFB12885
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L430-.LFB12885
	.uleb128 0
	.uleb128 .LEHB44-.LFB12885
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L424-.LFB12885
	.uleb128 0
	.uleb128 .LEHB45-.LFB12885
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L431-.LFB12885
	.uleb128 0
	.uleb128 .LEHB46-.LFB12885
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L432-.LFB12885
	.uleb128 0
	.uleb128 .LEHB47-.LFB12885
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L433-.LFB12885
	.uleb128 0
	.uleb128 .LEHB48-.LFB12885
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L434-.LFB12885
	.uleb128 0
	.uleb128 .LEHB49-.LFB12885
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L447-.LFB12885
	.uleb128 0
	.uleb128 .LEHB50-.LFB12885
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L435-.LFB12885
	.uleb128 0
	.uleb128 .LEHB51-.LFB12885
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB52-.LFB12885
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L437-.LFB12885
	.uleb128 0
	.uleb128 .LEHB53-.LFB12885
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L448-.LFB12885
	.uleb128 0
	.uleb128 .LEHB54-.LFB12885
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L438-.LFB12885
	.uleb128 0
	.uleb128 .LEHB55-.LFB12885
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L449-.LFB12885
	.uleb128 0
	.uleb128 .LEHB56-.LFB12885
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L450-.LFB12885
	.uleb128 0
	.uleb128 .LEHB57-.LFB12885
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L451-.LFB12885
	.uleb128 0
	.uleb128 .LEHB58-.LFB12885
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L452-.LFB12885
	.uleb128 0
	.uleb128 .LEHB59-.LFB12885
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L438-.LFB12885
	.uleb128 0
	.uleb128 .LEHB60-.LFB12885
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB61-.LFB12885
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L439-.LFB12885
	.uleb128 0
	.uleb128 .LEHB62-.LFB12885
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L453-.LFB12885
	.uleb128 0
	.uleb128 .LEHB63-.LFB12885
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L440-.LFB12885
	.uleb128 0
	.uleb128 .LEHB64-.LFB12885
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L454-.LFB12885
	.uleb128 0
	.uleb128 .LEHB65-.LFB12885
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L455-.LFB12885
	.uleb128 0
	.uleb128 .LEHB66-.LFB12885
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L456-.LFB12885
	.uleb128 0
	.uleb128 .LEHB67-.LFB12885
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L457-.LFB12885
	.uleb128 0
	.uleb128 .LEHB68-.LFB12885
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L440-.LFB12885
	.uleb128 0
	.uleb128 .LEHB69-.LFB12885
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB70-.LFB12885
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L441-.LFB12885
	.uleb128 0
	.uleb128 .LEHB71-.LFB12885
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L458-.LFB12885
	.uleb128 0
	.uleb128 .LEHB72-.LFB12885
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L442-.LFB12885
	.uleb128 0
	.uleb128 .LEHB73-.LFB12885
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L459-.LFB12885
	.uleb128 0
	.uleb128 .LEHB74-.LFB12885
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L460-.LFB12885
	.uleb128 0
	.uleb128 .LEHB75-.LFB12885
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L461-.LFB12885
	.uleb128 0
	.uleb128 .LEHB76-.LFB12885
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L462-.LFB12885
	.uleb128 0
	.uleb128 .LEHB77-.LFB12885
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L442-.LFB12885
	.uleb128 0
	.uleb128 .LEHB78-.LFB12885
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB79-.LFB12885
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L443-.LFB12885
	.uleb128 0
	.uleb128 .LEHB80-.LFB12885
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L463-.LFB12885
	.uleb128 0
	.uleb128 .LEHB81-.LFB12885
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L444-.LFB12885
	.uleb128 0
	.uleb128 .LEHB82-.LFB12885
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L464-.LFB12885
	.uleb128 0
	.uleb128 .LEHB83-.LFB12885
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L465-.LFB12885
	.uleb128 0
	.uleb128 .LEHB84-.LFB12885
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L466-.LFB12885
	.uleb128 0
	.uleb128 .LEHB85-.LFB12885
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L467-.LFB12885
	.uleb128 0
	.uleb128 .LEHB86-.LFB12885
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L444-.LFB12885
	.uleb128 0
	.uleb128 .LEHB87-.LFB12885
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB88-.LFB12885
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L445-.LFB12885
	.uleb128 0
	.uleb128 .LEHB89-.LFB12885
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L468-.LFB12885
	.uleb128 0
	.uleb128 .LEHB90-.LFB12885
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L445-.LFB12885
	.uleb128 0
	.uleb128 .LEHB91-.LFB12885
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L469-.LFB12885
	.uleb128 0
	.uleb128 .LEHB92-.LFB12885
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L470-.LFB12885
	.uleb128 0
	.uleb128 .LEHB93-.LFB12885
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L471-.LFB12885
	.uleb128 0
	.uleb128 .LEHB94-.LFB12885
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L472-.LFB12885
	.uleb128 0
	.uleb128 .LEHB95-.LFB12885
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L445-.LFB12885
	.uleb128 0
	.uleb128 .LEHB96-.LFB12885
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB97-.LFB12885
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L446-.LFB12885
	.uleb128 0
	.uleb128 .LEHB98-.LFB12885
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L473-.LFB12885
	.uleb128 0
	.uleb128 .LEHB99-.LFB12885
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L446-.LFB12885
	.uleb128 0
	.uleb128 .LEHB100-.LFB12885
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L474-.LFB12885
	.uleb128 0
	.uleb128 .LEHB101-.LFB12885
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L475-.LFB12885
	.uleb128 0
	.uleb128 .LEHB102-.LFB12885
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L476-.LFB12885
	.uleb128 0
	.uleb128 .LEHB103-.LFB12885
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L477-.LFB12885
	.uleb128 0
	.uleb128 .LEHB104-.LFB12885
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L446-.LFB12885
	.uleb128 0
	.uleb128 .LEHB105-.LFB12885
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L436-.LFB12885
	.uleb128 0
	.uleb128 .LEHB106-.LFB12885
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
.LLSDACSE12885:
	.text
	.size	_ZN14SessionManager5loginE7QStringS0_, .-_ZN14SessionManager5loginE7QStringS0_
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.rodata.str1.1
.LC33:
	.string	""
	.section	.text.unlikely
	.align 2
.LCOLDB34:
	.text
.LHOTB34:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager10isLoggedInEv
	.type	_ZN14SessionManager10isLoggedInEv, @function
_ZN14SessionManager10isLoggedInEv:
.LFB12887:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12887
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
	leaq	.LC21(%rip), %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$3, %esi
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
.LEHB107:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE107:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 64(%rsp)
.LEHB108:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE108:
	leaq	48(%rsp), %rbx
	leaq	64(%rsp), %rbp
	leaq	32(%rsp), %r12
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 32(%rsp)
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
.LEHB109:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE109:
	movq	16(%r13), %rsi
	movq	%rsp, %rdi
	movq	%rbx, %rdx
.LEHB110:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE110:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L586
	cmpl	$-1, %eax
	je	.L583
	lock subl	$1, (%rdi)
	je	.L662
.L583:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L591
	cmpl	$-1, %eax
	je	.L588
	lock subl	$1, (%rdi)
	je	.L663
.L588:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L596
.L592:
	cmpl	$-1, %eax
	je	.L593
	lock subl	$1, (%rdi)
	je	.L664
.L593:
	movq	(%rsp), %rdi
	leaq	.LC33(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
.LEHB111:
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
.LEHE111:
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.L665
.L601:
	movq	(%rsp), %rdi
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L633
	cmpl	$-1, %edx
	je	.L630
	lock subl	$1, (%rdi)
	je	.L666
.L630:
	movq	72(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%r14d, %eax
	jne	.L667
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
.L663:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L591:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L592
.L596:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L593
.L662:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L586:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L583
.L666:
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L633:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L630
	.p2align 4,,10
	.p2align 3
.L665:
	leaq	.LC24(%rip), %rdi
	movl	$3, %esi
.LEHB112:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE112:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 48(%rsp)
.LEHB113:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE113:
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, 32(%rsp)
.LEHB114:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE114:
	leaq	16(%rsp), %r14
	movq	16(%r13), %rsi
	movq	%rbp, %rdx
	movq	%r14, %rdi
.LEHB115:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE115:
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L608
	cmpl	$-1, %eax
	je	.L605
	lock subl	$1, (%rdi)
	je	.L668
.L605:
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L613
.L609:
	cmpl	$-1, %eax
	je	.L610
	lock subl	$1, (%rdi)
	je	.L669
.L610:
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L618
.L614:
	cmpl	$-1, %eax
	je	.L615
	lock subl	$1, (%rdi)
	je	.L670
.L615:
	movq	16(%rsp), %rdi
	leaq	.LC33(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
.LEHB116:
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
.LEHE116:
	movq	16(%rsp), %rdi
	testl	%eax, %eax
	setne	%r14b
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L628
	cmpl	$-1, %eax
	je	.L601
	lock subl	$1, (%rdi)
	jne	.L601
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L628:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L601
.L668:
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L608:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L609
.L613:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L614
.L618:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L615
.L667:
	call	__stack_chk_fail@PLT
.L638:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L654:
	movq	%rsp, %rdi
	call	_ZN7QStringD1Ev@PLT
.L635:
	movq	%rbx, %rdi
.LEHB117:
	call	_Unwind_Resume@PLT
.LEHE117:
.L670:
	movq	48(%rsp), %rdi
	jmp	.L618
.L669:
	movq	32(%rsp), %rdi
	jmp	.L613
.L640:
	movq	%rax, %rbx
.L599:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
.L600:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L635
.L639:
	movq	%rax, %rbx
	leaq	64(%rsp), %rbp
	jmp	.L600
.L664:
	movq	64(%rsp), %rdi
	jmp	.L596
.L641:
	movq	%rax, %r13
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r13, %rbx
	jmp	.L599
.L646:
.L657:
	movq	%rax, %rbx
	jmp	.L654
.L643:
	movq	%rax, %rbp
.L622:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
.L623:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L654
.L644:
	movq	%rax, %r13
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%r13, %rbp
	jmp	.L622
.L645:
	jmp	.L657
.L642:
	movq	%rax, %rbp
	jmp	.L623
.L647:
	movq	%rax, %rbx
	jmp	.L635
	.cfi_endproc
.LFE12887:
	.section	.gcc_except_table
.LLSDA12887:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12887-.LLSDACSB12887
.LLSDACSB12887:
	.uleb128 .LEHB107-.LFB12887
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L647-.LFB12887
	.uleb128 0
	.uleb128 .LEHB108-.LFB12887
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L639-.LFB12887
	.uleb128 0
	.uleb128 .LEHB109-.LFB12887
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L640-.LFB12887
	.uleb128 0
	.uleb128 .LEHB110-.LFB12887
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L641-.LFB12887
	.uleb128 0
	.uleb128 .LEHB111-.LFB12887
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L646-.LFB12887
	.uleb128 0
	.uleb128 .LEHB112-.LFB12887
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L645-.LFB12887
	.uleb128 0
	.uleb128 .LEHB113-.LFB12887
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L642-.LFB12887
	.uleb128 0
	.uleb128 .LEHB114-.LFB12887
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L643-.LFB12887
	.uleb128 0
	.uleb128 .LEHB115-.LFB12887
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L644-.LFB12887
	.uleb128 0
	.uleb128 .LEHB116-.LFB12887
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L638-.LFB12887
	.uleb128 0
	.uleb128 .LEHB117-.LFB12887
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
.LLSDACSE12887:
	.text
	.size	_ZN14SessionManager10isLoggedInEv, .-_ZN14SessionManager10isLoggedInEv
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.rodata.str1.1
.LC35:
	.string	"Logging out..."
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"https://telepool-144405.appspot.com/api/v1/logout"
	.section	.rodata.str1.1
.LC37:
	.string	"default"
.LC38:
	.string	"STATUS:"
	.section	.text.unlikely
	.align 2
.LCOLDB39:
	.text
.LHOTB39:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager6logoutEv
	.type	_ZN14SessionManager6logoutEv, @function
_ZN14SessionManager6logoutEv:
.LFB12886:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12886
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$14, %esi
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
	leaq	.LC35(%rip), %rdi
	subq	$584, %rsp
	.cfi_def_cfa_offset 640
	leaq	528(%rsp), %rbp
	movq	%fs:40, %rax
	movq	%rax, 568(%rsp)
	xorl	%eax, %eax
.LEHB118:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE118:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 528(%rsp)
.LEHB119:
	call	_ZN14SessionManager12loadingStartE7QString@PLT
.LEHE119:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L676
	cmpl	$-1, %eax
	je	.L673
	lock subl	$1, (%rdi)
	je	.L1064
.L673:
	movq	%rbx, %rdi
.LEHB120:
	call	_ZN14SessionManager10isLoggedInEv@PLT
	testb	%al, %al
	movl	%eax, %r15d
	je	.L1065
.L677:
	leaq	304(%rsp), %r14
	movq	%r14, %rdi
	call	_ZN11QJsonObjectC1Ev@PLT
.LEHE120:
	leaq	.LC21(%rip), %rdi
	movl	$3, %esi
.LEHB121:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE121:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB122:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE122:
	leaq	144(%rsp), %r13
	leaq	496(%rsp), %r12
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%rax, 496(%rsp)
	movq	%r12, %rsi
	movq	%r13, %rdi
.LEHB123:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE123:
	movq	16(%rbx), %rsi
	leaq	32(%rsp), %rdi
	movq	%r13, %rdx
	movq	%rdi, (%rsp)
.LEHB124:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE124:
	movq	144(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L683
	cmpl	$-1, %eax
	je	.L680
	lock subl	$1, (%rdi)
	je	.L1066
.L680:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L688
.L684:
	cmpl	$-1, %eax
	je	.L685
	lock subl	$1, (%rdi)
	je	.L1067
.L685:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L693
.L689:
	cmpl	$-1, %eax
	je	.L690
	lock subl	$1, (%rdi)
	je	.L1068
.L690:
	leaq	432(%rsp), %r13
	movq	(%rsp), %rsi
	movq	%r13, %rdi
.LEHB125:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE125:
	leaq	.LC31(%rip), %rdi
	movl	$7, %esi
.LEHB126:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE126:
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	%rax, 496(%rsp)
.LEHB127:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movq	%rax, 528(%rsp)
	movq	%rdx, 536(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE127:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L703
	cmpl	$-1, %eax
	je	.L700
	lock subl	$1, (%rdi)
	je	.L1069
.L700:
	movq	%r13, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	32(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L708
	cmpl	$-1, %eax
	je	.L705
	lock subl	$1, (%rdi)
	je	.L1070
.L705:
	leaq	.LC24(%rip), %rdi
	movl	$3, %esi
.LEHB128:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE128:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB129:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE129:
	leaq	160(%rsp), %r13
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, 496(%rsp)
	movq	%r13, %rdi
.LEHB130:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE130:
	leaq	48(%rsp), %rax
	movq	16(%rbx), %rsi
	movq	%r13, %rdx
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB131:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE131:
	movq	160(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L713
	cmpl	$-1, %eax
	je	.L710
	lock subl	$1, (%rdi)
	je	.L1071
.L710:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L718
	cmpl	$-1, %eax
	je	.L715
	lock subl	$1, (%rdi)
	je	.L1072
.L715:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L723
	cmpl	$-1, %eax
	je	.L720
	lock subl	$1, (%rdi)
	je	.L1073
.L720:
	leaq	464(%rsp), %r13
	movq	(%rsp), %rsi
	movq	%r13, %rdi
.LEHB132:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE132:
	leaq	.LC23(%rip), %rdi
	movl	$10, %esi
.LEHB133:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE133:
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	%rax, 496(%rsp)
.LEHB134:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movq	%rax, 528(%rsp)
	movq	%rdx, 536(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE134:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L732
	cmpl	$-1, %eax
	je	.L729
	lock subl	$1, (%rdi)
	je	.L1074
.L729:
	movq	%r13, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	48(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L737
	cmpl	$-1, %eax
	je	.L734
	lock subl	$1, (%rdi)
	je	.L1075
.L734:
	leaq	.LC26(%rip), %rdi
	movl	$4, %esi
.LEHB135:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE135:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB136:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE136:
	movq	%rax, 496(%rsp)
	leaq	176(%rsp), %rax
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
.LEHB137:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE137:
	leaq	64(%rsp), %rcx
	movq	16(%rbx), %rsi
	movq	8(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, (%rsp)
.LEHB138:
	call	_ZN15SettingsManager9getStringE7QString@PLT
.LEHE138:
	movq	176(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L742
	cmpl	$-1, %eax
	je	.L739
	lock subl	$1, (%rdi)
	je	.L1076
.L739:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L747
	cmpl	$-1, %eax
	je	.L744
	lock subl	$1, (%rdi)
	je	.L1077
.L744:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L752
	cmpl	$-1, %eax
	je	.L749
	lock subl	$1, (%rdi)
	je	.L1078
.L749:
	movq	(%rsp), %rsi
	movq	%r12, %rdi
.LEHB139:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE139:
	leaq	.LC25(%rip), %rdi
	movl	$11, %esi
.LEHB140:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE140:
	movq	%r13, %rsi
	movq	%r14, %rdi
	movq	%rax, 464(%rsp)
.LEHB141:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, 528(%rsp)
	movq	%rdx, 536(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE141:
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L761
	cmpl	$-1, %eax
	je	.L758
	lock subl	$1, (%rdi)
	je	.L1079
.L758:
	movq	%r12, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	64(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L766
	cmpl	$-1, %eax
	je	.L763
	lock subl	$1, (%rdi)
	je	.L1080
.L763:
	leaq	.LC36(%rip), %rdi
	movl	$49, %esi
.LEHB142:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE142:
	movq	%rax, 528(%rsp)
	leaq	80(%rsp), %rax
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB143:
	call	_ZN4QUrlC1ERK7QStringNS_11ParsingModeE@PLT
.LEHE143:
	leaq	320(%rsp), %rcx
	movq	24(%rbx), %rsi
	movq	(%rsp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	movq	%r14, %rcx
.LEHB144:
	call	_ZN14NetworkManager8jsonPostERK4QUrlRK11QJsonObject@PLT
.LEHE144:
	movq	(%rsp), %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L771
	cmpl	$-1, %eax
	je	.L768
	lock subl	$1, (%rdi)
	je	.L1081
.L768:
	leaq	.LC18(%rip), %rdi
	movl	$6, %esi
.LEHB145:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE145:
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	movq	%rax, 464(%rsp)
.LEHB146:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, 496(%rsp)
	movq	%rdx, 504(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE146:
	leaq	112(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB147:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE147:
	movq	%rbp, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	96(%rsp), %rcx
	movq	(%rsp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, 24(%rsp)
.LEHB148:
	call	_ZN7QString14trimmed_helperERS_@PLT
.LEHE148:
	movq	112(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L779
	cmpl	$-1, %eax
	je	.L776
	lock subl	$1, (%rdi)
	je	.L1082
.L776:
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L784
.L780:
	cmpl	$-1, %eax
	je	.L781
	lock subl	$1, (%rdi)
	je	.L1083
.L781:
	leaq	.LC37(%rip), %rax
	movq	%rbp, %rsi
	movl	$2, 528(%rsp)
	movl	$0, 532(%rsp)
	movq	$0, 536(%rsp)
	movq	%rax, 552(%rsp)
	leaq	128(%rsp), %rax
	movq	$0, 544(%rsp)
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB149:
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE149:
	leaq	192(%rsp), %rax
	leaq	.LC38(%rip), %rsi
	movl	$7, %edx
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
.LEHB150:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE150:
	movq	16(%rsp), %rsi
	movq	128(%rsp), %rdi
.LEHB151:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE151:
	movq	192(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L789
	cmpl	$-1, %eax
	je	.L786
	lock subl	$1, (%rdi)
	je	.L1084
.L786:
	movq	128(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L790
.L792:
	movq	96(%rsp), %rsi
	movq	(%rsp), %rdi
	movl	4(%rsi), %edx
	addq	16(%rsi), %rsi
.LEHB152:
	call	_ZN6QDebug9putStringEPK5QCharm@PLT
.LEHE152:
	movq	128(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L795
.L797:
	movq	(%rsp), %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	96(%rsp), %rdi
	leaq	.LC33(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
.LEHB153:
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
	testl	%eax, %eax
	je	.L798
	leaq	.LC33(%rip), %rdi
	xorl	%esi, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE153:
	movq	%rax, 464(%rsp)
	leaq	336(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB154:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE154:
	leaq	.LC21(%rip), %rdi
	movl	$3, %esi
.LEHB155:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE155:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB156:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE156:
	leaq	208(%rsp), %rcx
	movl	$32, %r8d
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, 496(%rsp)
	movq	%rcx, %rdi
	xorl	%ecx, %ecx
	movq	%rdi, 16(%rsp)
.LEHB157:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE157:
	movq	16(%rbx), %rdi
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
.LEHB158:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE158:
	movq	208(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L803
	cmpl	$-1, %eax
	je	.L800
	lock subl	$1, (%rdi)
	je	.L1085
.L800:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L808
.L804:
	cmpl	$-1, %eax
	je	.L805
	lock subl	$1, (%rdi)
	je	.L1086
.L805:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L813
.L809:
	cmpl	$-1, %eax
	je	.L810
	lock subl	$1, (%rdi)
	je	.L1087
.L810:
	movq	(%rsp), %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB159:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE159:
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L824
	cmpl	$-1, %eax
	je	.L821
	lock subl	$1, (%rdi)
	je	.L1088
.L821:
	leaq	.LC33(%rip), %rdi
	xorl	%esi, %esi
.LEHB160:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE160:
	movq	%rax, 464(%rsp)
	leaq	352(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB161:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE161:
	leaq	.LC14(%rip), %rdi
	movl	$5, %esi
.LEHB162:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE162:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB163:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE163:
	leaq	224(%rsp), %rcx
	movl	$32, %r8d
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, 496(%rsp)
	movq	%rcx, %rdi
	xorl	%ecx, %ecx
	movq	%rdi, 16(%rsp)
.LEHB164:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE164:
	movq	16(%rbx), %rdi
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
.LEHB165:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE165:
	movq	224(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L829
	cmpl	$-1, %eax
	je	.L826
	lock subl	$1, (%rdi)
	je	.L1089
.L826:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L834
	cmpl	$-1, %eax
	je	.L831
	lock subl	$1, (%rdi)
	je	.L1090
.L831:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L839
	cmpl	$-1, %eax
	je	.L836
	lock subl	$1, (%rdi)
	je	.L1091
.L836:
	movq	(%rsp), %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB166:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE166:
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L850
	cmpl	$-1, %eax
	je	.L847
	lock subl	$1, (%rdi)
	je	.L1092
.L847:
	leaq	.LC33(%rip), %rdi
	xorl	%esi, %esi
.LEHB167:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE167:
	movq	%rax, 464(%rsp)
	leaq	368(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB168:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE168:
	leaq	.LC24(%rip), %rdi
	movl	$3, %esi
.LEHB169:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE169:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB170:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE170:
	leaq	240(%rsp), %rcx
	movl	$32, %r8d
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, 496(%rsp)
	movq	%rcx, %rdi
	xorl	%ecx, %ecx
	movq	%rdi, 16(%rsp)
.LEHB171:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE171:
	movq	16(%rbx), %rdi
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
.LEHB172:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE172:
	movq	240(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L855
	cmpl	$-1, %eax
	je	.L852
	lock subl	$1, (%rdi)
	je	.L1093
.L852:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L860
	cmpl	$-1, %eax
	je	.L857
	lock subl	$1, (%rdi)
	je	.L1094
.L857:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L865
	cmpl	$-1, %eax
	je	.L862
	lock subl	$1, (%rdi)
	je	.L1095
.L862:
	movq	(%rsp), %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB173:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE173:
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L876
	cmpl	$-1, %eax
	je	.L873
	lock subl	$1, (%rdi)
	je	.L1096
.L873:
	leaq	.LC33(%rip), %rdi
	xorl	%esi, %esi
.LEHB174:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE174:
	movq	%rax, 464(%rsp)
	leaq	384(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB175:
	call	_ZN8QVariantC1ERK7QString@PLT
.LEHE175:
	leaq	.LC26(%rip), %rdi
	movl	$4, %esi
.LEHB176:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE176:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB177:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE177:
	leaq	256(%rsp), %rcx
	movl	$32, %r8d
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, 496(%rsp)
	movq	%rcx, %rdi
	xorl	%ecx, %ecx
	movq	%rdi, 16(%rsp)
.LEHB178:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE178:
	movq	16(%rbx), %rdi
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
.LEHB179:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE179:
	movq	256(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L881
	cmpl	$-1, %eax
	je	.L878
	lock subl	$1, (%rdi)
	je	.L1097
.L878:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L886
	cmpl	$-1, %eax
	je	.L883
	lock subl	$1, (%rdi)
	je	.L1098
.L883:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L891
	cmpl	$-1, %eax
	je	.L888
	lock subl	$1, (%rdi)
	je	.L1099
.L888:
	movq	(%rsp), %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB180:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
.LEHE180:
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L902
	cmpl	$-1, %eax
	je	.L899
	lock subl	$1, (%rdi)
	je	.L1100
.L899:
	leaq	400(%rsp), %r13
	xorl	%esi, %esi
	movq	%r13, %rdi
.LEHB181:
	call	_ZN8QVariantC1Ei@PLT
.LEHE181:
	leaq	.LC28(%rip), %rdi
	movl	$9, %esi
.LEHB182:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE182:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB183:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE183:
	movq	%rax, 496(%rsp)
	leaq	272(%rsp), %rax
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB184:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE184:
	movq	16(%rbx), %rdi
	movq	(%rsp), %rsi
	movq	%r13, %rdx
.LEHB185:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE185:
	movq	272(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L907
	cmpl	$-1, %eax
	je	.L904
	lock subl	$1, (%rdi)
	je	.L1101
.L904:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L912
	cmpl	$-1, %eax
	je	.L909
	lock subl	$1, (%rdi)
	je	.L1102
.L909:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L917
	cmpl	$-1, %eax
	je	.L914
	lock subl	$1, (%rdi)
	je	.L1103
.L914:
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB186:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
	leaq	416(%rsp), %r13
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	_ZN8QVariantC1Ei@PLT
.LEHE186:
	leaq	.LC30(%rip), %rdi
	movl	$12, %esi
.LEHB187:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE187:
	leaq	.LC22(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 528(%rsp)
.LEHB188:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE188:
	movq	%rax, 496(%rsp)
	leaq	288(%rsp), %rax
	movl	$32, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB189:
	call	_ZNK7QString3argERKS_i5QChar@PLT
.LEHE189:
	movq	16(%rbx), %rdi
	movq	(%rsp), %rsi
	movq	%r13, %rdx
.LEHB190:
	call	_ZN9QSettings8setValueERK7QStringRK8QVariant@PLT
.LEHE190:
	movq	288(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L928
	cmpl	$-1, %eax
	je	.L925
	lock subl	$1, (%rdi)
	je	.L1104
.L925:
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L933
.L929:
	cmpl	$-1, %eax
	je	.L930
	lock subl	$1, (%rdi)
	je	.L1105
.L930:
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L938
.L934:
	cmpl	$-1, %eax
	je	.L935
	lock subl	$1, (%rdi)
	je	.L1106
.L935:
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbx, %rdi
.LEHB191:
	call	_ZN14SessionManager19sessionParamChangedEv@PLT
	movq	%rbx, %rdi
	call	_ZN14SessionManager9loggedOutEv@PLT
	movq	%rbx, %rdi
	call	_ZN14SessionManager11loadingStopEv@PLT
.LEHE191:
	movq	96(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L945
.L949:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L946
.L1066:
	movq	144(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L683:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L684
.L688:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L689
.L693:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L690
.L1064:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L676:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	%rbx, %rdi
.LEHB192:
	call	_ZN14SessionManager10isLoggedInEv@PLT
	testb	%al, %al
	movl	%eax, %r15d
	jne	.L677
.L1065:
	movq	%rbx, %rdi
	movl	$1, %r15d
	call	_ZN14SessionManager9loggedOutEv@PLT
	movq	%rbx, %rdi
	call	_ZN14SessionManager11loadingStopEv@PLT
.LEHE192:
.L678:
	movq	568(%rsp), %rbx
	xorq	%fs:40, %rbx
	movl	%r15d, %eax
	jne	.L1107
	addq	$584, %rsp
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
.L798:
	.cfi_restore_state
	movq	%rbx, %rdi
.LEHB193:
	call	_ZN14SessionManager11loadingStopEv@PLT
.LEHE193:
	movq	96(%rsp), %rdi
	xorl	%r15d, %r15d
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L949
.L945:
	cmpl	$-1, %eax
	je	.L946
	lock subl	$1, (%rdi)
	je	.L1108
.L946:
	movq	8(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	%r14, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	jmp	.L678
.L1082:
	movq	112(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L779:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	464(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L780
.L784:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L781
.L1081:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L771:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L768
.L1080:
	movq	64(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L766:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L763
.L1079:
	movq	464(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L761:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L758
.L1078:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L752:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L749
.L1077:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L747:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L744
.L1076:
	movq	176(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L742:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L739
.L1075:
	movq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L737:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L734
.L1084:
	movq	192(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L789:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	128(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L792
.L790:
	movl	$32, %esi
.LEHB194:
	call	_ZN11QTextStreamlsEc@PLT
	jmp	.L792
.L1074:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L732:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L729
.L1073:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L723:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L720
.L1072:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L718:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L715
.L1071:
	movq	160(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L713:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L710
.L1070:
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L708:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L705
.L1069:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L703:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L700
	.p2align 4,,10
	.p2align 3
.L795:
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.LEHE194:
	jmp	.L797
.L1085:
	movq	208(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L803:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L804
.L808:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L809
.L813:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L810
.L1104:
	movq	288(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L928:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	496(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L929
.L933:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	528(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L934
.L938:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L935
.L1103:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L917:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L914
.L1102:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L912:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L909
.L1101:
	movq	272(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L907:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L904
.L1100:
	movq	464(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L902:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L899
.L1099:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L891:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L888
.L1098:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L886:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L883
.L1097:
	movq	256(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L881:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L878
.L1096:
	movq	464(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L876:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L873
.L1095:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L865:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L862
.L1094:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L860:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L857
.L1093:
	movq	240(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L855:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L852
.L1088:
	movq	464(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L824:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L821
.L1092:
	movq	464(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L850:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L847
.L1091:
	movq	528(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L839:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L836
.L1090:
	movq	496(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L834:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L831
.L1089:
	movq	224(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L829:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L826
.L1107:
	call	__stack_chk_fail@PLT
.L1106:
	movq	528(%rsp), %rdi
	jmp	.L938
.L1105:
	movq	496(%rsp), %rdi
	jmp	.L933
.L1021:
.L1048:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L941:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
.L942:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
.L943:
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
.L923:
	movq	24(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L963:
	movq	8(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L698:
	movq	%r14, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	%rbx, %rdi
.LEHB195:
	call	_Unwind_Resume@PLT
.L1020:
.L1047:
	movq	%rax, %rbx
	jmp	.L941
.L1019:
.L1043:
	movq	%rax, %rbx
	jmp	.L942
.L1018:
.L1036:
	movq	%rax, %rbx
	jmp	.L943
.L1017:
	jmp	.L1048
.L1016:
	jmp	.L1047
.L1015:
	jmp	.L1043
.L1014:
	jmp	.L1036
.L1013:
.L1050:
	movq	16(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L894:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
.L895:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
.L896:
	movq	(%rsp), %rdi
	call	_ZN8QVariantD1Ev@PLT
.L897:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L923
.L1012:
.L1049:
	movq	%rax, %rbx
	jmp	.L894
.L1011:
.L1046:
	movq	%rax, %rbx
	jmp	.L895
.L1010:
.L1042:
	movq	%rax, %rbx
	jmp	.L896
.L986:
.L1039:
	movq	%rax, %rbx
	jmp	.L897
.L1009:
	jmp	.L1050
.L1008:
	jmp	.L1049
.L1007:
	jmp	.L1046
.L1006:
	jmp	.L1042
.L985:
	jmp	.L1039
.L1005:
	jmp	.L1050
.L1004:
	jmp	.L1049
.L1003:
	jmp	.L1046
.L1002:
	jmp	.L1042
.L984:
	jmp	.L1039
.L1087:
	movq	528(%rsp), %rdi
	jmp	.L813
.L1086:
	movq	496(%rsp), %rdi
	jmp	.L808
.L990:
.L1038:
	movq	%rax, %rbx
.L961:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L698
.L991:
.L1040:
	movq	%rax, %rbx
.L755:
	movq	%r12, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L961
.L992:
.L1041:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L755
.L970:
.L1037:
	movq	%rax, %rbx
.L959:
	movq	(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L698
.L971:
.L1044:
	movq	%rax, %rbx
.L955:
	movq	%r13, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L959
.L972:
.L1045:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L955
.L993:
	jmp	.L1038
.L994:
	jmp	.L1040
.L995:
	movq	8(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L755
.L1067:
	movq	496(%rsp), %rdi
	jmp	.L688
.L1068:
	movq	528(%rsp), %rdi
	jmp	.L693
.L967:
	jmp	.L1037
.L968:
	jmp	.L1044
.L969:
	jmp	.L1045
.L981:
	movq	%rax, %rbx
.L794:
	movq	(%rsp), %rdi
	call	_ZN6QDebugD1Ev@PLT
	jmp	.L923
.L997:
	movq	16(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L794
.L983:
	jmp	.L1039
.L998:
	jmp	.L1042
.L999:
	jmp	.L1046
.L1000:
	jmp	.L1049
.L1001:
	jmp	.L1050
.L973:
	jmp	.L1037
.L974:
	movq	%rax, %rbx
.L958:
	movq	%r12, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L959
.L975:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L958
.L976:
	jmp	.L1038
.L977:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN4QUrlD1Ev@PLT
	jmp	.L961
.L978:
	movq	%rax, %rbx
	jmp	.L963
.L979:
	movq	%rax, %rbx
.L774:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L963
.L996:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L774
.L980:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L774
.L1083:
	movq	464(%rsp), %rdi
	jmp	.L784
.L982:
	movq	%rax, %rbx
	jmp	.L923
.L966:
	movq	%rax, %rbx
	jmp	.L698
.L988:
	jmp	.L1040
.L987:
	jmp	.L1038
.L989:
	jmp	.L1041
.L965:
	movq	%rax, %rbx
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE195:
.L1108:
	movq	96(%rsp), %rdi
	jmp	.L949
	.cfi_endproc
.LFE12886:
	.section	.gcc_except_table
.LLSDA12886:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12886-.LLSDACSB12886
.LLSDACSB12886:
	.uleb128 .LEHB118-.LFB12886
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB119-.LFB12886
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L965-.LFB12886
	.uleb128 0
	.uleb128 .LEHB120-.LFB12886
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB12886
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L966-.LFB12886
	.uleb128 0
	.uleb128 .LEHB122-.LFB12886
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L987-.LFB12886
	.uleb128 0
	.uleb128 .LEHB123-.LFB12886
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L988-.LFB12886
	.uleb128 0
	.uleb128 .LEHB124-.LFB12886
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L989-.LFB12886
	.uleb128 0
	.uleb128 .LEHB125-.LFB12886
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L967-.LFB12886
	.uleb128 0
	.uleb128 .LEHB126-.LFB12886
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L968-.LFB12886
	.uleb128 0
	.uleb128 .LEHB127-.LFB12886
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L969-.LFB12886
	.uleb128 0
	.uleb128 .LEHB128-.LFB12886
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L966-.LFB12886
	.uleb128 0
	.uleb128 .LEHB129-.LFB12886
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L990-.LFB12886
	.uleb128 0
	.uleb128 .LEHB130-.LFB12886
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L991-.LFB12886
	.uleb128 0
	.uleb128 .LEHB131-.LFB12886
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L992-.LFB12886
	.uleb128 0
	.uleb128 .LEHB132-.LFB12886
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L970-.LFB12886
	.uleb128 0
	.uleb128 .LEHB133-.LFB12886
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L971-.LFB12886
	.uleb128 0
	.uleb128 .LEHB134-.LFB12886
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L972-.LFB12886
	.uleb128 0
	.uleb128 .LEHB135-.LFB12886
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L966-.LFB12886
	.uleb128 0
	.uleb128 .LEHB136-.LFB12886
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L993-.LFB12886
	.uleb128 0
	.uleb128 .LEHB137-.LFB12886
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L994-.LFB12886
	.uleb128 0
	.uleb128 .LEHB138-.LFB12886
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L995-.LFB12886
	.uleb128 0
	.uleb128 .LEHB139-.LFB12886
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L973-.LFB12886
	.uleb128 0
	.uleb128 .LEHB140-.LFB12886
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L974-.LFB12886
	.uleb128 0
	.uleb128 .LEHB141-.LFB12886
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L975-.LFB12886
	.uleb128 0
	.uleb128 .LEHB142-.LFB12886
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L966-.LFB12886
	.uleb128 0
	.uleb128 .LEHB143-.LFB12886
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L976-.LFB12886
	.uleb128 0
	.uleb128 .LEHB144-.LFB12886
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L977-.LFB12886
	.uleb128 0
	.uleb128 .LEHB145-.LFB12886
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L978-.LFB12886
	.uleb128 0
	.uleb128 .LEHB146-.LFB12886
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L979-.LFB12886
	.uleb128 0
	.uleb128 .LEHB147-.LFB12886
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L996-.LFB12886
	.uleb128 0
	.uleb128 .LEHB148-.LFB12886
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L980-.LFB12886
	.uleb128 0
	.uleb128 .LEHB149-.LFB12886
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB150-.LFB12886
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L981-.LFB12886
	.uleb128 0
	.uleb128 .LEHB151-.LFB12886
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L997-.LFB12886
	.uleb128 0
	.uleb128 .LEHB152-.LFB12886
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L981-.LFB12886
	.uleb128 0
	.uleb128 .LEHB153-.LFB12886
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB154-.LFB12886
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L983-.LFB12886
	.uleb128 0
	.uleb128 .LEHB155-.LFB12886
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L998-.LFB12886
	.uleb128 0
	.uleb128 .LEHB156-.LFB12886
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L999-.LFB12886
	.uleb128 0
	.uleb128 .LEHB157-.LFB12886
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L1000-.LFB12886
	.uleb128 0
	.uleb128 .LEHB158-.LFB12886
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L1001-.LFB12886
	.uleb128 0
	.uleb128 .LEHB159-.LFB12886
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L983-.LFB12886
	.uleb128 0
	.uleb128 .LEHB160-.LFB12886
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB161-.LFB12886
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L984-.LFB12886
	.uleb128 0
	.uleb128 .LEHB162-.LFB12886
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L1002-.LFB12886
	.uleb128 0
	.uleb128 .LEHB163-.LFB12886
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L1003-.LFB12886
	.uleb128 0
	.uleb128 .LEHB164-.LFB12886
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L1004-.LFB12886
	.uleb128 0
	.uleb128 .LEHB165-.LFB12886
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L1005-.LFB12886
	.uleb128 0
	.uleb128 .LEHB166-.LFB12886
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L984-.LFB12886
	.uleb128 0
	.uleb128 .LEHB167-.LFB12886
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB168-.LFB12886
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L985-.LFB12886
	.uleb128 0
	.uleb128 .LEHB169-.LFB12886
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L1006-.LFB12886
	.uleb128 0
	.uleb128 .LEHB170-.LFB12886
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L1007-.LFB12886
	.uleb128 0
	.uleb128 .LEHB171-.LFB12886
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L1008-.LFB12886
	.uleb128 0
	.uleb128 .LEHB172-.LFB12886
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L1009-.LFB12886
	.uleb128 0
	.uleb128 .LEHB173-.LFB12886
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L985-.LFB12886
	.uleb128 0
	.uleb128 .LEHB174-.LFB12886
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB175-.LFB12886
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L986-.LFB12886
	.uleb128 0
	.uleb128 .LEHB176-.LFB12886
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L1010-.LFB12886
	.uleb128 0
	.uleb128 .LEHB177-.LFB12886
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L1011-.LFB12886
	.uleb128 0
	.uleb128 .LEHB178-.LFB12886
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L1012-.LFB12886
	.uleb128 0
	.uleb128 .LEHB179-.LFB12886
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L1013-.LFB12886
	.uleb128 0
	.uleb128 .LEHB180-.LFB12886
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L986-.LFB12886
	.uleb128 0
	.uleb128 .LEHB181-.LFB12886
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB182-.LFB12886
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L1014-.LFB12886
	.uleb128 0
	.uleb128 .LEHB183-.LFB12886
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L1015-.LFB12886
	.uleb128 0
	.uleb128 .LEHB184-.LFB12886
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L1016-.LFB12886
	.uleb128 0
	.uleb128 .LEHB185-.LFB12886
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L1017-.LFB12886
	.uleb128 0
	.uleb128 .LEHB186-.LFB12886
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB187-.LFB12886
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L1018-.LFB12886
	.uleb128 0
	.uleb128 .LEHB188-.LFB12886
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L1019-.LFB12886
	.uleb128 0
	.uleb128 .LEHB189-.LFB12886
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L1020-.LFB12886
	.uleb128 0
	.uleb128 .LEHB190-.LFB12886
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L1021-.LFB12886
	.uleb128 0
	.uleb128 .LEHB191-.LFB12886
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB192-.LFB12886
	.uleb128 .LEHE192-.LEHB192
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB193-.LFB12886
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L982-.LFB12886
	.uleb128 0
	.uleb128 .LEHB194-.LFB12886
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L981-.LFB12886
	.uleb128 0
	.uleb128 .LEHB195-.LFB12886
	.uleb128 .LEHE195-.LEHB195
	.uleb128 0
	.uleb128 0
.LLSDACSE12886:
	.text
	.size	_ZN14SessionManager6logoutEv, .-_ZN14SessionManager6logoutEv
	.section	.text.unlikely
.LCOLDE39:
	.text
.LHOTE39:
	.section	.text.unlikely
	.align 2
.LCOLDB40:
	.text
.LHOTB40:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager8abortAllEv
	.type	_ZN14SessionManager8abortAllEv, @function
_ZN14SessionManager8abortAllEv:
.LFB12888:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	call	_ZN14NetworkManager5abortEv@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN14SessionManager11loadingStopEv@PLT
	.cfi_endproc
.LFE12888:
	.size	_ZN14SessionManager8abortAllEv, .-_ZN14SessionManager8abortAllEv
	.section	.text.unlikely
.LCOLDE40:
	.text
.LHOTE40:
	.section	.text.unlikely
	.align 2
.LCOLDB41:
	.text
.LHOTB41:
	.align 2
	.p2align 4,,15
	.globl	_ZN14SessionManager16genSessionsModelEP7QObject
	.type	_ZN14SessionManager16genSessionsModelEP7QObject, @function
_ZN14SessionManager16genSessionsModelEP7QObject:
.LFB12889:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12889
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp
	movl	$40, %edi
.LEHB196:
	call	_Znwm@PLT
.LEHE196:
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB197:
	call	_ZN13SessionsModelC1EP7QObject@PLT
.LEHE197:
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LEHB198:
	jmp	_ZN13SessionsModel6linkUpEP14NetworkManagerP15SettingsManager@PLT
.L1113:
	.cfi_restore_state
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE198:
	.cfi_endproc
.LFE12889:
	.section	.gcc_except_table
.LLSDA12889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12889-.LLSDACSB12889
.LLSDACSB12889:
	.uleb128 .LEHB196-.LFB12889
	.uleb128 .LEHE196-.LEHB196
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB197-.LFB12889
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L1113-.LFB12889
	.uleb128 0
	.uleb128 .LEHB198-.LFB12889
	.uleb128 .LEHE198-.LEHB198
	.uleb128 0
	.uleb128 0
.LLSDACSE12889:
	.text
	.size	_ZN14SessionManager16genSessionsModelEP7QObject, .-_ZN14SessionManager16genSessionsModelEP7QObject
	.section	.text.unlikely
.LCOLDE41:
	.text
.LHOTE41:
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

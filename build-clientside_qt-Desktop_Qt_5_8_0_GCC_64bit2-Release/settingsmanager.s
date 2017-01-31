	.file	"settingsmanager.cpp"
#APP
	.section .qtversion, "aG", @progbits, qt_version_tag, comdat
.align 8
.quad qt_version_tag@GOT
.long ((5<<16)|(8<<8)|(0))
.align 8
.previous
#NO_APP
	.section	.text.unlikely._ZN15SettingsManagerD2Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZN15SettingsManagerD2Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZN15SettingsManagerD2Ev
	.type	_ZN15SettingsManagerD2Ev, @function
_ZN15SettingsManagerD2Ev:
.LFB12525:
	.cfi_startproc
	movq	_ZTV15SettingsManager@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	jmp	_ZN9QSettingsD2Ev@PLT
	.cfi_endproc
.LFE12525:
	.size	_ZN15SettingsManagerD2Ev, .-_ZN15SettingsManagerD2Ev
	.section	.text.unlikely._ZN15SettingsManagerD2Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
.LCOLDE0:
	.section	.text._ZN15SettingsManagerD2Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
.LHOTE0:
	.weak	_ZN15SettingsManagerD1Ev
	.set	_ZN15SettingsManagerD1Ev,_ZN15SettingsManagerD2Ev
	.section	.text.unlikely._ZN15SettingsManagerD0Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
	.align 2
.LCOLDB1:
	.section	.text._ZN15SettingsManagerD0Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
.LHOTB1:
	.align 2
	.p2align 4,,15
	.weak	_ZN15SettingsManagerD0Ev
	.type	_ZN15SettingsManagerD0Ev, @function
_ZN15SettingsManagerD0Ev:
.LFB12527:
	.cfi_startproc
	movq	_ZTV15SettingsManager@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	call	_ZN9QSettingsD2Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE12527:
	.size	_ZN15SettingsManagerD0Ev, .-_ZN15SettingsManagerD0Ev
	.section	.text.unlikely._ZN15SettingsManagerD0Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
.LCOLDE1:
	.section	.text._ZN15SettingsManagerD0Ev,"axG",@progbits,_ZN15SettingsManagerD5Ev,comdat
.LHOTE1:
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4,,15
	.globl	_ZN15SettingsManagerC2ERK7QStringS2_P7QObject
	.type	_ZN15SettingsManagerC2ERK7QStringS2_P7QObject, @function
_ZN15SettingsManagerC2ERK7QStringS2_P7QObject:
.LFB11631:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN9QSettingsC2ERK7QStringS2_P7QObject@PLT
	movq	_ZTV15SettingsManager@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11631:
	.size	_ZN15SettingsManagerC2ERK7QStringS2_P7QObject, .-_ZN15SettingsManagerC2ERK7QStringS2_P7QObject
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.globl	_ZN15SettingsManagerC1ERK7QStringS2_P7QObject
	.set	_ZN15SettingsManagerC1ERK7QStringS2_P7QObject,_ZN15SettingsManagerC2ERK7QStringS2_P7QObject
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	""
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4,,15
	.globl	_ZN15SettingsManager9getStringE7QString
	.type	_ZN15SettingsManager9getStringE7QString, @function
_ZN15SettingsManager9getStringE7QString:
.LFB11633:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11633
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	.LC3(%rip), %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %r14
	movq	%rdi, %r12
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	leaq	16(%rsp), %rbp
	movq	%rsp, %rdi
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZN8QVariantC1EPKc@PLT
.LEHE0:
	movq	%rsp, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB1:
	call	_ZNK9QSettings5valueERK7QStringRK8QVariant@PLT
.LEHE1:
	movq	%rbp, %rsi
	movq	%r12, %rdi
.LEHB2:
	call	_ZNK8QVariant8toStringEv@PLT
.LEHE2:
	movq	%rbp, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rsp, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%r12, %rax
	jne	.L16
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
.L16:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L11:
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN8QVariantD1Ev@PLT
.L8:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L10:
	movq	%rax, %rbp
	jmp	.L8
	.cfi_endproc
.LFE11633:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA11633:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11633-.LLSDACSB11633
.LLSDACSB11633:
	.uleb128 .LEHB0-.LFB11633
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB11633
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB11633
	.uleb128 0
	.uleb128 .LEHB2-.LFB11633
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB11633
	.uleb128 0
	.uleb128 .LEHB3-.LFB11633
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE11633:
	.text
	.size	_ZN15SettingsManager9getStringE7QString, .-_ZN15SettingsManager9getStringE7QString
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
	.globl	_ZN15SettingsManager6getIntE7QString
	.type	_ZN15SettingsManager6getIntE7QString, @function
_ZN15SettingsManager6getIntE7QString:
.LFB11634:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11634
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	xorl	%esi, %esi
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	leaq	16(%rsp), %rbp
	movq	%rsp, %rdi
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
.LEHB4:
	call	_ZN8QVariantC1Ei@PLT
.LEHE4:
	movq	%rsp, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB5:
	call	_ZNK9QSettings5valueERK7QStringRK8QVariant@PLT
.LEHE5:
	xorl	%esi, %esi
	movq	%rbp, %rdi
.LEHB6:
	call	_ZNK8QVariant5toIntEPb@PLT
.LEHE6:
	movq	%rbp, %rdi
	movl	%eax, %r12d
	call	_ZN8QVariantD1Ev@PLT
	movq	%rsp, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	40(%rsp), %rdx
	xorq	%fs:40, %rdx
	movl	%r12d, %eax
	jne	.L26
	addq	$56, %rsp
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
.L26:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L22:
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN8QVariantD1Ev@PLT
.L19:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L21:
	movq	%rax, %rbp
	jmp	.L19
	.cfi_endproc
.LFE11634:
	.section	.gcc_except_table
.LLSDA11634:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11634-.LLSDACSB11634
.LLSDACSB11634:
	.uleb128 .LEHB4-.LFB11634
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB11634
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L21-.LFB11634
	.uleb128 0
	.uleb128 .LEHB6-.LFB11634
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L22-.LFB11634
	.uleb128 0
	.uleb128 .LEHB7-.LFB11634
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE11634:
	.text
	.size	_ZN15SettingsManager6getIntE7QString, .-_ZN15SettingsManager6getIntE7QString
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
	.globl	_ZN15SettingsManager7getBoolE7QString
	.type	_ZN15SettingsManager7getBoolE7QString, @function
_ZN15SettingsManager7getBoolE7QString:
.LFB11635:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11635
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	xorl	%esi, %esi
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	leaq	16(%rsp), %rbp
	movq	%rsp, %rdi
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
.LEHB8:
	call	_ZN8QVariantC1Eb@PLT
.LEHE8:
	movq	%rsp, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB9:
	call	_ZNK9QSettings5valueERK7QStringRK8QVariant@PLT
.LEHE9:
	movq	%rbp, %rdi
.LEHB10:
	call	_ZNK8QVariant6toBoolEv@PLT
.LEHE10:
	movq	%rbp, %rdi
	movl	%eax, %r12d
	call	_ZN8QVariantD1Ev@PLT
	movq	%rsp, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	40(%rsp), %rdx
	xorq	%fs:40, %rdx
	movl	%r12d, %eax
	jne	.L36
	addq	$56, %rsp
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
.L36:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L32:
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN8QVariantD1Ev@PLT
.L29:
	movq	%rbx, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	%rbp, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L31:
	movq	%rax, %rbp
	jmp	.L29
	.cfi_endproc
.LFE11635:
	.section	.gcc_except_table
.LLSDA11635:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11635-.LLSDACSB11635
.LLSDACSB11635:
	.uleb128 .LEHB8-.LFB11635
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB11635
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L31-.LFB11635
	.uleb128 0
	.uleb128 .LEHB10-.LFB11635
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L32-.LFB11635
	.uleb128 0
	.uleb128 .LEHB11-.LFB11635
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE11635:
	.text
	.size	_ZN15SettingsManager7getBoolE7QString, .-_ZN15SettingsManager7getBoolE7QString
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.weak	_ZTS15SettingsManager
	.section	.rodata._ZTS15SettingsManager,"aG",@progbits,_ZTS15SettingsManager,comdat
	.align 16
	.type	_ZTS15SettingsManager, @object
	.size	_ZTS15SettingsManager, 18
_ZTS15SettingsManager:
	.string	"15SettingsManager"
	.weak	_ZTI15SettingsManager
	.section	.data.rel.ro._ZTI15SettingsManager,"awG",@progbits,_ZTI15SettingsManager,comdat
	.align 8
	.type	_ZTI15SettingsManager, @object
	.size	_ZTI15SettingsManager, 24
_ZTI15SettingsManager:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS15SettingsManager
	.quad	_ZTI9QSettings
	.weak	_ZTV15SettingsManager
	.section	.data.rel.ro._ZTV15SettingsManager,"awG",@progbits,_ZTV15SettingsManager,comdat
	.align 8
	.type	_ZTV15SettingsManager, @object
	.size	_ZTV15SettingsManager, 112
_ZTV15SettingsManager:
	.quad	0
	.quad	_ZTI15SettingsManager
	.quad	_ZNK9QSettings10metaObjectEv
	.quad	_ZN9QSettings11qt_metacastEPKc
	.quad	_ZN9QSettings11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN15SettingsManagerD1Ev
	.quad	_ZN15SettingsManagerD0Ev
	.quad	_ZN9QSettings5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
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

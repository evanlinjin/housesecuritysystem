	.file	"moc_keyreceiver.cpp"
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
	.globl	_ZNK11KeyReceiver10metaObjectEv
	.type	_ZNK11KeyReceiver10metaObjectEv, @function
_ZNK11KeyReceiver10metaObjectEv:
.LFB13110:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN11KeyReceiver16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE13110:
	.size	_ZNK11KeyReceiver10metaObjectEv, .-_ZNK11KeyReceiver10metaObjectEv
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
	.globl	_ZN11KeyReceiver8popStackEv
	.type	_ZN11KeyReceiver8popStackEv, @function
_ZN11KeyReceiver8popStackEv:
.LFB13113:
	.cfi_startproc
	movq	_ZN11KeyReceiver16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE13113:
	.size	_ZN11KeyReceiver8popStackEv, .-_ZN11KeyReceiver8popStackEv
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely._ZN11KeyReceiverD2Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
	.align 2
.LCOLDB2:
	.section	.text._ZN11KeyReceiverD2Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
.LHOTB2:
	.align 2
	.p2align 4,,15
	.weak	_ZN11KeyReceiverD2Ev
	.type	_ZN11KeyReceiverD2Ev, @function
_ZN11KeyReceiverD2Ev:
.LFB14055:
	.cfi_startproc
	movq	_ZTV11KeyReceiver@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	jmp	_ZN7QObjectD2Ev@PLT
	.cfi_endproc
.LFE14055:
	.size	_ZN11KeyReceiverD2Ev, .-_ZN11KeyReceiverD2Ev
	.section	.text.unlikely._ZN11KeyReceiverD2Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
.LCOLDE2:
	.section	.text._ZN11KeyReceiverD2Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
.LHOTE2:
	.weak	_ZN11KeyReceiverD1Ev
	.set	_ZN11KeyReceiverD1Ev,_ZN11KeyReceiverD2Ev
	.section	.text.unlikely._ZN11KeyReceiverD0Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
	.align 2
.LCOLDB3:
	.section	.text._ZN11KeyReceiverD0Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
.LHOTB3:
	.align 2
	.p2align 4,,15
	.weak	_ZN11KeyReceiverD0Ev
	.type	_ZN11KeyReceiverD0Ev, @function
_ZN11KeyReceiverD0Ev:
.LFB14057:
	.cfi_startproc
	movq	_ZTV11KeyReceiver@GOTPCREL(%rip), %rax
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
.LFE14057:
	.size	_ZN11KeyReceiverD0Ev, .-_ZN11KeyReceiverD0Ev
	.section	.text.unlikely._ZN11KeyReceiverD0Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
.LCOLDE3:
	.section	.text._ZN11KeyReceiverD0Ev,"axG",@progbits,_ZN11KeyReceiverD5Ev,comdat
.LHOTE3:
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4,,15
	.globl	_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB13109:
	.cfi_startproc
	testl	%esi, %esi
	jne	.L9
	testl	%edx, %edx
	je	.L11
	cmpl	$1, %edx
	jne	.L13
	movq	8(%rcx), %rax
	movl	(%rax), %esi
	jmp	_ZN11KeyReceiver16updateStackDepthEi@PLT
	.p2align 4,,10
	.p2align 3
.L9:
	cmpl	$10, %esi
	je	.L14
.L8:
	rep ret
	.p2align 4,,10
	.p2align 3
.L14:
	movq	8(%rcx), %rax
	movq	_ZN11KeyReceiver8popStackEv@GOTPCREL(%rip), %rdi
	cmpq	%rdi, (%rax)
	jne	.L8
	cmpq	$0, 8(%rax)
	jne	.L8
	movq	(%rcx), %rax
	movl	$0, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	rep ret
	.p2align 4,,10
	.p2align 3
.L11:
	jmp	_ZN11KeyReceiver8popStackEv@PLT
	.cfi_endproc
.LFE13109:
	.size	_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
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
	.globl	_ZN11KeyReceiver11qt_metacastEPKc
	.type	_ZN11KeyReceiver11qt_metacastEPKc, @function
_ZN11KeyReceiver11qt_metacastEPKc:
.LFB13111:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L17
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	120+_ZL30qt_meta_stringdata_KeyReceiver(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L22
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
.L22:
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
.L17:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE13111:
	.size	_ZN11KeyReceiver11qt_metacastEPKc, .-_ZN11KeyReceiver11qt_metacastEPKc
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
	.globl	_ZN11KeyReceiver11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN11KeyReceiver11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN11KeyReceiver11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB13112:
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
	js	.L24
	testl	%ebx, %ebx
	jne	.L25
	cmpl	$1, %eax
	jle	.L29
.L27:
	subl	$2, %eax
.L24:
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
.L25:
	.cfi_restore_state
	cmpl	$12, %ebx
	jne	.L24
	cmpl	$1, %eax
	jg	.L27
	movq	0(%rbp), %rdx
	movl	$-1, (%rdx)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L29:
	movl	%eax, %edx
	movq	%rbp, %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
	jmp	.L27
	.cfi_endproc
.LFE13112:
	.size	_ZN11KeyReceiver11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN11KeyReceiver11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.weak	_ZTS11KeyReceiver
	.section	.rodata._ZTS11KeyReceiver,"aG",@progbits,_ZTS11KeyReceiver,comdat
	.align 8
	.type	_ZTS11KeyReceiver, @object
	.size	_ZTS11KeyReceiver, 14
_ZTS11KeyReceiver:
	.string	"11KeyReceiver"
	.weak	_ZTI11KeyReceiver
	.section	.data.rel.ro._ZTI11KeyReceiver,"awG",@progbits,_ZTI11KeyReceiver,comdat
	.align 8
	.type	_ZTI11KeyReceiver, @object
	.size	_ZTI11KeyReceiver, 24
_ZTI11KeyReceiver:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS11KeyReceiver
	.quad	_ZTI7QObject
	.weak	_ZTV11KeyReceiver
	.section	.data.rel.ro._ZTV11KeyReceiver,"awG",@progbits,_ZTV11KeyReceiver,comdat
	.align 8
	.type	_ZTV11KeyReceiver, @object
	.size	_ZTV11KeyReceiver, 112
_ZTV11KeyReceiver:
	.quad	0
	.quad	_ZTI11KeyReceiver
	.quad	_ZNK11KeyReceiver10metaObjectEv
	.quad	_ZN11KeyReceiver11qt_metacastEPKc
	.quad	_ZN11KeyReceiver11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN11KeyReceiverD1Ev
	.quad	_ZN11KeyReceiverD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN11KeyReceiver11eventFilterEP7QObjectP6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.globl	_ZN11KeyReceiver16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN11KeyReceiver16staticMetaObjectE, @object
	.size	_ZN11KeyReceiver16staticMetaObjectE, 48
_ZN11KeyReceiver16staticMetaObjectE:
	.quad	_ZN7QObject16staticMetaObjectE
	.quad	_ZL30qt_meta_stringdata_KeyReceiver
	.quad	_ZL24qt_meta_data_KeyReceiver
	.quad	_ZN11KeyReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL24qt_meta_data_KeyReceiver, @object
	.size	_ZL24qt_meta_data_KeyReceiver, 116
_ZL24qt_meta_data_KeyReceiver:
	.long	7
	.long	0
	.long	0
	.long	0
	.long	2
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
	.long	0
	.long	24
	.long	2
	.long	6
	.long	3
	.long	1
	.long	25
	.long	2
	.long	10
	.long	43
	.long	43
	.long	2
	.long	4
	.long	0
	.align 32
	.type	_ZL30qt_meta_stringdata_KeyReceiver, @object
	.size	_ZL30qt_meta_stringdata_KeyReceiver, 168
_ZL30qt_meta_stringdata_KeyReceiver:
	.long	-1
	.long	11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	120
	.long	-1
	.long	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	108
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	93
	.long	-1
	.long	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	70
	.long	-1
	.long	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	63
	.string	"KeyReceiver"
	.string	"popStack"
	.string	""
	.string	"updateStackDepth"
	.string	"v"
	.zero	7
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

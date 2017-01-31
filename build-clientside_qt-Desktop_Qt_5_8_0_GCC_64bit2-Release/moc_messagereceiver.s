	.file	"moc_messagereceiver.cpp"
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
	.globl	_ZNK15MessageReceiver10metaObjectEv
	.type	_ZNK15MessageReceiver10metaObjectEv, @function
_ZNK15MessageReceiver10metaObjectEv:
.LFB12703:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN15MessageReceiver16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE12703:
	.size	_ZNK15MessageReceiver10metaObjectEv, .-_ZNK15MessageReceiver10metaObjectEv
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely._ZN15MessageReceiverD2Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
	.align 2
.LCOLDB1:
	.section	.text._ZN15MessageReceiverD2Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
.LHOTB1:
	.align 2
	.p2align 4,,15
	.weak	_ZN15MessageReceiverD2Ev
	.type	_ZN15MessageReceiverD2Ev, @function
_ZN15MessageReceiverD2Ev:
.LFB13728:
	.cfi_startproc
	movq	_ZTV15MessageReceiver@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L5
	movq	(%rdi), %rax
	call	*32(%rax)
.L5:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN7QObjectD2Ev@PLT
	.cfi_endproc
.LFE13728:
	.size	_ZN15MessageReceiverD2Ev, .-_ZN15MessageReceiverD2Ev
	.section	.text.unlikely._ZN15MessageReceiverD2Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
.LCOLDE1:
	.section	.text._ZN15MessageReceiverD2Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
.LHOTE1:
	.weak	_ZN15MessageReceiverD1Ev
	.set	_ZN15MessageReceiverD1Ev,_ZN15MessageReceiverD2Ev
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
	je	.L15
	cmpl	$-1, %edx
	je	.L10
	lock subl	$1, (%rax)
	je	.L15
.L10:
	rep ret
	.p2align 4,,10
	.p2align 3
.L15:
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
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4,,15
	.globl	_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB12702:
	.cfi_startproc
	testl	%esi, %esi
	jne	.L16
	testl	%edx, %edx
	je	.L19
.L16:
	rep ret
	.p2align 4,,10
	.p2align 3
.L19:
	movq	8(%rcx), %rax
	movl	(%rax), %esi
	jmp	_ZN15MessageReceiver11onSubscribeE10pubnub_res@PLT
	.cfi_endproc
.LFE12702:
	.size	_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely._ZN15MessageReceiverD0Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
	.align 2
.LCOLDB4:
	.section	.text._ZN15MessageReceiverD0Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
.LHOTB4:
	.align 2
	.p2align 4,,15
	.weak	_ZN15MessageReceiverD0Ev
	.type	_ZN15MessageReceiverD0Ev, @function
_ZN15MessageReceiverD0Ev:
.LFB13730:
	.cfi_startproc
	movq	_ZTV15MessageReceiver@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L21
	movq	(%rdi), %rax
	call	*32(%rax)
.L21:
	movq	%rbx, %rdi
	call	_ZN7QObjectD2Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE13730:
	.size	_ZN15MessageReceiverD0Ev, .-_ZN15MessageReceiverD0Ev
	.section	.text.unlikely._ZN15MessageReceiverD0Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
.LCOLDE4:
	.section	.text._ZN15MessageReceiverD0Ev,"axG",@progbits,_ZN15MessageReceiverD5Ev,comdat
.LHOTE4:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"sub-c-0c523a04-d172-11e6-b045-02ee2ddab7fe"
	.align 8
.LC6:
	.string	"pub-c-ed602478-ff17-43d0-bffc-8a7bbf288bec"
	.section	.text.unlikely
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_moc_messagereceiver.cpp, @function
_GLOBAL__sub_I_moc_messagereceiver.cpp:
.LFB13736:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC5(%rip), %rdi
	movl	$42, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
	movq	_ZN7QStringD1Ev@GOTPCREL(%rip), %rbx
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZN4KeysL11pnSubscribeE(%rip), %rsi
	movq	%rax, _ZN4KeysL11pnSubscribeE(%rip)
	movq	%rbx, %rdi
	call	__cxa_atexit@PLT
	leaq	.LC6(%rip), %rdi
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
.LFE13736:
	.size	_GLOBAL__sub_I_moc_messagereceiver.cpp, .-_GLOBAL__sub_I_moc_messagereceiver.cpp
	.section	.text.unlikely
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_moc_messagereceiver.cpp
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4,,15
	.globl	_ZN15MessageReceiver11qt_metacastEPKc
	.type	_ZN15MessageReceiver11qt_metacastEPKc, @function
_ZN15MessageReceiver11qt_metacastEPKc:
.LFB12704:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L30
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	120+_ZL34qt_meta_stringdata_MessageReceiver(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L35
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
.L35:
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
.L30:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12704:
	.size	_ZN15MessageReceiver11qt_metacastEPKc, .-_ZN15MessageReceiver11qt_metacastEPKc
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
	.globl	_ZN15MessageReceiver11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN15MessageReceiver11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN15MessageReceiver11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB12705:
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
	js	.L37
	testl	%ebx, %ebx
	jne	.L38
	testl	%eax, %eax
	je	.L42
.L40:
	subl	$1, %eax
.L37:
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
.L38:
	.cfi_restore_state
	cmpl	$12, %ebx
	jne	.L37
	testl	%eax, %eax
	jne	.L40
	movq	0(%rbp), %rdx
	movl	$-1, (%rdx)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L42:
	movq	8(%rbp), %rdx
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	movl	(%rdx), %esi
	call	_ZN15MessageReceiver11onSubscribeE10pubnub_res@PLT
	movl	12(%rsp), %eax
	jmp	.L40
	.cfi_endproc
.LFE12705:
	.size	_ZN15MessageReceiver11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN15MessageReceiver11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.weak	_ZTS15MessageReceiver
	.section	.rodata._ZTS15MessageReceiver,"aG",@progbits,_ZTS15MessageReceiver,comdat
	.align 16
	.type	_ZTS15MessageReceiver, @object
	.size	_ZTS15MessageReceiver, 18
_ZTS15MessageReceiver:
	.string	"15MessageReceiver"
	.weak	_ZTI15MessageReceiver
	.section	.data.rel.ro._ZTI15MessageReceiver,"awG",@progbits,_ZTI15MessageReceiver,comdat
	.align 8
	.type	_ZTI15MessageReceiver, @object
	.size	_ZTI15MessageReceiver, 24
_ZTI15MessageReceiver:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS15MessageReceiver
	.quad	_ZTI7QObject
	.weak	_ZTV15MessageReceiver
	.section	.data.rel.ro._ZTV15MessageReceiver,"awG",@progbits,_ZTV15MessageReceiver,comdat
	.align 8
	.type	_ZTV15MessageReceiver, @object
	.size	_ZTV15MessageReceiver, 112
_ZTV15MessageReceiver:
	.quad	0
	.quad	_ZTI15MessageReceiver
	.quad	_ZNK15MessageReceiver10metaObjectEv
	.quad	_ZN15MessageReceiver11qt_metacastEPKc
	.quad	_ZN15MessageReceiver11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN15MessageReceiverD1Ev
	.quad	_ZN15MessageReceiverD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.globl	_ZN15MessageReceiver16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN15MessageReceiver16staticMetaObjectE, @object
	.size	_ZN15MessageReceiver16staticMetaObjectE, 48
_ZN15MessageReceiver16staticMetaObjectE:
	.quad	_ZN7QObject16staticMetaObjectE
	.quad	_ZL34qt_meta_stringdata_MessageReceiver
	.quad	_ZL28qt_meta_data_MessageReceiver
	.quad	_ZN15MessageReceiver18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL28qt_meta_data_MessageReceiver, @object
	.size	_ZL28qt_meta_data_MessageReceiver, 92
_ZL28qt_meta_data_MessageReceiver:
	.long	7
	.long	0
	.long	0
	.long	0
	.long	1
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	19
	.long	2
	.long	8
	.long	43
	.long	-2147483645
	.long	4
	.long	0
	.align 32
	.type	_ZL34qt_meta_stringdata_MessageReceiver, @object
	.size	_ZL34qt_meta_stringdata_MessageReceiver, 168
_ZL34qt_meta_stringdata_MessageReceiver:
	.long	-1
	.long	15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	120
	.long	-1
	.long	11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	112
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	100
	.long	-1
	.long	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	77
	.long	-1
	.long	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	64
	.string	"MessageReceiver"
	.string	"onSubscribe"
	.string	""
	.string	"pubnub_res"
	.string	"result"
	.zero	1
	.local	_ZN4KeysL9pnPublishE
	.comm	_ZN4KeysL9pnPublishE,8,8
	.local	_ZN4KeysL11pnSubscribeE
	.comm	_ZN4KeysL11pnSubscribeE,8,8
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

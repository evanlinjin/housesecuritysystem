	.file	"moc_networkmanager.cpp"
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
	.globl	_ZNK14NetworkManager10metaObjectEv
	.type	_ZNK14NetworkManager10metaObjectEv, @function
_ZNK14NetworkManager10metaObjectEv:
.LFB12681:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN14NetworkManager16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE12681:
	.size	_ZNK14NetworkManager10metaObjectEv, .-_ZNK14NetworkManager10metaObjectEv
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
	.globl	_ZN14NetworkManager5abortEv
	.type	_ZN14NetworkManager5abortEv, @function
_ZN14NetworkManager5abortEv:
.LFB12684:
	.cfi_startproc
	movq	_ZN14NetworkManager16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12684:
	.size	_ZN14NetworkManager5abortEv, .-_ZN14NetworkManager5abortEv
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
	.globl	_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB12680:
	.cfi_startproc
	testl	%esi, %esi
	jne	.L6
	testl	%edx, %edx
	je	.L9
.L5:
	rep ret
	.p2align 4,,10
	.p2align 3
.L6:
	cmpl	$10, %esi
	jne	.L5
	movq	8(%rcx), %rax
	movq	_ZN14NetworkManager5abortEv@GOTPCREL(%rip), %rdi
	cmpq	%rdi, (%rax)
	jne	.L5
	cmpq	$0, 8(%rax)
	jne	.L5
	movq	(%rcx), %rax
	movl	$0, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	jmp	_ZN14NetworkManager5abortEv@PLT
	.cfi_endproc
.LFE12680:
	.size	_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
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
	.globl	_ZN14NetworkManager11qt_metacastEPKc
	.type	_ZN14NetworkManager11qt_metacastEPKc, @function
_ZN14NetworkManager11qt_metacastEPKc:
.LFB12682:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L12
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	72+_ZL33qt_meta_stringdata_NetworkManager(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L17
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
.L17:
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
	jmp	_ZN21QNetworkAccessManager11qt_metacastEPKc@PLT
	.p2align 4,,10
	.p2align 3
.L12:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12682:
	.size	_ZN14NetworkManager11qt_metacastEPKc, .-_ZN14NetworkManager11qt_metacastEPKc
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
	.globl	_ZN14NetworkManager11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN14NetworkManager11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN14NetworkManager11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB12683:
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
	call	_ZN21QNetworkAccessManager11qt_metacallEN11QMetaObject4CallEiPPv@PLT
	testl	%eax, %eax
	js	.L19
	testl	%ebx, %ebx
	jne	.L20
	testl	%eax, %eax
	je	.L24
.L22:
	subl	$1, %eax
.L19:
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
.L20:
	.cfi_restore_state
	cmpl	$12, %ebx
	jne	.L19
	testl	%eax, %eax
	jne	.L22
	movq	0(%rbp), %rdx
	movl	$-1, (%rdx)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L24:
	movq	%rbp, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
	jmp	.L22
	.cfi_endproc
.LFE12683:
	.size	_ZN14NetworkManager11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN14NetworkManager11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely._ZN14NetworkManagerD2Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
	.align 2
.LCOLDB5:
	.section	.text._ZN14NetworkManagerD2Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
.LHOTB5:
	.align 2
	.p2align 4,,15
	.weak	_ZN14NetworkManagerD2Ev
	.type	_ZN14NetworkManagerD2Ev, @function
_ZN14NetworkManagerD2Ev:
.LFB13734:
	.cfi_startproc
	movq	_ZTV14NetworkManager@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	16(%rdi), %rdi
	addq	$16, %rax
	movq	%rax, -16(%rdi)
	call	_ZN10QEventLoopD1Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN21QNetworkAccessManagerD2Ev@PLT
	.cfi_endproc
.LFE13734:
	.size	_ZN14NetworkManagerD2Ev, .-_ZN14NetworkManagerD2Ev
	.section	.text.unlikely._ZN14NetworkManagerD2Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
.LCOLDE5:
	.section	.text._ZN14NetworkManagerD2Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
.LHOTE5:
	.weak	_ZN14NetworkManagerD1Ev
	.set	_ZN14NetworkManagerD1Ev,_ZN14NetworkManagerD2Ev
	.section	.text.unlikely._ZN14NetworkManagerD0Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
	.align 2
.LCOLDB6:
	.section	.text._ZN14NetworkManagerD0Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
.LHOTB6:
	.align 2
	.p2align 4,,15
	.weak	_ZN14NetworkManagerD0Ev
	.type	_ZN14NetworkManagerD0Ev, @function
_ZN14NetworkManagerD0Ev:
.LFB13736:
	.cfi_startproc
	movq	_ZTV14NetworkManager@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	16(%rdi), %rdi
	addq	$16, %rax
	movq	%rax, -16(%rdi)
	call	_ZN10QEventLoopD1Ev@PLT
	movq	%rbx, %rdi
	call	_ZN21QNetworkAccessManagerD2Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE13736:
	.size	_ZN14NetworkManagerD0Ev, .-_ZN14NetworkManagerD0Ev
	.section	.text.unlikely._ZN14NetworkManagerD0Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
.LCOLDE6:
	.section	.text._ZN14NetworkManagerD0Ev,"axG",@progbits,_ZN14NetworkManagerD5Ev,comdat
.LHOTE6:
	.weak	_ZTS14NetworkManager
	.section	.rodata._ZTS14NetworkManager,"aG",@progbits,_ZTS14NetworkManager,comdat
	.align 16
	.type	_ZTS14NetworkManager, @object
	.size	_ZTS14NetworkManager, 17
_ZTS14NetworkManager:
	.string	"14NetworkManager"
	.weak	_ZTI14NetworkManager
	.section	.data.rel.ro._ZTI14NetworkManager,"awG",@progbits,_ZTI14NetworkManager,comdat
	.align 8
	.type	_ZTI14NetworkManager, @object
	.size	_ZTI14NetworkManager, 24
_ZTI14NetworkManager:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS14NetworkManager
	.quad	_ZTI21QNetworkAccessManager
	.weak	_ZTV14NetworkManager
	.section	.data.rel.ro._ZTV14NetworkManager,"awG",@progbits,_ZTV14NetworkManager,comdat
	.align 8
	.type	_ZTV14NetworkManager, @object
	.size	_ZTV14NetworkManager, 120
_ZTV14NetworkManager:
	.quad	0
	.quad	_ZTI14NetworkManager
	.quad	_ZNK14NetworkManager10metaObjectEv
	.quad	_ZN14NetworkManager11qt_metacastEPKc
	.quad	_ZN14NetworkManager11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN14NetworkManagerD1Ev
	.quad	_ZN14NetworkManagerD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.quad	_ZN21QNetworkAccessManager13createRequestENS_9OperationERK15QNetworkRequestP9QIODevice
	.globl	_ZN14NetworkManager16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN14NetworkManager16staticMetaObjectE, @object
	.size	_ZN14NetworkManager16staticMetaObjectE, 48
_ZN14NetworkManager16staticMetaObjectE:
	.quad	_ZN21QNetworkAccessManager16staticMetaObjectE
	.quad	_ZL33qt_meta_stringdata_NetworkManager
	.quad	_ZL27qt_meta_data_NetworkManager
	.quad	_ZN14NetworkManager18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL27qt_meta_data_NetworkManager, @object
	.size	_ZL27qt_meta_data_NetworkManager, 84
_ZL27qt_meta_data_NetworkManager:
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
	.long	1
	.long	1
	.long	0
	.long	19
	.long	2
	.long	6
	.long	43
	.long	0
	.align 32
	.type	_ZL33qt_meta_stringdata_NetworkManager, @object
	.size	_ZL33qt_meta_stringdata_NetworkManager, 96
_ZL33qt_meta_stringdata_NetworkManager:
	.long	-1
	.long	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	72
	.long	-1
	.long	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	63
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	45
	.string	"NetworkManager"
	.string	"abort"
	.string	""
	.zero	2
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

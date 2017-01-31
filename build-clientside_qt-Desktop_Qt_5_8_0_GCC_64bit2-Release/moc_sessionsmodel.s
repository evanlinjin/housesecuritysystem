	.file	"moc_sessionsmodel.cpp"
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
	.globl	_ZNK13SessionsModel10metaObjectEv
	.type	_ZNK13SessionsModel10metaObjectEv, @function
_ZNK13SessionsModel10metaObjectEv:
.LFB12863:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.L2
	jmp	_ZNK11QObjectData17dynamicMetaObjectEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	_ZN13SessionsModel16staticMetaObjectE@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
.LFE12863:
	.size	_ZNK13SessionsModel10metaObjectEv, .-_ZNK13SessionsModel10metaObjectEv
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
	.globl	_ZN13SessionsModel12loadingStartE7QString
	.type	_ZN13SessionsModel12loadingStartE7QString, @function
_ZN13SessionsModel12loadingStartE7QString:
.LFB12866:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorl	%edx, %edx
	movq	%rsi, 8(%rsp)
	movq	_ZN13SessionsModel16staticMetaObjectE@GOTPCREL(%rip), %rsi
	movq	%rsp, %rcx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	call	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12866:
	.size	_ZN13SessionsModel12loadingStartE7QString, .-_ZN13SessionsModel12loadingStartE7QString
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
	.globl	_ZN13SessionsModel11loadingStopEv
	.type	_ZN13SessionsModel11loadingStopEv, @function
_ZN13SessionsModel11loadingStopEv:
.LFB12867:
	.cfi_startproc
	movq	_ZN13SessionsModel16staticMetaObjectE@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	jmp	_ZN11QMetaObject8activateEP7QObjectPKS_iPPv@PLT
	.cfi_endproc
.LFE12867:
	.size	_ZN13SessionsModel11loadingStopEv, .-_ZN13SessionsModel11loadingStopEv
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
	.globl	_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.hidden	_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.type	_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, @function
_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv:
.LFB12862:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12862
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	jne	.L10
	cmpl	$1, %edx
	je	.L12
	jle	.L33
	cmpl	$2, %edx
	je	.L15
	cmpl	$3, %edx
	jne	.L9
.LEHB0:
	call	_ZN13SessionsModel5clearEv@PLT
	.p2align 4,,10
	.p2align 3
.L9:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L34
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	cmpl	$10, %esi
	jne	.L9
	movq	8(%rcx), %rdx
	movq	(%rcx), %rsi
	movq	(%rdx), %rax
	cmpq	_ZN13SessionsModel12loadingStartE7QString@GOTPCREL(%rip), %rax
	je	.L35
.L23:
	cmpq	_ZN13SessionsModel11loadingStopEv@GOTPCREL(%rip), %rax
	jne	.L9
	cmpq	$0, 8(%rdx)
	jne	.L9
	movl	$1, (%rsi)
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L15:
	call	_ZN13SessionsModel7refreshEv@PLT
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L12:
	call	_ZN13SessionsModel11loadingStopEv@PLT
.LEHE0:
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L33:
	testl	%edx, %edx
	jne	.L9
	movq	8(%rcx), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L17
	lock addl	$1, (%rdx)
.L17:
	movq	%rsp, %rsi
.LEHB1:
	call	_ZN13SessionsModel12loadingStartE7QString@PLT
.LEHE1:
	movq	(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L22
	cmpl	$-1, %eax
	je	.L9
	lock subl	$1, (%rdi)
	jne	.L9
	movq	(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L22:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L35:
	cmpq	$0, 8(%rdx)
	jne	.L23
	movl	$0, (%rsi)
	jmp	.L9
.L34:
	call	__stack_chk_fail@PLT
.L31:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L29
	addl	$1, %edx
	je	.L26
	orl	$-1, %edx
	lock xaddl	%edx, (%rdi)
	movq	(%rsp), %rdi
	subl	$1, %edx
	je	.L29
.L26:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L29:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L26
	.cfi_endproc
.LFE12862:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA12862:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12862-.LLSDACSB12862
.LLSDACSB12862:
	.uleb128 .LEHB0-.LFB12862
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12862
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L31-.LFB12862
	.uleb128 0
	.uleb128 .LEHB2-.LFB12862
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE12862:
	.text
	.size	_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv, .-_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
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
	.globl	_ZN13SessionsModel11qt_metacastEPKc
	.type	_ZN13SessionsModel11qt_metacastEPKc, @function
_ZN13SessionsModel11qt_metacastEPKc:
.LFB12864:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L38
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	leaq	168+_ZL32qt_meta_stringdata_SessionsModel(%rip), %rsi
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	strcmp@PLT
	movl	%eax, %edx
	movq	%rbp, %rax
	testl	%edx, %edx
	jne	.L43
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
.L43:
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
	jmp	_ZN18QAbstractListModel11qt_metacastEPKc@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12864:
	.size	_ZN13SessionsModel11qt_metacastEPKc, .-_ZN13SessionsModel11qt_metacastEPKc
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
	.globl	_ZN13SessionsModel11qt_metacallEN11QMetaObject4CallEiPPv
	.type	_ZN13SessionsModel11qt_metacallEN11QMetaObject4CallEiPPv, @function
_ZN13SessionsModel11qt_metacallEN11QMetaObject4CallEiPPv:
.LFB12865:
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
	call	_ZN18QAbstractListModel11qt_metacallEN11QMetaObject4CallEiPPv@PLT
	testl	%eax, %eax
	js	.L45
	testl	%ebx, %ebx
	jne	.L46
	cmpl	$3, %eax
	jg	.L48
	movl	%eax, %edx
	movq	%rbp, %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	call	_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	movl	12(%rsp), %eax
.L48:
	subl	$4, %eax
.L45:
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
.L46:
	.cfi_restore_state
	cmpl	$12, %ebx
	jne	.L45
	cmpl	$3, %eax
	jg	.L48
	movq	0(%rbp), %rdx
	movl	$-1, (%rdx)
	jmp	.L48
	.cfi_endproc
.LFE12865:
	.size	_ZN13SessionsModel11qt_metacallEN11QMetaObject4CallEiPPv, .-_ZN13SessionsModel11qt_metacallEN11QMetaObject4CallEiPPv
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.weak	_ZTS13SessionsModel
	.section	.rodata._ZTS13SessionsModel,"aG",@progbits,_ZTS13SessionsModel,comdat
	.align 16
	.type	_ZTS13SessionsModel, @object
	.size	_ZTS13SessionsModel, 16
_ZTS13SessionsModel:
	.string	"13SessionsModel"
	.weak	_ZTI13SessionsModel
	.section	.data.rel.ro._ZTI13SessionsModel,"awG",@progbits,_ZTI13SessionsModel,comdat
	.align 8
	.type	_ZTI13SessionsModel, @object
	.size	_ZTI13SessionsModel, 24
_ZTI13SessionsModel:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS13SessionsModel
	.quad	_ZTI18QAbstractListModel
	.weak	_ZTV13SessionsModel
	.section	.data.rel.ro._ZTV13SessionsModel,"awG",@progbits,_ZTV13SessionsModel,comdat
	.align 8
	.type	_ZTV13SessionsModel, @object
	.size	_ZTV13SessionsModel, 384
_ZTV13SessionsModel:
	.quad	0
	.quad	_ZTI13SessionsModel
	.quad	_ZNK13SessionsModel10metaObjectEv
	.quad	_ZN13SessionsModel11qt_metacastEPKc
	.quad	_ZN13SessionsModel11qt_metacallEN11QMetaObject4CallEiPPv
	.quad	_ZN13SessionsModelD1Ev
	.quad	_ZN13SessionsModelD0Ev
	.quad	_ZN7QObject5eventEP6QEvent
	.quad	_ZN7QObject11eventFilterEPS_P6QEvent
	.quad	_ZN7QObject10timerEventEP11QTimerEvent
	.quad	_ZN7QObject10childEventEP11QChildEvent
	.quad	_ZN7QObject11customEventEP6QEvent
	.quad	_ZN7QObject13connectNotifyERK11QMetaMethod
	.quad	_ZN7QObject16disconnectNotifyERK11QMetaMethod
	.quad	_ZNK18QAbstractListModel5indexEiiRK11QModelIndex
	.quad	_ZNK18QAbstractListModel6parentERK11QModelIndex
	.quad	_ZNK18QAbstractListModel7siblingEiiRK11QModelIndex
	.quad	_ZNK13SessionsModel8rowCountERK11QModelIndex
	.quad	_ZNK18QAbstractListModel11columnCountERK11QModelIndex
	.quad	_ZNK18QAbstractListModel11hasChildrenERK11QModelIndex
	.quad	_ZNK13SessionsModel4dataERK11QModelIndexi
	.quad	_ZN18QAbstractItemModel7setDataERK11QModelIndexRK8QVarianti
	.quad	_ZNK18QAbstractItemModel10headerDataEiN2Qt11OrientationEi
	.quad	_ZN18QAbstractItemModel13setHeaderDataEiN2Qt11OrientationERK8QVarianti
	.quad	_ZNK18QAbstractItemModel8itemDataERK11QModelIndex
	.quad	_ZN18QAbstractItemModel11setItemDataERK11QModelIndexRK4QMapIi8QVariantE
	.quad	_ZNK18QAbstractItemModel9mimeTypesEv
	.quad	_ZNK18QAbstractItemModel8mimeDataERK5QListI11QModelIndexE
	.quad	_ZNK18QAbstractItemModel15canDropMimeDataEPK9QMimeDataN2Qt10DropActionEiiRK11QModelIndex
	.quad	_ZN18QAbstractListModel12dropMimeDataEPK9QMimeDataN2Qt10DropActionEiiRK11QModelIndex
	.quad	_ZNK18QAbstractItemModel20supportedDropActionsEv
	.quad	_ZNK18QAbstractItemModel20supportedDragActionsEv
	.quad	_ZN18QAbstractItemModel10insertRowsEiiRK11QModelIndex
	.quad	_ZN18QAbstractItemModel13insertColumnsEiiRK11QModelIndex
	.quad	_ZN18QAbstractItemModel10removeRowsEiiRK11QModelIndex
	.quad	_ZN18QAbstractItemModel13removeColumnsEiiRK11QModelIndex
	.quad	_ZN18QAbstractItemModel8moveRowsERK11QModelIndexiiS2_i
	.quad	_ZN18QAbstractItemModel11moveColumnsERK11QModelIndexiiS2_i
	.quad	_ZN18QAbstractItemModel9fetchMoreERK11QModelIndex
	.quad	_ZNK18QAbstractItemModel12canFetchMoreERK11QModelIndex
	.quad	_ZNK18QAbstractListModel5flagsERK11QModelIndex
	.quad	_ZN18QAbstractItemModel4sortEiN2Qt9SortOrderE
	.quad	_ZNK18QAbstractItemModel5buddyERK11QModelIndex
	.quad	_ZNK18QAbstractItemModel5matchERK11QModelIndexiRK8QVarianti6QFlagsIN2Qt9MatchFlagEE
	.quad	_ZNK18QAbstractItemModel4spanERK11QModelIndex
	.quad	_ZNK13SessionsModel9roleNamesEv
	.quad	_ZN18QAbstractItemModel6submitEv
	.quad	_ZN18QAbstractItemModel6revertEv
	.globl	_ZN13SessionsModel16staticMetaObjectE
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	_ZN13SessionsModel16staticMetaObjectE, @object
	.size	_ZN13SessionsModel16staticMetaObjectE, 48
_ZN13SessionsModel16staticMetaObjectE:
	.quad	_ZN18QAbstractListModel16staticMetaObjectE
	.quad	_ZL32qt_meta_stringdata_SessionsModel
	.quad	_ZL26qt_meta_data_SessionsModel
	.quad	_ZN13SessionsModel18qt_static_metacallEP7QObjectN11QMetaObject4CallEiPPv
	.quad	0
	.quad	0
	.section	.rodata
	.align 32
	.type	_ZL26qt_meta_data_SessionsModel, @object
	.size	_ZL26qt_meta_data_SessionsModel, 164
_ZL26qt_meta_data_SessionsModel:
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
	.long	2
	.long	1
	.long	1
	.long	34
	.long	2
	.long	6
	.long	4
	.long	0
	.long	37
	.long	2
	.long	6
	.long	5
	.long	0
	.long	38
	.long	2
	.long	10
	.long	6
	.long	0
	.long	39
	.long	2
	.long	10
	.long	43
	.long	10
	.long	3
	.long	43
	.long	43
	.long	43
	.long	0
	.align 32
	.type	_ZL32qt_meta_stringdata_SessionsModel, @object
	.size	_ZL32qt_meta_stringdata_SessionsModel, 232
_ZL32qt_meta_stringdata_SessionsModel:
	.long	-1
	.long	13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	168
	.long	-1
	.long	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	158
	.long	-1
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	147
	.long	-1
	.long	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	124
	.long	-1
	.long	11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	104
	.long	-1
	.long	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	92
	.long	-1
	.long	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	4
	.quad	76
	.string	"SessionsModel"
	.string	"loadingStart"
	.string	""
	.string	"msg"
	.string	"loadingStop"
	.string	"refresh"
	.string	"clear"
	.zero	6
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

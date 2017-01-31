	.file	"sessionsmodel.cpp"
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
	.globl	_ZNK13SessionsModel8rowCountERK11QModelIndex
	.type	_ZNK13SessionsModel8rowCountERK11QModelIndex, @function
_ZNK13SessionsModel8rowCountERK11QModelIndex:
.LFB12870:
	.cfi_startproc
	movq	32(%rdi), %rdx
	movl	12(%rdx), %eax
	subl	8(%rdx), %eax
	ret
	.cfi_endproc
.LFE12870:
	.size	_ZNK13SessionsModel8rowCountERK11QModelIndex, .-_ZNK13SessionsModel8rowCountERK11QModelIndex
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.set	_ZNK13SessionsModel8rowCountERK11QModelIndex.localalias.7,_ZNK13SessionsModel8rowCountERK11QModelIndex
	.section	.text.unlikely._ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,"axG",@progbits,_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,comdat
	.align 2
.LCOLDB1:
	.section	.text._ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,"axG",@progbits,_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,comdat
.LHOTB1:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE
	.type	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE, @function
_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE:
.LFB13779:
	.cfi_startproc
	movq	16(%rdi), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L7
	cmpl	$-1, %edx
	je	.L2
	lock subl	$1, (%rax)
	je	.L9
.L2:
	rep ret
.L9:
	movq	16(%rdi), %rax
.L7:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE13779:
	.size	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE, .-_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE
	.section	.text.unlikely._ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,"axG",@progbits,_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,comdat
.LCOLDE1:
	.section	.text._ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,"axG",@progbits,_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE,comdat
.LHOTE1:
	.section	.text.unlikely._ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,"axG",@progbits,_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,comdat
	.align 2
.LCOLDB2:
	.section	.text._ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,"axG",@progbits,_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,comdat
.LHOTB2:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv
	.type	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv, @function
_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv:
.LFB13949:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L10
	movl	8(%rdi), %eax
	movq	16(%rdi), %rdx
	movq	$0, (%rsi)
	movl	%eax, 8(%rsi)
	movl	12(%rdi), %eax
	movq	%rdx, 16(%rsi)
	movl	%eax, 12(%rsi)
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	jbe	.L10
	lock addl	$1, (%rdx)
.L10:
	rep ret
	.cfi_endproc
.LFE13949:
	.size	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv, .-_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv
	.section	.text.unlikely._ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,"axG",@progbits,_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,comdat
.LCOLDE2:
	.section	.text._ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,"axG",@progbits,_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv,comdat
.LHOTE2:
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4,,15
	.type	_ZN5QListI11SessionItemE7deallocEPN9QListData4DataE.isra.4, @function
_ZN5QListI11SessionItemE7deallocEPN9QListData4DataE.isra.4:
.LFB14097:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	16(%rdi), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r13
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movslq	12(%rdi), %rdx
	leaq	(%rax,%rdx,8), %rbp
	movslq	8(%rdi), %rdx
	leaq	(%rax,%rdx,8), %r12
	cmpq	%r12, %rbp
	jne	.L17
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L19:
	cmpl	$-1, %eax
	je	.L20
	lock subl	$1, (%rdi)
	je	.L53
.L20:
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L28
.L24:
	cmpl	$-1, %eax
	je	.L25
	lock subl	$1, (%rdi)
	je	.L54
.L25:
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L33
.L29:
	cmpl	$-1, %eax
	je	.L30
	lock subl	$1, (%rdi)
	je	.L55
.L30:
	movq	24(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L38
.L34:
	cmpl	$-1, %eax
	je	.L35
	lock subl	$1, (%rdi)
	je	.L56
.L35:
	movq	8(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L43
.L39:
	cmpl	$-1, %eax
	je	.L40
	lock subl	$1, (%rdi)
	je	.L57
.L40:
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L48
.L44:
	cmpl	$-1, %edx
	je	.L45
	lock subl	$1, (%rax)
	je	.L48
.L45:
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
.L18:
	cmpq	%rbp, %r12
	je	.L15
.L17:
	subq	$8, %rbp
	movq	0(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L18
	movq	48(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L19
.L23:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L24
.L28:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L29
.L33:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	24(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L34
.L38:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L39
.L43:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L44
.L48:
	movq	(%rbx), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L15:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN9QListData7disposeEPNS_4DataE@PLT
.L53:
	.cfi_restore_state
	movq	48(%rbx), %rdi
	jmp	.L23
.L57:
	movq	8(%rbx), %rdi
	jmp	.L43
.L56:
	movq	24(%rbx), %rdi
	jmp	.L38
.L55:
	movq	32(%rbx), %rdi
	jmp	.L33
.L54:
	movq	40(%rbx), %rdi
	jmp	.L28
	.cfi_endproc
.LFE14097:
	.size	_ZN5QListI11SessionItemE7deallocEPN9QListData4DataE.isra.4, .-_ZN5QListI11SessionItemE7deallocEPN9QListData4DataE.isra.4
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
	.align 2
.LCOLDB4:
	.section	.text._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LHOTB4:
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
	je	.L63
	cmpl	$-1, %edx
	je	.L58
	lock subl	$1, (%rax)
	je	.L63
.L58:
	rep ret
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$1, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9157:
	.size	_ZN10QByteArrayD2Ev, .-_ZN10QByteArrayD2Ev
	.section	.text.unlikely._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LCOLDE4:
	.section	.text._ZN10QByteArrayD2Ev,"axG",@progbits,_ZN10QByteArrayD5Ev,comdat
.LHOTE4:
	.weak	_ZN10QByteArrayD1Ev
	.set	_ZN10QByteArrayD1Ev,_ZN10QByteArrayD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
	.align 2
.LCOLDB5:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTB5:
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
	je	.L69
	cmpl	$-1, %edx
	je	.L64
	lock subl	$1, (%rax)
	je	.L69
.L64:
	rep ret
	.p2align 4,,10
	.p2align 3
.L69:
	movq	(%rdi), %rdi
	movl	$8, %edx
	movl	$2, %esi
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
	.cfi_endproc
.LFE9465:
	.size	_ZN7QStringD2Ev, .-_ZN7QStringD2Ev
	.section	.text.unlikely._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LCOLDE5:
	.section	.text._ZN7QStringD2Ev,"axG",@progbits,_ZN7QStringD5Ev,comdat
.LHOTE5:
	.weak	_ZN7QStringD1Ev
	.set	_ZN7QStringD1Ev,_ZN7QStringD2Ev
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModel6linkUpEP14NetworkManagerP15SettingsManager
	.type	_ZN13SessionsModel6linkUpEP14NetworkManagerP15SettingsManager, @function
_ZN13SessionsModel6linkUpEP14NetworkManagerP15SettingsManager:
.LFB12869:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, 24(%rdi)
	movq	%rdx, 16(%rdi)
	ret
	.cfi_endproc
.LFE12869:
	.size	_ZN13SessionsModel6linkUpEP14NetworkManagerP15SettingsManager, .-_ZN13SessionsModel6linkUpEP14NetworkManagerP15SettingsManager
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4,,15
	.globl	_ZNK13SessionsModel4dataERK11QModelIndexi
	.type	_ZNK13SessionsModel4dataERK11QModelIndexi, @function
_ZNK13SessionsModel4dataERK11QModelIndexi:
.LFB12871:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movslq	(%rdx), %rdx
	movq	%rdi, %rbx
	testl	%edx, %edx
	js	.L72
	movq	32(%rsi), %rdi
	movslq	8(%rdi), %rax
	movl	12(%rdi), %esi
	subl	%eax, %esi
	cmpl	%edx, %esi
	jg	.L89
.L72:
	movl	8(%rbx), %eax
	movq	$0, (%rbx)
	andl	$-1073741824, %eax
	movl	%eax, 8(%rbx)
	movb	$-128, 11(%rbx)
.L71:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	.cfi_restore_state
	subl	$257, %ecx
	addq	%rax, %rdx
	cmpl	$7, %ecx
	movq	16(%rdi,%rdx,8), %rsi
	ja	.L72
	leaq	.L84(%rip), %rax
	movslq	(%rax,%rcx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L84:
	.long	.L87-.L84
	.long	.L76-.L84
	.long	.L77-.L84
	.long	.L78-.L84
	.long	.L79-.L84
	.long	.L80-.L84
	.long	.L81-.L84
	.long	.L82-.L84
	.text
	.p2align 4,,10
	.p2align 3
.L82:
	addq	$48, %rsi
.L87:
	movq	%rbx, %rdi
	call	_ZN8QVariantC1ERK7QString@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	addq	$8, %rsi
	movq	%rbx, %rdi
	call	_ZN8QVariantC1ERK7QString@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L77:
	movl	16(%rsi), %esi
	movq	%rbx, %rdi
	call	_ZN8QVariantC1Ei@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L78:
	movl	20(%rsi), %esi
	movq	%rbx, %rdi
	call	_ZN8QVariantC1Ei@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L79:
	addq	$24, %rsi
	movq	%rbx, %rdi
	call	_ZN8QVariantC1ERK7QString@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L80:
	addq	$32, %rsi
	movq	%rbx, %rdi
	call	_ZN8QVariantC1ERK7QString@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$40, %rsi
	movq	%rbx, %rdi
	call	_ZN8QVariantC1ERK7QString@PLT
	jmp	.L71
	.cfi_endproc
.LFE12871:
	.size	_ZNK13SessionsModel4dataERK11QModelIndexi, .-_ZNK13SessionsModel4dataERK11QModelIndexi
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely._ZN11SessionItemD2Ev,"axG",@progbits,_ZN11SessionItemD5Ev,comdat
	.align 2
.LCOLDB8:
	.section	.text._ZN11SessionItemD2Ev,"axG",@progbits,_ZN11SessionItemD5Ev,comdat
.LHOTB8:
	.align 2
	.p2align 4,,15
	.weak	_ZN11SessionItemD2Ev
	.type	_ZN11SessionItemD2Ev, @function
_ZN11SessionItemD2Ev:
.LFB12879:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	48(%rdi), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L95
	cmpl	$-1, %eax
	je	.L92
	lock subl	$1, (%rdi)
	je	.L122
.L92:
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L100
	cmpl	$-1, %eax
	je	.L97
	lock subl	$1, (%rdi)
	je	.L123
.L97:
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L105
.L101:
	cmpl	$-1, %eax
	je	.L102
	lock subl	$1, (%rdi)
	je	.L124
.L102:
	movq	24(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L110
.L106:
	cmpl	$-1, %eax
	je	.L107
	lock subl	$1, (%rdi)
	je	.L125
.L107:
	movq	8(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L115
.L111:
	cmpl	$-1, %eax
	je	.L112
	lock subl	$1, (%rdi)
	je	.L126
.L112:
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L120
.L116:
	cmpl	$-1, %edx
	je	.L90
	lock subl	$1, (%rax)
	je	.L120
.L90:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L123:
	.cfi_restore_state
	movq	40(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L100:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L101
.L105:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	24(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L106
.L110:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L111
.L115:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L116
.L120:
	movq	(%rbx), %rdi
	movl	$8, %edx
	movl	$2, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN10QArrayData10deallocateEPS_mm@PLT
.L122:
	.cfi_restore_state
	movq	48(%rbx), %rdi
	.p2align 4,,10
	.p2align 3
.L95:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L92
.L126:
	movq	8(%rbx), %rdi
	jmp	.L115
.L125:
	movq	24(%rbx), %rdi
	jmp	.L110
.L124:
	movq	32(%rbx), %rdi
	jmp	.L105
	.cfi_endproc
.LFE12879:
	.size	_ZN11SessionItemD2Ev, .-_ZN11SessionItemD2Ev
	.section	.text.unlikely._ZN11SessionItemD2Ev,"axG",@progbits,_ZN11SessionItemD5Ev,comdat
.LCOLDE8:
	.section	.text._ZN11SessionItemD2Ev,"axG",@progbits,_ZN11SessionItemD5Ev,comdat
.LHOTE8:
	.weak	_ZN11SessionItemD1Ev
	.set	_ZN11SessionItemD1Ev,_ZN11SessionItemD2Ev
	.section	.text.unlikely._ZN5QListI11SessionItemED2Ev,"axG",@progbits,_ZN5QListI11SessionItemED5Ev,comdat
	.align 2
.LCOLDB9:
	.section	.text._ZN5QListI11SessionItemED2Ev,"axG",@progbits,_ZN5QListI11SessionItemED5Ev,comdat
.LHOTB9:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI11SessionItemED2Ev
	.type	_ZN5QListI11SessionItemED2Ev, @function
_ZN5QListI11SessionItemED2Ev:
.LFB13214:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13214
	movq	(%rdi), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L132
	cmpl	$-1, %edx
	je	.L127
	lock subl	$1, (%rax)
	je	.L132
.L127:
	rep ret
	.p2align 4,,10
	.p2align 3
.L132:
	movq	(%rdi), %rdi
	jmp	_ZN5QListI11SessionItemE7deallocEPN9QListData4DataE.isra.4
	.cfi_endproc
.LFE13214:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5QListI11SessionItemED2Ev,"aG",@progbits,_ZN5QListI11SessionItemED5Ev,comdat
.LLSDA13214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13214-.LLSDACSB13214
.LLSDACSB13214:
.LLSDACSE13214:
	.section	.text._ZN5QListI11SessionItemED2Ev,"axG",@progbits,_ZN5QListI11SessionItemED5Ev,comdat
	.size	_ZN5QListI11SessionItemED2Ev, .-_ZN5QListI11SessionItemED2Ev
	.section	.text.unlikely._ZN5QListI11SessionItemED2Ev,"axG",@progbits,_ZN5QListI11SessionItemED5Ev,comdat
.LCOLDE9:
	.section	.text._ZN5QListI11SessionItemED2Ev,"axG",@progbits,_ZN5QListI11SessionItemED5Ev,comdat
.LHOTE9:
	.weak	_ZN5QListI11SessionItemED1Ev
	.set	_ZN5QListI11SessionItemED1Ev,_ZN5QListI11SessionItemED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"default"
.LC11:
	.string	"SessionsModel CREATED!"
	.section	.text.unlikely
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModelC2EP7QObject
	.type	_ZN13SessionsModelC2EP7QObject, @function
_ZN13SessionsModelC2EP7QObject:
.LFB12863:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12863
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
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZN18QAbstractListModelC2EP7QObject@PLT
.LEHE0:
	movq	_ZTV13SessionsModel@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rsi
	movq	%rsp, %rdi
	movl	$2, 32(%rsp)
	movl	$0, 36(%rsp)
	movq	%rsp, %rbp
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rbx)
	leaq	.LC10(%rip), %rax
	movq	%rax, 56(%rsp)
.LEHB1:
	call	_ZNK14QMessageLogger5debugEv@PLT
.LEHE1:
	leaq	16(%rsp), %r12
	leaq	.LC11(%rip), %rsi
	movl	$22, %edx
	movq	%r12, %rdi
.LEHB2:
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
.LEHE2:
	movq	(%rsp), %rdi
	movq	%r12, %rsi
.LEHB3:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE3:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L138
	cmpl	$-1, %eax
	je	.L135
	lock subl	$1, (%rdi)
	je	.L151
.L135:
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	jne	.L139
.L140:
	movq	%rbp, %rdi
	call	_ZN6QDebugD1Ev@PLT
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L152
	addq	$88, %rsp
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
.L151:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L138:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L140
.L139:
	movl	$32, %esi
.LEHB4:
	call	_ZN11QTextStreamlsEc@PLT
.LEHE4:
	jmp	.L140
.L152:
	call	__stack_chk_fail@PLT
.L147:
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%r13, %r12
	call	_ZN7QStringD1Ev@PLT
.L142:
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZN6QDebugD1Ev@PLT
.L143:
	leaq	32(%rbx), %rdi
	call	_ZN5QListI11SessionItemED1Ev@PLT
	movq	%rbx, %rdi
	call	_ZN18QAbstractListModelD2Ev@PLT
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L146:
	movq	%rax, %r12
	jmp	.L142
.L145:
	movq	%rax, %rbp
	jmp	.L143
	.cfi_endproc
.LFE12863:
	.section	.gcc_except_table,"a",@progbits
.LLSDA12863:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12863-.LLSDACSB12863
.LLSDACSB12863:
	.uleb128 .LEHB0-.LFB12863
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB12863
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L145-.LFB12863
	.uleb128 0
	.uleb128 .LEHB2-.LFB12863
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L146-.LFB12863
	.uleb128 0
	.uleb128 .LEHB3-.LFB12863
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L147-.LFB12863
	.uleb128 0
	.uleb128 .LEHB4-.LFB12863
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L146-.LFB12863
	.uleb128 0
	.uleb128 .LEHB5-.LFB12863
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE12863:
	.text
	.size	_ZN13SessionsModelC2EP7QObject, .-_ZN13SessionsModelC2EP7QObject
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.globl	_ZN13SessionsModelC1EP7QObject
	.set	_ZN13SessionsModelC1EP7QObject,_ZN13SessionsModelC2EP7QObject
	.section	.rodata.str1.1
.LC13:
	.string	"SessionsModel DELETED!"
	.section	.text.unlikely
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModelD2Ev
	.type	_ZN13SessionsModelD2Ev, @function
_ZN13SessionsModelD2Ev:
.LFB12866:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12866
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
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	_ZTV13SessionsModel@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rbp
	movl	$2, 32(%rsp)
	movl	$0, 36(%rsp)
	movq	%rsp, %r12
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	addq	$16, %rax
	movq	%rax, (%rdi)
	leaq	.LC10(%rip), %rax
	movq	%rsp, %rdi
	movq	%rax, 56(%rsp)
	call	_ZNK14QMessageLogger5debugEv@PLT
	leaq	.LC13(%rip), %rsi
	movq	%rbp, %rdi
	movl	$22, %edx
	call	_ZN7QString15fromUtf8_helperEPKci@PLT
	movq	(%rsp), %rdi
	movq	%rbp, %rsi
.LEHB6:
	call	_ZN11QTextStreamlsERK7QString@PLT
.LEHE6:
	movq	16(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L158
	cmpl	$-1, %eax
	je	.L155
	lock subl	$1, (%rdi)
	je	.L166
.L155:
	movq	(%rsp), %rdi
	cmpb	$0, 32(%rdi)
	je	.L159
	movl	$32, %esi
	call	_ZN11QTextStreamlsEc@PLT
.L159:
	movq	%r12, %rdi
	call	_ZN6QDebugD1Ev@PLT
	leaq	32(%rbx), %rdi
	call	_ZN5QListI11SessionItemED1Ev@PLT
	movq	%rbx, %rdi
	call	_ZN18QAbstractListModelD2Ev@PLT
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L167
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L166:
	.cfi_restore_state
	movq	16(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L158:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L155
.L167:
	call	__stack_chk_fail@PLT
.L162:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	call	_ZSt9terminatev@PLT
	.cfi_endproc
.LFE12866:
	.section	.gcc_except_table
.LLSDA12866:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12866-.LLSDACSB12866
.LLSDACSB12866:
	.uleb128 .LEHB6-.LFB12866
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L162-.LFB12866
	.uleb128 0
.LLSDACSE12866:
	.text
	.size	_ZN13SessionsModelD2Ev, .-_ZN13SessionsModelD2Ev
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN13SessionsModelD1Ev
	.set	_ZN13SessionsModelD1Ev,_ZN13SessionsModelD2Ev
	.section	.text.unlikely
	.align 2
.LCOLDB15:
	.text
.LHOTB15:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModelD0Ev
	.type	_ZN13SessionsModelD0Ev, @function
_ZN13SessionsModelD0Ev:
.LFB12868:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN13SessionsModelD1Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE12868:
	.size	_ZN13SessionsModelD0Ev, .-_ZN13SessionsModelD0Ev
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModel5clearEv
	.type	_ZN13SessionsModel5clearEv, @function
_ZN13SessionsModel5clearEv:
.LFB12881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	32(%rdi), %rax
	movl	12(%rax), %ecx
	subl	8(%rax), %ecx
	je	.L170
	leaq	16(%rsp), %rbp
	subl	$1, %ecx
	xorl	%edx, %edx
	movq	%rdi, %rbx
	movl	$-1, 16(%rsp)
	movl	$-1, 20(%rsp)
	movq	%rbp, %rsi
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN18QAbstractItemModel15beginRemoveRowsERK11QModelIndexii@PLT
	movq	_ZN9QListData11shared_nullE@GOTPCREL(%rip), %rax
	movq	32(%rbx), %rdx
	movq	%rsp, %rdi
	movq	%rax, 32(%rbx)
	movq	%rax, 16(%rsp)
	movq	%rdx, (%rsp)
	call	_ZN5QListI11SessionItemED1Ev@PLT
	movq	%rbp, %rdi
	call	_ZN5QListI11SessionItemED1Ev@PLT
	movq	%rbx, %rdi
	call	_ZN18QAbstractItemModel13endRemoveRowsEv@PLT
.L170:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L177
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L177:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12881:
	.size	_ZN13SessionsModel5clearEv, .-_ZN13SessionsModel5clearEv
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely._ZNK5QHashIi10QByteArrayE8findNodeERKij,"axG",@progbits,_ZNK5QHashIi10QByteArrayE8findNodeERKij,comdat
	.align 2
.LCOLDB17:
	.section	.text._ZNK5QHashIi10QByteArrayE8findNodeERKij,"axG",@progbits,_ZNK5QHashIi10QByteArrayE8findNodeERKij,comdat
.LHOTB17:
	.align 2
	.p2align 4,,15
	.weak	_ZNK5QHashIi10QByteArrayE8findNodeERKij
	.type	_ZNK5QHashIi10QByteArrayE8findNodeERKij, @function
_ZNK5QHashIi10QByteArrayE8findNodeERKij:
.LFB13517:
	.cfi_startproc
	movq	(%rdi), %rcx
	movl	%edx, %r8d
	movq	%rdi, %rax
	movl	32(%rcx), %r9d
	testl	%r9d, %r9d
	je	.L183
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%r9d
	movq	8(%rcx), %rax
	movl	%edx, %edx
	leaq	(%rax,%rdx,8), %rax
	movq	(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L182
.L183:
	rep ret
	.p2align 4,,10
	.p2align 3
.L186:
	movl	12(%rdx), %edi
	cmpl	%edi, (%rsi)
	je	.L183
.L181:
	movq	%rdx, %rax
	movq	(%rdx), %rdx
	cmpq	%rdx, %rcx
	je	.L183
.L182:
	cmpl	8(%rdx), %r8d
	jne	.L181
	jmp	.L186
	.cfi_endproc
.LFE13517:
	.size	_ZNK5QHashIi10QByteArrayE8findNodeERKij, .-_ZNK5QHashIi10QByteArrayE8findNodeERKij
	.section	.text.unlikely._ZNK5QHashIi10QByteArrayE8findNodeERKij,"axG",@progbits,_ZNK5QHashIi10QByteArrayE8findNodeERKij,comdat
.LCOLDE17:
	.section	.text._ZNK5QHashIi10QByteArrayE8findNodeERKij,"axG",@progbits,_ZNK5QHashIi10QByteArrayE8findNodeERKij,comdat
.LHOTE17:
	.section	.rodata.str1.1
.LC18:
	.string	"sessionID"
.LC19:
	.string	"userID"
.LC20:
	.string	"loginTime"
.LC21:
	.string	"lastSeenTime"
.LC22:
	.string	"appName"
.LC23:
	.string	"appVersion"
.LC24:
	.string	"osName"
.LC25:
	.string	"osVersion"
	.section	.text.unlikely
	.align 2
.LCOLDB26:
	.text
.LHOTB26:
	.align 2
	.p2align 4,,15
	.globl	_ZNK13SessionsModel9roleNamesEv
	.type	_ZNK13SessionsModel9roleNamesEv, @function
_ZNK13SessionsModel9roleNamesEv:
.LFB12872:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12872
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	_ZN9QHashData11shared_nullE@GOTPCREL(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movl	$257, 28(%rsp)
	movq	%rdi, (%rbx)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L189
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
.LEHB7:
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r12
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L193
	cmpl	$-1, %eax
	je	.L191
	lock subl	$1, (%rdx)
	je	.L193
.L191:
	movq	%r12, (%rbx)
	movq	%r12, %rbp
.L189:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	leaq	28(%rsp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L410
.L205:
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$258, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L210
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L214
	cmpl	$-1, %eax
	je	.L212
	lock subl	$1, (%rdx)
	je	.L214
.L212:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L210:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L411
.L226:
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$259, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L230
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L234
	cmpl	$-1, %eax
	je	.L232
	lock subl	$1, (%rdx)
	je	.L234
.L232:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L230:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L412
.L246:
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$260, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L250
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L254
	cmpl	$-1, %eax
	je	.L252
	lock subl	$1, (%rdx)
	je	.L254
.L252:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L250:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L413
.L266:
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$261, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L270
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L274
	cmpl	$-1, %eax
	je	.L272
	lock subl	$1, (%rdx)
	je	.L274
.L272:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L270:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L414
.L286:
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$262, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L290
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L294
	cmpl	$-1, %eax
	je	.L292
	lock subl	$1, (%rdx)
	je	.L294
.L292:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L290:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L415
.L306:
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$263, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L310
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L314
	cmpl	$-1, %eax
	je	.L312
	lock subl	$1, (%rdx)
	je	.L314
.L312:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L310:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L416
.L326:
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	(%rbx), %rdi
	movl	$264, 28(%rsp)
	movl	16(%rdi), %eax
	movq	%rdi, %rbp
	cmpl	$1, %eax
	jbe	.L330
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rbp
	movq	_ZN5QHashIi10QByteArrayE13duplicateNodeEPN9QHashData4NodeEPv@GOTPCREL(%rip), %rsi
	movl	$8, %r8d
	movl	$24, %ecx
	movq	%rbp, %rdx
	call	_ZN9QHashData13detach_helperEPFvPNS_4NodeEPvEPFvS1_Eii@PLT
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L334
	cmpl	$-1, %eax
	je	.L332
	lock subl	$1, (%rdx)
	je	.L334
.L332:
	movq	%r13, (%rbx)
	movq	%r13, %rbp
.L330:
	movl	28(%rsp), %r15d
	movl	36(%rbp), %r14d
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%r15d, %r14d
	movl	%r14d, %edx
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rax), %rdx
	movq	%rax, %r13
	cmpq	%rbp, %rdx
	leaq	16(%rdx), %rax
	je	.L417
.L346:
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN10QByteArrayaSEPKc@PLT
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbx, %rax
	jne	.L418
	addq	$56, %rsp
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
.L214:
	.cfi_restore_state
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L334:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L314:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L193:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L254:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L234:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L294:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L274:
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
.LEHE7:
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L414:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L419
.L276:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB8:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE8:
	testq	%rax, %rax
	je	.L279
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L279
	lock addl	$1, (%rcx)
.L279:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L285
	cmpl	$-1, %edx
	je	.L286
	lock subl	$1, (%rdi)
	jne	.L286
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L285:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L416:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L420
.L316:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB9:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE9:
	testq	%rax, %rax
	je	.L319
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L319
	lock addl	$1, (%rcx)
.L319:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L325
	cmpl	$-1, %edx
	je	.L326
	lock subl	$1, (%rdi)
	jne	.L326
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L325:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L412:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L421
.L236:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB10:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE10:
	testq	%rax, %rax
	je	.L239
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L239
	lock addl	$1, (%rcx)
.L239:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L245
	cmpl	$-1, %edx
	je	.L246
	lock subl	$1, (%rdi)
	jne	.L246
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L245:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L410:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L422
.L195:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB11:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE11:
	testq	%rax, %rax
	je	.L198
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L198
	lock addl	$1, (%rcx)
.L198:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L204
	cmpl	$-1, %edx
	je	.L205
	lock subl	$1, (%rdi)
	jne	.L205
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L204:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L415:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L423
.L296:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB12:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE12:
	testq	%rax, %rax
	je	.L299
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L299
	lock addl	$1, (%rcx)
.L299:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L305
	cmpl	$-1, %edx
	je	.L306
	lock subl	$1, (%rdi)
	jne	.L306
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L305:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L411:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L424
.L216:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB13:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE13:
	testq	%rax, %rax
	je	.L219
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L219
	lock addl	$1, (%rcx)
.L219:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L225
	cmpl	$-1, %edx
	je	.L226
	lock subl	$1, (%rdi)
	jne	.L226
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L225:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L417:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L425
.L336:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB14:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE14:
	testq	%rax, %rax
	je	.L339
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L339
	lock addl	$1, (%rcx)
.L339:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L345
	cmpl	$-1, %edx
	je	.L346
	lock subl	$1, (%rdi)
	jne	.L346
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L345:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L413:
	movl	32(%rbp), %eax
	cmpl	%eax, 20(%rbp)
	movq	%rbp, %rdi
	jge	.L426
.L256:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	movl	$8, %esi
	movq	%rax, 32(%rsp)
.LEHB15:
	call	_ZN9QHashData12allocateNodeEi@PLT
.LEHE15:
	testq	%rax, %rax
	je	.L259
	movq	0(%r13), %rdx
	movq	32(%rsp), %rcx
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	movq	%rdx, (%rax)
	movq	%rcx, 16(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L259
	lock addl	$1, (%rcx)
.L259:
	movq	%rax, 0(%r13)
	movq	(%rbx), %rdx
	addq	$16, %rax
	movq	32(%rsp), %rdi
	addl	$1, 20(%rdx)
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L265
	cmpl	$-1, %edx
	je	.L266
	lock subl	$1, (%rdi)
	jne	.L266
	movq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L265:
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	movq	8(%rsp), %rax
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L419:
	movswl	30(%rbp), %esi
	addl	$1, %esi
.LEHB16:
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L426:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L425:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L424:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L423:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L422:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L421:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L420:
	movswl	30(%rbp), %esi
	addl	$1, %esi
	call	_ZN9QHashData6rehashEi@PLT
.LEHE16:
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%r12, %rsi
	call	_ZNK5QHashIi10QByteArrayE8findNodeERKij@PLT
	movq	(%rbx), %rdi
	movq	%rax, %r13
	jmp	.L316
.L418:
	call	__stack_chk_fail@PLT
.L364:
.L393:
	leaq	32(%rsp), %rdi
	movq	%rax, %rbp
	call	_ZN10QByteArrayD1Ev@PLT
.L208:
	movq	(%rbx), %rdx
	leaq	16(%rdx), %rax
	movl	16(%rdx), %edx
	testl	%edx, %edx
	je	.L351
	addl	$1, %edx
	je	.L350
	orl	$-1, %edx
	lock xaddl	%edx, (%rax)
	subl	$1, %edx
	je	.L351
.L350:
	movq	%rbp, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L351:
	movq	_ZN5QHashIi10QByteArrayE11deleteNode2EPN9QHashData4NodeE@GOTPCREL(%rip), %rsi
	movq	(%rbx), %rdi
	call	_ZN9QHashData11free_helperEPFvPNS_4NodeEE@PLT
	jmp	.L350
.L361:
	movq	%rax, %rbp
	jmp	.L208
.L365:
	jmp	.L393
.L368:
	jmp	.L393
.L366:
	jmp	.L393
.L362:
	jmp	.L393
.L369:
	jmp	.L393
.L363:
	jmp	.L393
.L367:
	jmp	.L393
	.cfi_endproc
.LFE12872:
	.section	.gcc_except_table
.LLSDA12872:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12872-.LLSDACSB12872
.LLSDACSB12872:
	.uleb128 .LEHB7-.LFB12872
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L361-.LFB12872
	.uleb128 0
	.uleb128 .LEHB8-.LFB12872
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L366-.LFB12872
	.uleb128 0
	.uleb128 .LEHB9-.LFB12872
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L368-.LFB12872
	.uleb128 0
	.uleb128 .LEHB10-.LFB12872
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L364-.LFB12872
	.uleb128 0
	.uleb128 .LEHB11-.LFB12872
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L362-.LFB12872
	.uleb128 0
	.uleb128 .LEHB12-.LFB12872
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L367-.LFB12872
	.uleb128 0
	.uleb128 .LEHB13-.LFB12872
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L363-.LFB12872
	.uleb128 0
	.uleb128 .LEHB14-.LFB12872
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L369-.LFB12872
	.uleb128 0
	.uleb128 .LEHB15-.LFB12872
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L365-.LFB12872
	.uleb128 0
	.uleb128 .LEHB16-.LFB12872
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L361-.LFB12872
	.uleb128 0
	.uleb128 .LEHB17-.LFB12872
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE12872:
	.text
	.size	_ZNK13SessionsModel9roleNamesEv, .-_ZNK13SessionsModel9roleNamesEv
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely._ZN5QListI11SessionItemE18detach_helper_growEii,"axG",@progbits,_ZN5QListI11SessionItemE18detach_helper_growEii,comdat
	.align 2
.LCOLDB27:
	.section	.text._ZN5QListI11SessionItemE18detach_helper_growEii,"axG",@progbits,_ZN5QListI11SessionItemE18detach_helper_growEii,comdat
.LHOTB27:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI11SessionItemE18detach_helper_growEii
	.type	_ZN5QListI11SessionItemE18detach_helper_growEii, @function
_ZN5QListI11SessionItemE18detach_helper_growEii:
.LFB13789:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13789
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
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %edi
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	0(%r13), %rax
	movl	%edx, 8(%rsp)
	movl	%esi, 12(%rsp)
	leaq	12(%rsp), %rsi
	movslq	8(%rax), %rdx
	leaq	16(%rax,%rdx,8), %rax
	movl	%edi, %edx
	movq	%r13, %rdi
	movq	%rax, %rbx
	movq	%rax, (%rsp)
.LEHB18:
	call	_ZN9QListData11detach_growEPii@PLT
.LEHE18:
	movq	0(%r13), %rcx
	movq	%rax, %r15
	movslq	12(%rsp), %rdx
	movslq	8(%rcx), %rax
	leaq	16(%rcx), %rsi
	leaq	0(,%rdx,8), %rbp
	salq	$3, %rax
	leaq	(%rsi,%rax), %r14
	leaq	(%r14,%rbp), %r12
	cmpq	%r14, %r12
	je	.L428
	movq	%rbx, %rbp
	movq	%r14, %rbx
	.p2align 4,,10
	.p2align 3
.L435:
	movl	$56, %edi
.LEHB19:
	call	_Znwm@PLT
.LEHE19:
	movq	0(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L429
	lock addl	$1, (%rsi)
.L429:
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L430
	lock addl	$1, (%rsi)
.L430:
	movl	16(%rdx), %ecx
	movq	24(%rdx), %rsi
	movl	%ecx, 16(%rax)
	movl	20(%rdx), %ecx
	movq	%rsi, 24(%rax)
	movl	%ecx, 20(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L431
	lock addl	$1, (%rsi)
.L431:
	movq	32(%rdx), %rsi
	movq	%rsi, 32(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L432
	lock addl	$1, (%rsi)
.L432:
	movq	40(%rdx), %rsi
	movq	%rsi, 40(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L433
	lock addl	$1, (%rsi)
.L433:
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L434
	lock addl	$1, (%rcx)
.L434:
	movq	%rax, (%rbx)
	addq	$8, %rbx
	addq	$8, %rbp
	cmpq	%rbx, %r12
	jne	.L435
	movq	0(%r13), %rcx
	movslq	12(%rsp), %rdx
	movslq	8(%rcx), %rax
	leaq	16(%rcx), %rsi
	leaq	0(,%rdx,8), %rbp
	salq	$3, %rax
.L428:
	movslq	12(%rcx), %rcx
	addq	(%rsp), %rbp
	leaq	(%rsi,%rcx,8), %r12
	movslq	8(%rsp), %rcx
	addq	%rcx, %rdx
	leaq	(%rax,%rdx,8), %r14
	addq	%rsi, %r14
	cmpq	%r12, %r14
	je	.L442
	movq	%r14, %rbx
	.p2align 4,,10
	.p2align 3
.L449:
	movl	$56, %edi
.LEHB20:
	call	_Znwm@PLT
.LEHE20:
	movq	0(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L443
	lock addl	$1, (%rsi)
.L443:
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L444
	lock addl	$1, (%rsi)
.L444:
	movl	16(%rdx), %ecx
	movq	24(%rdx), %rsi
	movl	%ecx, 16(%rax)
	movl	20(%rdx), %ecx
	movq	%rsi, 24(%rax)
	movl	%ecx, 20(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L445
	lock addl	$1, (%rsi)
.L445:
	movq	32(%rdx), %rsi
	movq	%rsi, 32(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L446
	lock addl	$1, (%rsi)
.L446:
	movq	40(%rdx), %rsi
	movq	%rsi, 40(%rax)
	movl	(%rsi), %ecx
	addl	$1, %ecx
	cmpl	$1, %ecx
	jbe	.L447
	lock addl	$1, (%rsi)
.L447:
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L448
	lock addl	$1, (%rcx)
.L448:
	movq	%rax, (%rbx)
	addq	$8, %rbx
	addq	$8, %rbp
	cmpq	%rbx, %r12
	jne	.L449
.L442:
	movl	(%r15), %eax
	testl	%eax, %eax
	je	.L461
	cmpl	$-1, %eax
	je	.L458
	lock subl	$1, (%r15)
	je	.L461
.L458:
	movq	0(%r13), %rdx
	movslq	12(%rsp), %rcx
	movslq	8(%rdx), %rax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%rcx, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	leaq	16(%rdx,%rax,8), %rax
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L461:
	.cfi_restore_state
	movq	%r15, %rdi
.LEHB21:
	call	_ZN5QListI11SessionItemE7deallocEPN9QListData4DataE.isra.4
.LEHE21:
	jmp	.L458
.L501:
	jmp	.L450
.L499:
	jmp	.L436
.L450:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.L451:
	cmpq	%rbx, %r14
	je	.L452
	movq	-8(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L453
	movq	%rbp, %rdi
	call	_ZN11SessionItemD1Ev@PLT
	movq	%rbp, %rdi
	call	_ZdlPv@PLT
.L453:
	subq	$8, %rbx
	jmp	.L451
.L452:
.LEHB22:
	call	__cxa_rethrow@PLT
.LEHE22:
.L436:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.L437:
	cmpq	%rbx, %r14
	je	.L438
	movq	-8(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L439
	movq	%rbp, %rdi
	call	_ZN11SessionItemD1Ev@PLT
	movq	%rbp, %rdi
	call	_ZdlPv@PLT
.L439:
	subq	$8, %rbx
	jmp	.L437
.L438:
.LEHB23:
	call	__cxa_rethrow@PLT
.LEHE23:
.L500:
	movq	%rax, %rbx
	jmp	.L454
.L498:
	movq	%rax, %rbx
	jmp	.L440
.L454:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
	call	__cxa_begin_catch@PLT
	movq	0(%r13), %rdi
	movslq	8(%rdi), %rax
	leaq	16(%rdi,%rax,8), %r12
	movslq	12(%rsp), %rax
	leaq	(%r12,%rax,8), %rbp
	cmpq	%r12, %rbp
	je	.L455
.L463:
	subq	$8, %rbp
	movq	0(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L464
	movq	48(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L469
	cmpl	$-1, %eax
	je	.L466
	lock subl	$1, (%rdi)
	je	.L517
.L466:
	movq	40(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L474
	cmpl	$-1, %eax
	je	.L471
	lock subl	$1, (%rdi)
	je	.L518
.L471:
	movq	32(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L479
	cmpl	$-1, %eax
	je	.L476
	lock subl	$1, (%rdi)
	je	.L519
.L476:
	movq	24(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L484
	cmpl	$-1, %eax
	je	.L481
	lock subl	$1, (%rdi)
	je	.L520
.L481:
	movq	8(%rbx), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L489
	cmpl	$-1, %eax
	je	.L486
	lock subl	$1, (%rdi)
	je	.L521
.L486:
	movq	(%rbx), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L494
	cmpl	$-1, %edx
	je	.L491
	lock subl	$1, (%rax)
	je	.L494
.L491:
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
.L464:
	cmpq	%rbp, %r12
	jne	.L463
	movq	0(%r13), %rdi
.L455:
.LEHB24:
	call	_ZN9QListData7disposeEPNS_4DataE@PLT
	movq	%r15, 0(%r13)
	call	__cxa_rethrow@PLT
.LEHE24:
.L497:
	movq	%rax, %rbx
	jmp	.L495
.L519:
	movq	32(%rbx), %rdi
.L479:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L476
.L520:
	movq	24(%rbx), %rdi
.L484:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L481
.L521:
	movq	8(%rbx), %rdi
.L489:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L486
.L495:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.LEHE25:
.L494:
	movq	(%rbx), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L491
.L440:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
	call	__cxa_begin_catch@PLT
	movq	0(%r13), %rdi
.LEHB26:
	call	_ZN9QListData7disposeEPNS_4DataE@PLT
	movq	%r15, 0(%r13)
	call	__cxa_rethrow@PLT
.LEHE26:
.L517:
	movq	48(%rbx), %rdi
.L469:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L466
.L496:
	movq	%rax, %rbx
	jmp	.L462
.L518:
	movq	40(%rbx), %rdi
.L474:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L471
.L462:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
	.cfi_endproc
.LFE13789:
	.section	.gcc_except_table
	.align 4
.LLSDA13789:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT13789-.LLSDATTD13789
.LLSDATTD13789:
	.byte	0x1
	.uleb128 .LLSDACSE13789-.LLSDACSB13789
.LLSDACSB13789:
	.uleb128 .LEHB18-.LFB13789
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB13789
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L499-.LFB13789
	.uleb128 0x1
	.uleb128 .LEHB20-.LFB13789
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L501-.LFB13789
	.uleb128 0x1
	.uleb128 .LEHB21-.LFB13789
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB13789
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L500-.LFB13789
	.uleb128 0x3
	.uleb128 .LEHB23-.LFB13789
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L498-.LFB13789
	.uleb128 0x3
	.uleb128 .LEHB24-.LFB13789
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L497-.LFB13789
	.uleb128 0
	.uleb128 .LEHB25-.LFB13789
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB13789
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L496-.LFB13789
	.uleb128 0
	.uleb128 .LEHB27-.LFB13789
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE13789:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT13789:
	.section	.text._ZN5QListI11SessionItemE18detach_helper_growEii,"axG",@progbits,_ZN5QListI11SessionItemE18detach_helper_growEii,comdat
	.size	_ZN5QListI11SessionItemE18detach_helper_growEii, .-_ZN5QListI11SessionItemE18detach_helper_growEii
	.section	.text.unlikely._ZN5QListI11SessionItemE18detach_helper_growEii,"axG",@progbits,_ZN5QListI11SessionItemE18detach_helper_growEii,comdat
.LCOLDE27:
	.section	.text._ZN5QListI11SessionItemE18detach_helper_growEii,"axG",@progbits,_ZN5QListI11SessionItemE18detach_helper_growEii,comdat
.LHOTE27:
	.section	.text.unlikely._ZN5QListI11SessionItemE6appendERKS0_,"axG",@progbits,_ZN5QListI11SessionItemE6appendERKS0_,comdat
	.align 2
.LCOLDB28:
	.section	.text._ZN5QListI11SessionItemE6appendERKS0_,"axG",@progbits,_ZN5QListI11SessionItemE6appendERKS0_,comdat
.LHOTB28:
	.align 2
	.p2align 4,,15
	.weak	_ZN5QListI11SessionItemE6appendERKS0_
	.type	_ZN5QListI11SessionItemE6appendERKS0_, @function
_ZN5QListI11SessionItemE6appendERKS0_:
.LFB13519:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13519
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rax
	movq	%rsi, %rbx
	movl	(%rax), %eax
	cmpl	$1, %eax
	jbe	.L523
	movl	$1, %edx
	movl	$2147483647, %esi
.LEHB28:
	call	_ZN5QListI11SessionItemE18detach_helper_growEii@PLT
.LEHE28:
	movl	$56, %edi
	movq	%rax, %r12
.LEHB29:
	call	_Znwm@PLT
.LEHE29:
.L558:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L531
	lock addl	$1, (%rcx)
.L531:
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L532
	lock addl	$1, (%rcx)
.L532:
	movl	16(%rbx), %edx
	movq	24(%rbx), %rcx
	movl	%edx, 16(%rax)
	movl	20(%rbx), %edx
	movq	%rcx, 24(%rax)
	movl	%edx, 20(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L533
	lock addl	$1, (%rcx)
.L533:
	movq	32(%rbx), %rcx
	movq	%rcx, 32(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L534
	lock addl	$1, (%rcx)
.L534:
	movq	40(%rbx), %rcx
	movq	%rcx, 40(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L535
	lock addl	$1, (%rcx)
.L535:
	movq	48(%rbx), %rcx
	movq	%rcx, 48(%rax)
	movl	(%rcx), %edx
	addl	$1, %edx
	cmpl	$1, %edx
	jbe	.L536
	lock addl	$1, (%rcx)
.L536:
	movq	%rax, (%r12)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L523:
	.cfi_restore_state
.LEHB30:
	call	_ZN9QListData6appendEv@PLT
.LEHE30:
	movl	$56, %edi
	movq	%rax, %r12
.LEHB31:
	call	_Znwm@PLT
.LEHE31:
	jmp	.L558
.L543:
	jmp	.L539
.L541:
	jmp	.L537
.L539:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	0(%rbp), %rax
	subl	$1, 12(%rax)
.LEHB32:
	call	__cxa_rethrow@PLT
.LEHE32:
.L537:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	0(%rbp), %rax
	subl	$1, 12(%rax)
.LEHB33:
	call	__cxa_rethrow@PLT
.LEHE33:
.L544:
	movq	%rax, %rbx
	jmp	.L540
.L542:
	movq	%rax, %rbx
	jmp	.L538
.L540:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB34:
	call	_Unwind_Resume@PLT
.LEHE34:
.L538:
	call	__cxa_end_catch@PLT
	movq	%rbx, %rdi
.LEHB35:
	call	_Unwind_Resume@PLT
.LEHE35:
	.cfi_endproc
.LFE13519:
	.section	.gcc_except_table
	.align 4
.LLSDA13519:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT13519-.LLSDATTD13519
.LLSDATTD13519:
	.byte	0x1
	.uleb128 .LLSDACSE13519-.LLSDACSB13519
.LLSDACSB13519:
	.uleb128 .LEHB28-.LFB13519
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB13519
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L541-.LFB13519
	.uleb128 0x1
	.uleb128 .LEHB30-.LFB13519
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB13519
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L543-.LFB13519
	.uleb128 0x1
	.uleb128 .LEHB32-.LFB13519
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L544-.LFB13519
	.uleb128 0
	.uleb128 .LEHB33-.LFB13519
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L542-.LFB13519
	.uleb128 0
	.uleb128 .LEHB34-.LFB13519
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB13519
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE13519:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT13519:
	.section	.text._ZN5QListI11SessionItemE6appendERKS0_,"axG",@progbits,_ZN5QListI11SessionItemE6appendERKS0_,comdat
	.size	_ZN5QListI11SessionItemE6appendERKS0_, .-_ZN5QListI11SessionItemE6appendERKS0_
	.section	.text.unlikely._ZN5QListI11SessionItemE6appendERKS0_,"axG",@progbits,_ZN5QListI11SessionItemE6appendERKS0_,comdat
.LCOLDE28:
	.section	.text._ZN5QListI11SessionItemE6appendERKS0_,"axG",@progbits,_ZN5QListI11SessionItemE6appendERKS0_,comdat
.LHOTE28:
	.section	.text.unlikely
	.align 2
.LCOLDB29:
	.text
.LHOTB29:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModel6appendERK11SessionItem
	.type	_ZN13SessionsModel6appendERK11SessionItem, @function
_ZN13SessionsModel6appendERK11SessionItem:
.LFB12873:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	_ZNK13SessionsModel8rowCountERK11QModelIndex.localalias.7(%rip), %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	(%rdi), %rax
	movl	$-1, 80(%rsp)
	movl	$-1, 84(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	120(%rax), %rax
	cmpq	%r12, %rax
	jne	.L560
	movq	32(%rdi), %rdx
	movl	12(%rdx), %ecx
	subl	8(%rdx), %ecx
.L561:
	cmpq	%r12, %rax
	movl	$-1, 48(%rsp)
	movl	$-1, 52(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	jne	.L562
	movq	32(%rbx), %rax
	movl	12(%rax), %edx
	subl	8(%rax), %edx
.L563:
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$-1, 16(%rsp)
	movl	$-1, 20(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN18QAbstractItemModel15beginInsertRowsERK11QModelIndexii@PLT
	leaq	32(%rbx), %rdi
	movq	%rbp, %rsi
	call	_ZN5QListI11SessionItemE6appendERKS0_@PLT
	movq	%rbx, %rdi
	call	_ZN18QAbstractItemModel13endInsertRowsEv@PLT
	movq	104(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L566
	addq	$112, %rsp
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
.L560:
	.cfi_restore_state
	leaq	80(%rsp), %rsi
	call	*%rax
	movl	%eax, %ecx
	movq	(%rbx), %rax
	movq	120(%rax), %rax
	jmp	.L561
	.p2align 4,,10
	.p2align 3
.L562:
	movl	%ecx, 12(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rax
	movl	12(%rsp), %ecx
	movl	%eax, %edx
	jmp	.L563
.L566:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE12873:
	.size	_ZN13SessionsModel6appendERK11SessionItem, .-_ZN13SessionsModel6appendERK11SessionItem
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.rodata.str1.1
.LC30:
	.string	"Retrieving Data..."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC31:
	.string	"https://telepool-144405.appspot.com/api/v1/list_user_sessions"
	.section	.rodata.str1.1
.LC32:
	.string	"application/json"
.LC33:
	.string	"Content-Type"
.LC34:
	.string	"session/uid"
.LC35:
	.string	"user_id"
.LC36:
	.string	"session/sid"
.LC37:
	.string	"session_id"
.LC38:
	.string	"session/skey"
.LC39:
	.string	"session_key"
.LC40:
	.string	"Processing Data..."
.LC41:
	.string	"status"
.LC42:
	.string	"SUCCESS"
.LC43:
	.string	"OKAY"
.LC44:
	.string	"client"
.LC45:
	.string	"login_time"
.LC46:
	.string	"last_seen_time"
.LC47:
	.string	"app_name"
.LC48:
	.string	"app_version"
.LC49:
	.string	"os_name"
.LC50:
	.string	"os_version"
.LC51:
	.string	"sessions"
	.section	.text.unlikely
	.align 2
.LCOLDB52:
	.text
.LHOTB52:
	.align 2
	.p2align 4,,15
	.globl	_ZN13SessionsModel7refreshEv
	.type	_ZN13SessionsModel7refreshEv, @function
_ZN13SessionsModel7refreshEv:
.LFB12874:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12874
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
	subq	$936, %rsp
	.cfi_def_cfa_offset 992
	movq	%rdi, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 920(%rsp)
	xorl	%eax, %eax
.LEHB36:
	call	_ZN13SessionsModel5clearEv@PLT
	leaq	.LC30(%rip), %rdi
	movl	$18, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE36:
	movq	%rax, 864(%rsp)
	leaq	864(%rsp), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, (%rsp)
.LEHB37:
	call	_ZN13SessionsModel12loadingStartE7QString@PLT
.LEHE37:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L572
	cmpl	$-1, %eax
	je	.L569
	lock subl	$1, (%rdi)
	je	.L915
.L569:
	movq	(%rsp), %rbx
	leaq	96(%rsp), %r15
	movq	%rbx, %rdi
.LEHB38:
	call	_ZN4QUrlC1Ev@PLT
.LEHE38:
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	%r15, 72(%rsp)
.LEHB39:
	call	_ZN15QNetworkRequestC1ERK4QUrl@PLT
.LEHE39:
	movq	%rbx, %rdi
	call	_ZN4QUrlD1Ev@PLT
	leaq	.LC31(%rip), %rdi
	movl	$61, %esi
.LEHB40:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE40:
	leaq	112(%rsp), %rbp
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rax, 864(%rsp)
	movq	%rbp, %rdi
.LEHB41:
	call	_ZN4QUrlC1ERK7QStringNS_11ParsingModeE@PLT
.LEHE41:
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB42:
	call	_ZN15QNetworkRequest6setUrlERK4QUrl@PLT
.LEHE42:
	movq	%rbp, %rdi
	call	_ZN4QUrlD1Ev@PLT
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L577
	cmpl	$-1, %eax
	je	.L574
	lock subl	$1, (%rdi)
	je	.L916
.L574:
	leaq	144(%rsp), %rbp
	leaq	.LC32(%rip), %rsi
	movl	$-1, %edx
	movq	%rbp, %rdi
.LEHB43:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE43:
	leaq	128(%rsp), %r12
	leaq	.LC33(%rip), %rsi
	movl	$-1, %edx
	movq	%r12, %rdi
.LEHB44:
	call	_ZN10QByteArrayC1EPKci@PLT
.LEHE44:
	movq	72(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
.LEHB45:
	call	_ZN15QNetworkRequest12setRawHeaderERK10QByteArrayS2_@PLT
.LEHE45:
	movq	128(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L582
	cmpl	$-1, %eax
	je	.L579
	lock subl	$1, (%rdi)
	je	.L917
.L579:
	movq	144(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L587
	cmpl	$-1, %eax
	je	.L584
	lock subl	$1, (%rdi)
	je	.L918
.L584:
	leaq	400(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rax, 64(%rsp)
.LEHB46:
	call	_ZN11QJsonObjectC1Ev@PLT
.LEHE46:
	movl	872(%rsp), %eax
	leaq	.LC34(%rip), %rdi
	movl	$11, %esi
	movq	$0, 864(%rsp)
	andl	$-1073741824, %eax
	movl	%eax, 872(%rsp)
	movb	$-128, 875(%rsp)
.LEHB47:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE47:
	movq	%rax, 800(%rsp)
	movq	24(%rsp), %rax
	leaq	416(%rsp), %r12
	leaq	800(%rsp), %rbp
	movq	(%rsp), %rcx
	movq	%r12, %rdi
	movq	16(%rax), %rsi
	movq	%rbp, %rdx
.LEHB48:
	call	_ZNK9QSettings5valueERK7QStringRK8QVariant@PLT
.LEHE48:
	leaq	160(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB49:
	call	_ZNK8QVariant8toStringEv@PLT
.LEHE49:
	leaq	480(%rsp), %r13
	movq	%r14, %rsi
	movq	%r13, %rdi
.LEHB50:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE50:
	leaq	.LC35(%rip), %rdi
	movl	$7, %esi
.LEHB51:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE51:
	leaq	768(%rsp), %r15
	movq	%rbx, %rdi
	movq	%rax, 768(%rsp)
	movq	%r15, %rsi
.LEHB52:
	call	_ZN11QJsonObjectixERK7QString@PLT
	leaq	832(%rsp), %rbx
	movq	%r13, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%rbx, %rdi
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE52:
	movq	768(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L592
	cmpl	$-1, %eax
	je	.L589
	lock subl	$1, (%rdi)
	je	.L919
.L589:
	movq	%r13, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	160(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L597
	cmpl	$-1, %eax
	je	.L594
	lock subl	$1, (%rdi)
	je	.L920
.L594:
	movq	%r12, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L602
	cmpl	$-1, %eax
	je	.L599
	lock subl	$1, (%rdi)
	je	.L921
.L599:
	movq	(%rsp), %r14
	movq	%r14, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movl	872(%rsp), %eax
	leaq	.LC36(%rip), %rdi
	movl	$11, %esi
	movq	$0, 864(%rsp)
	andl	$-1073741824, %eax
	movl	%eax, 872(%rsp)
	movb	$-128, 875(%rsp)
.LEHB53:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE53:
	movq	%rax, 800(%rsp)
	movq	24(%rsp), %rax
	leaq	432(%rsp), %r12
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movq	%r12, %rdi
	movq	16(%rax), %rsi
.LEHB54:
	call	_ZNK9QSettings5valueERK7QStringRK8QVariant@PLT
.LEHE54:
	leaq	176(%rsp), %r13
	movq	%r12, %rsi
	movq	%r13, %rdi
.LEHB55:
	call	_ZNK8QVariant8toStringEv@PLT
.LEHE55:
	leaq	512(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, 32(%rsp)
.LEHB56:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE56:
	leaq	.LC37(%rip), %rdi
	movl	$10, %esi
.LEHB57:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE57:
	movq	64(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rax, 768(%rsp)
.LEHB58:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE58:
	movq	768(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L607
	cmpl	$-1, %eax
	je	.L604
	lock subl	$1, (%rdi)
	je	.L922
.L604:
	movq	32(%rsp), %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	176(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L612
	cmpl	$-1, %eax
	je	.L609
	lock subl	$1, (%rdi)
	je	.L923
.L609:
	movq	%r12, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L617
	cmpl	$-1, %eax
	je	.L614
	lock subl	$1, (%rdi)
	je	.L924
.L614:
	movq	(%rsp), %r14
	movq	%r14, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movl	872(%rsp), %eax
	leaq	.LC38(%rip), %rdi
	movl	$12, %esi
	movq	$0, 864(%rsp)
	andl	$-1073741824, %eax
	movl	%eax, 872(%rsp)
	movb	$-128, 875(%rsp)
.LEHB59:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE59:
	movq	%rax, 800(%rsp)
	movq	24(%rsp), %rax
	leaq	448(%rsp), %r13
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movq	%r13, %rdi
	movq	16(%rax), %rsi
.LEHB60:
	call	_ZNK9QSettings5valueERK7QStringRK8QVariant@PLT
.LEHE60:
	leaq	192(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB61:
	call	_ZNK8QVariant8toStringEv@PLT
.LEHE61:
	leaq	544(%rsp), %r12
	movq	%r14, %rsi
	movq	%r12, %rdi
.LEHB62:
	call	_ZN10QJsonValueC1ERK7QString@PLT
.LEHE62:
	leaq	.LC39(%rip), %rdi
	movl	$11, %esi
.LEHB63:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE63:
	movq	64(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rax, 768(%rsp)
.LEHB64:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	call	_ZN13QJsonValueRefaSERK10QJsonValue@PLT
.LEHE64:
	movq	768(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L622
	cmpl	$-1, %eax
	je	.L619
	lock subl	$1, (%rdi)
	je	.L925
.L619:
	movq	%r12, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	192(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L627
	cmpl	$-1, %eax
	je	.L624
	lock subl	$1, (%rdi)
	je	.L926
.L624:
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L632
	cmpl	$-1, %eax
	je	.L629
	lock subl	$1, (%rdi)
	je	.L927
.L629:
	movq	(%rsp), %rdi
	leaq	208(%rsp), %r13
	call	_ZN8QVariantD1Ev@PLT
	movq	64(%rsp), %rsi
	movq	%r13, %rdi
.LEHB65:
	call	_ZN13QJsonDocumentC1ERK11QJsonObject@PLT
.LEHE65:
	leaq	224(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB66:
	call	_ZNK13QJsonDocument6toJsonEv@PLT
.LEHE66:
	movq	24(%rsp), %rax
	movq	72(%rsp), %rsi
	movq	%r14, %rdx
	movq	24(%rax), %rdi
.LEHB67:
	call	_ZN14NetworkManager4postERK15QNetworkRequestRK10QByteArray@PLT
.LEHE67:
	movq	224(%rsp), %rdi
	movq	%rax, 8(%rsp)
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L637
	cmpl	$-1, %eax
	je	.L634
	lock subl	$1, (%rdi)
	je	.L928
.L634:
	movq	%r13, %rdi
	leaq	240(%rsp), %r14
	call	_ZN13QJsonDocumentD1Ev@PLT
	movq	8(%rsp), %rsi
	movq	%r14, %rdi
.LEHB68:
	call	_ZN9QIODevice7readAllEv@PLT
.LEHE68:
	leaq	256(%rsp), %r13
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
.LEHB69:
	call	_ZN13QJsonDocument8fromJsonERK10QByteArrayP15QJsonParseError@PLT
.LEHE69:
	leaq	464(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
.LEHB70:
	call	_ZNK13QJsonDocument6objectEv@PLT
.LEHE70:
	movq	%r13, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	movq	240(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L642
	cmpl	$-1, %eax
	je	.L639
	lock subl	$1, (%rdi)
	je	.L929
.L639:
	movq	8(%rsp), %rdi
.LEHB71:
	call	_ZN7QObject11deleteLaterEv@PLT
	leaq	.LC40(%rip), %rdi
	movl	$18, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE71:
	movq	(%rsp), %rsi
	movq	24(%rsp), %rdi
	movq	%rax, 864(%rsp)
.LEHB72:
	call	_ZN13SessionsModel12loadingStartE7QString@PLT
.LEHE72:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L647
	cmpl	$-1, %eax
	je	.L644
	lock subl	$1, (%rdi)
	je	.L930
.L644:
	leaq	.LC41(%rip), %rdi
	movl	$6, %esi
.LEHB73:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE73:
	movq	80(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rax, 800(%rsp)
.LEHB74:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	(%rsp), %r14
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%r14, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE74:
	leaq	288(%rsp), %r13
	movq	%r14, %rsi
	movq	%r13, %rdi
.LEHB75:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE75:
	movq	%r14, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	272(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 88(%rsp)
.LEHB76:
	call	_ZN7QString14trimmed_helperERS_@PLT
.LEHE76:
	movq	288(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L655
	cmpl	$-1, %eax
	je	.L652
	lock subl	$1, (%rdi)
	je	.L931
.L652:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L660
	cmpl	$-1, %eax
	je	.L657
	lock subl	$1, (%rdi)
	je	.L932
.L657:
	movq	272(%rsp), %rdi
	leaq	.LC42(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movl	4(%rdi), %esi
	addq	16(%rdi), %rdi
.LEHB77:
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
	testl	%eax, %eax
	jne	.L933
.L661:
	leaq	.LC51(%rip), %rdi
	movl	$8, %esi
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE77:
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
.LEHB78:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	(%rsp), %rsi
	movq	32(%rsp), %rdi
	movq	%rax, 864(%rsp)
	movq	%rdx, 872(%rsp)
	call	_ZNK13QJsonValueRef7toArrayEv@PLT
.LEHE78:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L667
	cmpl	$-1, %eax
	je	.L664
	lock subl	$1, (%rdi)
	je	.L934
.L664:
	leaq	608(%rsp), %rax
	movl	$0, 8(%rsp)
	leaq	576(%rsp), %r13
	movq	%rax, 40(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	640(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.L790
	.p2align 4,,10
	.p2align 3
.L669:
	cmpl	$-1, %eax
	je	.L670
	lock subl	$1, (%rdi)
	je	.L935
.L670:
	movq	_ZN10QArrayData11shared_nullE@GOTPCREL(%rip), %rax
	leaq	.LC37(%rip), %rdi
	movl	$10, %esi
	movq	%rax, 864(%rsp)
	movq	%rax, 872(%rsp)
	movq	%rax, 888(%rsp)
	movq	%rax, 896(%rsp)
	movq	%rax, 904(%rsp)
	movq	%rax, 912(%rsp)
.LEHB79:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE79:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rax, 800(%rsp)
.LEHB80:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	40(%rsp), %r14
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%r14, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE80:
	movq	56(%rsp), %rdi
	movq	%r14, %rsi
.LEHB81:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE81:
	movq	%r14, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	864(%rsp), %rax
	movq	304(%rsp), %rdx
	movq	%rax, 304(%rsp)
	movq	%rdx, 864(%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L680
	cmpl	$-1, %edx
	je	.L675
	lock subl	$1, (%rax)
	je	.L680
.L675:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L685
	cmpl	$-1, %eax
	je	.L682
	lock subl	$1, (%rdi)
	je	.L936
.L682:
	leaq	.LC35(%rip), %rdi
	movl	$7, %esi
.LEHB82:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE82:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rax, 800(%rsp)
.LEHB83:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	48(%rsp), %r14
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%r14, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE83:
	leaq	320(%rsp), %rdi
	movq	%r14, %rsi
.LEHB84:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE84:
	movq	%r14, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	872(%rsp), %rax
	movq	320(%rsp), %rdx
	movq	%rax, 320(%rsp)
	movq	%rdx, 872(%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L692
	cmpl	$-1, %edx
	je	.L687
	lock subl	$1, (%rax)
	je	.L692
.L687:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L697
	cmpl	$-1, %eax
	je	.L694
	lock subl	$1, (%rdi)
	je	.L937
.L694:
	leaq	.LC45(%rip), %rdi
	movl	$10, %esi
.LEHB85:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE85:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rax, 800(%rsp)
.LEHB86:
	call	_ZN11QJsonObjectixERK7QString@PLT
	leaq	672(%rsp), %r14
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%r14, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE86:
	xorl	%esi, %esi
	movq	%r14, %rdi
.LEHB87:
	call	_ZNK10QJsonValue5toIntEi@PLT
.LEHE87:
	movq	%r14, %rdi
	movl	%eax, 20(%rsp)
	call	_ZN10QJsonValueD1Ev@PLT
	movl	20(%rsp), %eax
	movq	800(%rsp), %rdi
	movl	%eax, 880(%rsp)
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L704
	cmpl	$-1, %eax
	je	.L699
	lock subl	$1, (%rdi)
	je	.L938
.L699:
	leaq	.LC46(%rip), %rdi
	movl	$14, %esi
.LEHB88:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE88:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rax, 800(%rsp)
.LEHB89:
	call	_ZN11QJsonObjectixERK7QString@PLT
	leaq	704(%rsp), %r14
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%r14, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE89:
	xorl	%esi, %esi
	movq	%r14, %rdi
.LEHB90:
	call	_ZNK10QJsonValue5toIntEi@PLT
.LEHE90:
	movq	%r14, %rdi
	movl	%eax, 20(%rsp)
	call	_ZN10QJsonValueD1Ev@PLT
	movl	20(%rsp), %eax
	movq	800(%rsp), %rdi
	movl	%eax, 884(%rsp)
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L711
	cmpl	$-1, %eax
	je	.L706
	lock subl	$1, (%rdi)
	je	.L939
.L706:
	leaq	.LC47(%rip), %rdi
	movl	$8, %esi
.LEHB91:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE91:
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%rax, 800(%rsp)
.LEHB92:
	call	_ZN11QJsonObjectixERK7QString@PLT
	leaq	736(%rsp), %r14
	movq	%rbx, %rsi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	movq	%r14, %rdi
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE92:
	leaq	336(%rsp), %rdi
	movq	%r14, %rsi
.LEHB93:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE93:
	movq	%r14, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	888(%rsp), %rax
	movq	336(%rsp), %rdx
	movq	%rax, 336(%rsp)
	movq	%rdx, 888(%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L718
	cmpl	$-1, %edx
	je	.L713
	lock subl	$1, (%rax)
	je	.L718
.L713:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L723
	cmpl	$-1, %eax
	je	.L720
	lock subl	$1, (%rdi)
	je	.L940
.L720:
	leaq	.LC48(%rip), %rdi
	movl	$11, %esi
.LEHB94:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE94:
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%rax, 800(%rsp)
.LEHB95:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE95:
	leaq	352(%rsp), %rdi
	movq	%r15, %rsi
.LEHB96:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE96:
	movq	%r15, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	896(%rsp), %rax
	movq	352(%rsp), %rdx
	movq	%rax, 352(%rsp)
	movq	%rdx, 896(%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L730
	cmpl	$-1, %edx
	je	.L725
	lock subl	$1, (%rax)
	je	.L730
.L725:
	movq	800(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L735
	cmpl	$-1, %eax
	je	.L732
	lock subl	$1, (%rdi)
	je	.L941
.L732:
	leaq	.LC49(%rip), %rdi
	movl	$7, %esi
.LEHB97:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE97:
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	%rax, 768(%rsp)
.LEHB98:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%rax, 832(%rsp)
	movq	%rdx, 840(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE98:
	leaq	368(%rsp), %rdi
	movq	%rbp, %rsi
.LEHB99:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE99:
	movq	%rbp, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	904(%rsp), %rax
	movq	368(%rsp), %rdx
	movq	%rax, 368(%rsp)
	movq	%rdx, 904(%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L742
	cmpl	$-1, %edx
	je	.L737
	lock subl	$1, (%rax)
	je	.L742
.L737:
	movq	768(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L747
	cmpl	$-1, %eax
	je	.L744
	lock subl	$1, (%rdi)
	je	.L942
.L744:
	leaq	.LC50(%rip), %rdi
	movl	$10, %esi
.LEHB100:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE100:
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	%rax, 768(%rsp)
.LEHB101:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 800(%rsp)
	movq	%rdx, 808(%rsp)
	call	_ZNK13QJsonValueRef7toValueEv@PLT
.LEHE101:
	leaq	384(%rsp), %rdi
	movq	%rbx, %rsi
.LEHB102:
	call	_ZNK10QJsonValue8toStringEv@PLT
.LEHE102:
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	912(%rsp), %rax
	movq	384(%rsp), %rdx
	movq	%rax, 384(%rsp)
	movq	%rdx, 912(%rsp)
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L754
	cmpl	$-1, %edx
	je	.L749
	lock subl	$1, (%rax)
	je	.L754
.L749:
	movq	768(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L759
	cmpl	$-1, %eax
	je	.L756
	lock subl	$1, (%rdi)
	je	.L943
.L756:
	movq	(%rsp), %rsi
	movq	24(%rsp), %rdi
.LEHB103:
	call	_ZN13SessionsModel6appendERK11SessionItem@PLT
.LEHE103:
	movq	912(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L764
	cmpl	$-1, %eax
	je	.L761
	lock subl	$1, (%rdi)
	je	.L944
.L761:
	movq	904(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L769
	cmpl	$-1, %eax
	je	.L766
	lock subl	$1, (%rdi)
	je	.L945
.L766:
	movq	896(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L774
	cmpl	$-1, %eax
	je	.L771
	lock subl	$1, (%rdi)
	je	.L946
.L771:
	movq	888(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L779
	cmpl	$-1, %eax
	je	.L776
	lock subl	$1, (%rdi)
	je	.L947
.L776:
	movq	872(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L784
	cmpl	$-1, %eax
	je	.L781
	lock subl	$1, (%rdi)
	je	.L948
.L781:
	movq	864(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L789
	cmpl	$-1, %eax
	je	.L786
	lock subl	$1, (%rdi)
	je	.L949
.L786:
	movq	%r13, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	%r12, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	addl	$1, 8(%rsp)
.L790:
	movq	32(%rsp), %r14
	movq	%r14, %rdi
.LEHB104:
	call	_ZNK10QJsonArray4sizeEv@PLT
	movl	8(%rsp), %ecx
	cmpl	%eax, %ecx
	jge	.L668
	movl	%ecx, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_ZNK10QJsonArray2atEi@PLT
.LEHE104:
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB105:
	call	_ZNK10QJsonValue8toObjectEv@PLT
.LEHE105:
	movq	%r13, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	leaq	.LC44(%rip), %rdi
	movl	$6, %esi
.LEHB106:
	call	_ZN7QString16fromAscii_helperEPKci@PLT
.LEHE106:
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%rax, 832(%rsp)
.LEHB107:
	call	_ZN11QJsonObjectixERK7QString@PLT
	movq	(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, 864(%rsp)
	movq	%rdx, 872(%rsp)
	call	_ZNK13QJsonValueRef8toObjectEv@PLT
.LEHE107:
	movq	832(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L669
.L673:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L670
.L949:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L789:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L786
.L948:
	movq	872(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L784:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L781
.L947:
	movq	888(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L779:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L776
.L946:
	movq	896(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L774:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L771
.L945:
	movq	904(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L769:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L766
.L944:
	movq	912(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L764:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L761
.L943:
	movq	768(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L759:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L756
	.p2align 4,,10
	.p2align 3
.L754:
	movq	384(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L749
.L942:
	movq	768(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L747:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L744
	.p2align 4,,10
	.p2align 3
.L742:
	movq	368(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L737
.L941:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L735:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L732
	.p2align 4,,10
	.p2align 3
.L730:
	movq	352(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L725
.L940:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L723:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L720
	.p2align 4,,10
	.p2align 3
.L718:
	movq	336(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L713
.L939:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L711:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L706
.L938:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L704:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L699
.L936:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L685:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L682
	.p2align 4,,10
	.p2align 3
.L680:
	movq	304(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L675
.L937:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L697:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L694
	.p2align 4,,10
	.p2align 3
.L692:
	movq	320(%rsp), %rdi
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L687
	.p2align 4,,10
	.p2align 3
.L668:
	movq	32(%rsp), %rdi
	call	_ZN10QJsonArrayD1Ev@PLT
.L662:
	movq	24(%rsp), %rdi
.LEHB108:
	call	_ZN13SessionsModel11loadingStopEv@PLT
	movq	272(%rsp), %rdi
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L795
	cmpl	$-1, %eax
	je	.L792
	lock subl	$1, (%rdi)
	je	.L950
.L792:
	movq	80(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	64(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	movq	72(%rsp), %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	920(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L951
	addq	$936, %rsp
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
.L950:
	.cfi_restore_state
	movq	272(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L795:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L792
.L918:
	movq	144(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L587:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L584
.L917:
	movq	128(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L582:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L579
.L922:
	movq	768(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L607:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L604
.L921:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L602:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L599
.L916:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L577:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L574
.L915:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L572:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L569
.L920:
	movq	160(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L597:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L594
.L919:
	movq	768(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L592:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L589
.L924:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L617:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L614
.L923:
	movq	176(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L612:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L609
.L928:
	movq	224(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L637:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L634
.L926:
	movq	192(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L627:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L624
.L925:
	movq	768(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L622:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L619
.L929:
	movq	240(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L642:
	movl	$8, %edx
	movl	$1, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L639
.L927:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L632:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L629
.L930:
	movq	864(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L647:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L644
.L932:
	movq	800(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L660:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L657
.L931:
	movq	288(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L655:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L933:
	movq	272(%rsp), %rax
	leaq	.LC43(%rip), %rdx
	movl	$1, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	addq	16(%rax), %rdi
	movl	4(%rax), %esi
	call	_ZN7QString14compare_helperEPK5QChariPKciN2Qt15CaseSensitivityE@PLT
.LEHE108:
	testl	%eax, %eax
	je	.L661
	jmp	.L662
.L934:
	movq	832(%rsp), %rdi
.L667:
	movl	$8, %edx
	movl	$2, %esi
	call	_ZN10QArrayData10deallocateEPS_mm@PLT
	jmp	.L664
.L874:
	movq	%rax, %rbx
.L832:
	movq	32(%rsp), %rdi
	call	_ZN10QJsonArrayD1Ev@PLT
.L830:
	movq	88(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
.L827:
	movq	80(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L809:
	movq	64(%rsp), %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
.L800:
	movq	72(%rsp), %rdi
	call	_ZN15QNetworkRequestD1Ev@PLT
	movq	%rbx, %rdi
.LEHB109:
	call	_Unwind_Resume@PLT
.L875:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L832
.L876:
	movq	%rax, %rbx
.L834:
	movq	%r12, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	jmp	.L832
.L877:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L834
.L935:
	movq	832(%rsp), %rdi
	jmp	.L673
.L878:
	movq	%rax, %rbx
.L835:
	movq	(%rsp), %rdi
	call	_ZN11SessionItemD1Ev@PLT
	movq	%r13, %rdi
	call	_ZN11QJsonObjectD1Ev@PLT
	jmp	.L834
.L879:
.L907:
	movq	%rax, %rbx
.L727:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L835
.L888:
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L727
.L880:
	jmp	.L907
.L889:
	movq	48(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L727
.L881:
	jmp	.L907
.L890:
.L908:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L727
.L882:
	jmp	.L907
.L891:
	jmp	.L908
.L883:
	jmp	.L907
.L892:
	jmp	.L908
.L884:
	jmp	.L907
.L893:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L727
.L885:
.L909:
	movq	%rax, %rbx
.L751:
	movq	%r15, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L835
.L894:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L751
.L886:
	jmp	.L909
.L895:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L751
.L951:
	call	__stack_chk_fail@PLT
.L872:
	movq	%rax, %rbx
	jmp	.L830
.L866:
	movq	%rax, %rbx
.L825:
	movq	%r14, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L809
.L869:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L827
.L870:
	movq	%rax, %rbx
.L650:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L827
.L868:
	movq	%rax, %rbx
	jmp	.L827
.L871:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	jmp	.L650
.L887:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L650
.L838:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L873:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	call	_ZN7QStringD1Ev@PLT
	movq	%rbp, %rbx
	jmp	.L830
.L848:
	movq	%rax, %rbx
.L805:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
.L813:
	movq	%r12, %rdi
	call	_ZN8QVariantD1Ev@PLT
.L820:
	movq	%rbp, %rdi
	call	_ZN7QStringD1Ev@PLT
.L821:
	movq	(%rsp), %rdi
	call	_ZN8QVariantD1Ev@PLT
	jmp	.L809
.L847:
.L911:
	movq	%rax, %rbx
	jmp	.L813
.L846:
.L910:
	movq	%rax, %rbx
	jmp	.L820
.L845:
.L906:
	movq	%rax, %rbx
	jmp	.L821
.L844:
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
.L802:
	movq	%rbp, %rdi
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L800
.L843:
	movq	%rax, %rbx
	jmp	.L802
.L850:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L804:
	movq	%r13, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L805
.L849:
	movq	%rax, %rbx
	jmp	.L804
.L842:
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN4QUrlD1Ev@PLT
.L799:
	movq	(%rsp), %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L800
.L841:
	movq	%rax, %rbx
	jmp	.L799
.L840:
	movq	%rax, %rbx
	jmp	.L800
.L839:
	movq	(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN4QUrlD1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE109:
.L857:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L811:
	movq	32(%rsp), %rdi
	call	_ZN10QJsonValueD1Ev@PLT
.L812:
	movq	%r13, %rdi
	call	_ZN7QStringD1Ev@PLT
	jmp	.L813
.L856:
	movq	%rax, %rbx
	jmp	.L811
.L864:
	movq	%rax, %rbx
.L823:
	movq	%r13, %rdi
	call	_ZN13QJsonDocumentD1Ev@PLT
	jmp	.L809
.L851:
	movq	%rax, %rbx
	jmp	.L809
.L861:
	movq	%rax, %rbx
.L818:
	movq	%r14, %rdi
	call	_ZN7QStringD1Ev@PLT
.L819:
	movq	%r13, %rdi
	call	_ZN8QVariantD1Ev@PLT
	jmp	.L820
.L860:
	movq	%rax, %rbx
	jmp	.L819
.L859:
	jmp	.L910
.L858:
	jmp	.L906
.L863:
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	_ZN7QStringD1Ev@PLT
.L817:
	movq	%r12, %rdi
	call	_ZN10QJsonValueD1Ev@PLT
	jmp	.L818
.L862:
	movq	%rax, %rbx
	jmp	.L817
.L865:
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZN10QByteArrayD1Ev@PLT
	jmp	.L823
.L867:
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN13QJsonDocumentD1Ev@PLT
	jmp	.L825
.L855:
	movq	%rax, %rbx
	jmp	.L812
.L854:
	jmp	.L911
.L853:
	jmp	.L910
.L852:
	jmp	.L906
	.cfi_endproc
.LFE12874:
	.section	.gcc_except_table
.LLSDA12874:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12874-.LLSDACSB12874
.LLSDACSB12874:
	.uleb128 .LEHB36-.LFB12874
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB12874
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L838-.LFB12874
	.uleb128 0
	.uleb128 .LEHB38-.LFB12874
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB12874
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L839-.LFB12874
	.uleb128 0
	.uleb128 .LEHB40-.LFB12874
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L840-.LFB12874
	.uleb128 0
	.uleb128 .LEHB41-.LFB12874
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L841-.LFB12874
	.uleb128 0
	.uleb128 .LEHB42-.LFB12874
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L842-.LFB12874
	.uleb128 0
	.uleb128 .LEHB43-.LFB12874
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L840-.LFB12874
	.uleb128 0
	.uleb128 .LEHB44-.LFB12874
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L843-.LFB12874
	.uleb128 0
	.uleb128 .LEHB45-.LFB12874
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L844-.LFB12874
	.uleb128 0
	.uleb128 .LEHB46-.LFB12874
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L840-.LFB12874
	.uleb128 0
	.uleb128 .LEHB47-.LFB12874
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L845-.LFB12874
	.uleb128 0
	.uleb128 .LEHB48-.LFB12874
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L846-.LFB12874
	.uleb128 0
	.uleb128 .LEHB49-.LFB12874
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L847-.LFB12874
	.uleb128 0
	.uleb128 .LEHB50-.LFB12874
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L848-.LFB12874
	.uleb128 0
	.uleb128 .LEHB51-.LFB12874
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L849-.LFB12874
	.uleb128 0
	.uleb128 .LEHB52-.LFB12874
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L850-.LFB12874
	.uleb128 0
	.uleb128 .LEHB53-.LFB12874
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L852-.LFB12874
	.uleb128 0
	.uleb128 .LEHB54-.LFB12874
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L853-.LFB12874
	.uleb128 0
	.uleb128 .LEHB55-.LFB12874
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L854-.LFB12874
	.uleb128 0
	.uleb128 .LEHB56-.LFB12874
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L855-.LFB12874
	.uleb128 0
	.uleb128 .LEHB57-.LFB12874
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L856-.LFB12874
	.uleb128 0
	.uleb128 .LEHB58-.LFB12874
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L857-.LFB12874
	.uleb128 0
	.uleb128 .LEHB59-.LFB12874
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L858-.LFB12874
	.uleb128 0
	.uleb128 .LEHB60-.LFB12874
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L859-.LFB12874
	.uleb128 0
	.uleb128 .LEHB61-.LFB12874
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L860-.LFB12874
	.uleb128 0
	.uleb128 .LEHB62-.LFB12874
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L861-.LFB12874
	.uleb128 0
	.uleb128 .LEHB63-.LFB12874
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L862-.LFB12874
	.uleb128 0
	.uleb128 .LEHB64-.LFB12874
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L863-.LFB12874
	.uleb128 0
	.uleb128 .LEHB65-.LFB12874
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L851-.LFB12874
	.uleb128 0
	.uleb128 .LEHB66-.LFB12874
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L864-.LFB12874
	.uleb128 0
	.uleb128 .LEHB67-.LFB12874
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L865-.LFB12874
	.uleb128 0
	.uleb128 .LEHB68-.LFB12874
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L851-.LFB12874
	.uleb128 0
	.uleb128 .LEHB69-.LFB12874
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L866-.LFB12874
	.uleb128 0
	.uleb128 .LEHB70-.LFB12874
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L867-.LFB12874
	.uleb128 0
	.uleb128 .LEHB71-.LFB12874
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L868-.LFB12874
	.uleb128 0
	.uleb128 .LEHB72-.LFB12874
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L869-.LFB12874
	.uleb128 0
	.uleb128 .LEHB73-.LFB12874
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L868-.LFB12874
	.uleb128 0
	.uleb128 .LEHB74-.LFB12874
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L870-.LFB12874
	.uleb128 0
	.uleb128 .LEHB75-.LFB12874
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L887-.LFB12874
	.uleb128 0
	.uleb128 .LEHB76-.LFB12874
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L871-.LFB12874
	.uleb128 0
	.uleb128 .LEHB77-.LFB12874
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L872-.LFB12874
	.uleb128 0
	.uleb128 .LEHB78-.LFB12874
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L873-.LFB12874
	.uleb128 0
	.uleb128 .LEHB79-.LFB12874
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB80-.LFB12874
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L879-.LFB12874
	.uleb128 0
	.uleb128 .LEHB81-.LFB12874
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L888-.LFB12874
	.uleb128 0
	.uleb128 .LEHB82-.LFB12874
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB83-.LFB12874
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L880-.LFB12874
	.uleb128 0
	.uleb128 .LEHB84-.LFB12874
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L889-.LFB12874
	.uleb128 0
	.uleb128 .LEHB85-.LFB12874
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB86-.LFB12874
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L881-.LFB12874
	.uleb128 0
	.uleb128 .LEHB87-.LFB12874
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L890-.LFB12874
	.uleb128 0
	.uleb128 .LEHB88-.LFB12874
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB89-.LFB12874
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L882-.LFB12874
	.uleb128 0
	.uleb128 .LEHB90-.LFB12874
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L891-.LFB12874
	.uleb128 0
	.uleb128 .LEHB91-.LFB12874
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB92-.LFB12874
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L883-.LFB12874
	.uleb128 0
	.uleb128 .LEHB93-.LFB12874
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L892-.LFB12874
	.uleb128 0
	.uleb128 .LEHB94-.LFB12874
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB95-.LFB12874
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L884-.LFB12874
	.uleb128 0
	.uleb128 .LEHB96-.LFB12874
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L893-.LFB12874
	.uleb128 0
	.uleb128 .LEHB97-.LFB12874
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB98-.LFB12874
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L885-.LFB12874
	.uleb128 0
	.uleb128 .LEHB99-.LFB12874
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L894-.LFB12874
	.uleb128 0
	.uleb128 .LEHB100-.LFB12874
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB101-.LFB12874
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L886-.LFB12874
	.uleb128 0
	.uleb128 .LEHB102-.LFB12874
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L895-.LFB12874
	.uleb128 0
	.uleb128 .LEHB103-.LFB12874
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L878-.LFB12874
	.uleb128 0
	.uleb128 .LEHB104-.LFB12874
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L874-.LFB12874
	.uleb128 0
	.uleb128 .LEHB105-.LFB12874
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L875-.LFB12874
	.uleb128 0
	.uleb128 .LEHB106-.LFB12874
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L876-.LFB12874
	.uleb128 0
	.uleb128 .LEHB107-.LFB12874
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L877-.LFB12874
	.uleb128 0
	.uleb128 .LEHB108-.LFB12874
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L872-.LFB12874
	.uleb128 0
	.uleb128 .LEHB109-.LFB12874
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
.LLSDACSE12874:
	.text
	.size	_ZN13SessionsModel7refreshEv, .-_ZN13SessionsModel7refreshEv
	.section	.text.unlikely
.LCOLDE52:
	.text
.LHOTE52:
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

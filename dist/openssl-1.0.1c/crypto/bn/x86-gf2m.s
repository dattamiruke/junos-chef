.file	"asm/x86-gf2m.s"
.text
.type	_mul_1x1_ialu,@function
.align	16
_mul_1x1_ialu:
	subl	$36,%esp
	movl	%eax,%ecx
	leal	(%eax,%eax,1),%edx
	leal	(,%eax,4),%ebp
	andl	$1073741823,%ecx
	leal	(%eax,%eax,1),%edi
	sarl	$31,%eax
	movl	$0,(%esp)
	andl	$2147483647,%edx
	movl	%ecx,4(%esp)
	xorl	%edx,%ecx
	movl	%edx,8(%esp)
	xorl	%ebp,%edx
	movl	%ecx,12(%esp)
	xorl	%edx,%ecx
	movl	%ebp,16(%esp)
	xorl	%edx,%ebp
	movl	%ecx,20(%esp)
	xorl	%ecx,%ebp
	sarl	$31,%edi
	andl	%ebx,%eax
	movl	%edx,24(%esp)
	andl	%ebx,%edi
	movl	%ebp,28(%esp)
	movl	%eax,%edx
	shll	$31,%eax
	movl	%edi,%ecx
	shrl	$1,%edx
	movl	$7,%esi
	shll	$30,%edi
	andl	%ebx,%esi
	shrl	$2,%ecx
	xorl	%edi,%eax
	shrl	$3,%ebx
	movl	$7,%edi
	andl	%ebx,%edi
	shrl	$3,%ebx
	xorl	%ecx,%edx
	xorl	(%esp,%esi,4),%eax
	movl	$7,%esi
	andl	%ebx,%esi
	shrl	$3,%ebx
	movl	(%esp,%edi,4),%ebp
	movl	$7,%edi
	movl	%ebp,%ecx
	shll	$3,%ebp
	andl	%ebx,%edi
	shrl	$29,%ecx
	xorl	%ebp,%eax
	shrl	$3,%ebx
	xorl	%ecx,%edx
	movl	(%esp,%esi,4),%ecx
	movl	$7,%esi
	movl	%ecx,%ebp
	shll	$6,%ecx
	andl	%ebx,%esi
	shrl	$26,%ebp
	xorl	%ecx,%eax
	shrl	$3,%ebx
	xorl	%ebp,%edx
	movl	(%esp,%edi,4),%ebp
	movl	$7,%edi
	movl	%ebp,%ecx
	shll	$9,%ebp
	andl	%ebx,%edi
	shrl	$23,%ecx
	xorl	%ebp,%eax
	shrl	$3,%ebx
	xorl	%ecx,%edx
	movl	(%esp,%esi,4),%ecx
	movl	$7,%esi
	movl	%ecx,%ebp
	shll	$12,%ecx
	andl	%ebx,%esi
	shrl	$20,%ebp
	xorl	%ecx,%eax
	shrl	$3,%ebx
	xorl	%ebp,%edx
	movl	(%esp,%edi,4),%ebp
	movl	$7,%edi
	movl	%ebp,%ecx
	shll	$15,%ebp
	andl	%ebx,%edi
	shrl	$17,%ecx
	xorl	%ebp,%eax
	shrl	$3,%ebx
	xorl	%ecx,%edx
	movl	(%esp,%esi,4),%ecx
	movl	$7,%esi
	movl	%ecx,%ebp
	shll	$18,%ecx
	andl	%ebx,%esi
	shrl	$14,%ebp
	xorl	%ecx,%eax
	shrl	$3,%ebx
	xorl	%ebp,%edx
	movl	(%esp,%edi,4),%ebp
	movl	$7,%edi
	movl	%ebp,%ecx
	shll	$21,%ebp
	andl	%ebx,%edi
	shrl	$11,%ecx
	xorl	%ebp,%eax
	shrl	$3,%ebx
	xorl	%ecx,%edx
	movl	(%esp,%esi,4),%ecx
	movl	$7,%esi
	movl	%ecx,%ebp
	shll	$24,%ecx
	andl	%ebx,%esi
	shrl	$8,%ebp
	xorl	%ecx,%eax
	shrl	$3,%ebx
	xorl	%ebp,%edx
	movl	(%esp,%edi,4),%ebp
	movl	%ebp,%ecx
	shll	$27,%ebp
	movl	(%esp,%esi,4),%edi
	shrl	$5,%ecx
	movl	%edi,%esi
	xorl	%ebp,%eax
	shll	$30,%edi
	xorl	%ecx,%edx
	shrl	$2,%esi
	xorl	%edi,%eax
	xorl	%esi,%edx
	addl	$36,%esp
	ret
.size	_mul_1x1_ialu,.-_mul_1x1_ialu
.globl	bn_GF2m_mul_2x2
.type	bn_GF2m_mul_2x2,@function
.align	16
bn_GF2m_mul_2x2:
.L_bn_GF2m_mul_2x2_begin:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	subl	$20,%esp
	movl	44(%esp),%eax
	movl	52(%esp),%ebx
	call	_mul_1x1_ialu
	movl	%eax,8(%esp)
	movl	%edx,12(%esp)
	movl	48(%esp),%eax
	movl	56(%esp),%ebx
	call	_mul_1x1_ialu
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	44(%esp),%eax
	movl	52(%esp),%ebx
	xorl	48(%esp),%eax
	xorl	56(%esp),%ebx
	call	_mul_1x1_ialu
	movl	40(%esp),%ebp
	movl	(%esp),%ebx
	movl	4(%esp),%ecx
	movl	8(%esp),%edi
	movl	12(%esp),%esi
	xorl	%edx,%eax
	xorl	%ecx,%edx
	xorl	%ebx,%eax
	movl	%ebx,(%ebp)
	xorl	%edi,%edx
	movl	%esi,12(%ebp)
	xorl	%esi,%eax
	addl	$20,%esp
	xorl	%esi,%edx
	popl	%edi
	xorl	%edx,%eax
	popl	%esi
	movl	%edx,8(%ebp)
	popl	%ebx
	movl	%eax,4(%ebp)
	popl	%ebp
	ret
.size	bn_GF2m_mul_2x2,.-.L_bn_GF2m_mul_2x2_begin
.byte	71,70,40,50,94,109,41,32,77,117,108,116,105,112,108,105
.byte	99,97,116,105,111,110,32,102,111,114,32,120,56,54,44,32
.byte	67,82,89,80,84,79,71,65,77,83,32,98,121,32,60,97
.byte	112,112,114,111,64,111,112,101,110,115,115,108,46,111,114,103
.byte	62,0

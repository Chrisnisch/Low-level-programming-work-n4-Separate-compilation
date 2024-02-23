	.file	"median.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	median
	.type	median, @function
median:
	andi	a5,a1,1
	beq	a5,zero,.L2
	srliw	a5,a1,31
	addw	a1,a5,a1
	sraiw	a1,a1,1
	slli	a1,a1,2
	add	a0,a0,a1
	lw	a5,0(a0)
	fcvt.d.w	fa0,a5
	ret
.L2:
	srliw	a5,a1,31
	addw	a1,a5,a1
	sraiw	a1,a1,1
	slli	a1,a1,2
	add	a0,a0,a1
	lw	a5,-4(a0)
	fcvt.d.w	fa0,a5
	lw	a5,0(a0)
	fcvt.d.w	fa5,a5
	fadd.d	fa0,fa0,fa5
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fmul.d	fa0,fa0,fa5
	ret
	.size	median, .-median
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1071644672
	.ident	"GCC: (GNU) 10.1.0"

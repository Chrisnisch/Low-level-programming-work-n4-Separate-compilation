	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"Array: "
	.align	3
.LC2:
	.string	"%d "
	.align	3
.LC3:
	.string	"Median: %d\n"
	.align	3
.LC4:
	.string	"Median: %.1f\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,8(sp)
	sd	a2,16(sp)
	sd	a3,24(sp)
	sd	a4,32(sp)
	sd	a5,40(sp)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
	addi	s0,sp,8
	addi	s2,sp,48
	lui	s1,%hi(.LC2)
.L2:
	lw	a1,0(s0)
	addi	a0,s1,%lo(.LC2)
	call	printf
	addi	s0,s0,4
	bne	s0,s2,.L2
	li	a1,10
	addi	a0,sp,8
	call	median
	fcvt.w.d a5,fa0,rtz
	sext.w	a1,a5
	fcvt.d.w	fa5,a5
	feq.d	a5,fa5,fa0
	beq	a5,zero,.L3
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.L4:
	li	a0,0
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	addi	sp,sp,80
	jr	ra
.L3:
	fmv.x.d	a1,fa0
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
	j	.L4
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.ident	"GCC: (GNU) 10.1.0"

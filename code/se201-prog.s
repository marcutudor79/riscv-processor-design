	.file	"se201-prog.c"
	.option pic
	.attribute arch, "rv32i2p1_m2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/bl4ck/_code/riscv-processor-design/code" "se201-prog.c"
	.section	.rodata
	.align	2
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	2
.LC1:
	.word	10
	.word	20
	.word	30
	.word	40
	.word	50
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "se201-prog.c"
	.loc 1 3 12
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 3 12
	la	a5,__stack_chk_guard
	lw	a4, 0(a5)
	sw	a4, -20(s0)
	li	a4, 0
	.loc 1 4 9
	lla	a5,.LC0
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,-80(s0)
	sw	a2,-76(s0)
	sw	a3,-72(s0)
	sw	a4,-68(s0)
	sw	a5,-64(s0)
	.loc 1 5 9
	lla	a5,.LC1
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	.loc 1 6 9
	li	a5,5
	sw	a5,-88(s0)
	.loc 1 9 15
	addi	a2,s0,-40
	addi	a4,s0,-60
	addi	a5,s0,-80
	lw	a3,-88(s0)
	mv	a1,a4
	mv	a0,a5
	call	addv
	sw	a0,-84(s0)
	.loc 1 10 12
	li	a5,0
	.loc 1 11 1
	mv	a4,a5
	la	a5,__stack_chk_guard
	lw	a3, -20(s0)
	lw	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L3
	call	__stack_chk_fail@plt
.L3:
	mv	a0,a4
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.globl	addv
	.type	addv, @function
addv:
.LFB1:
	.loc 1 14 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 15 8
	lw	a5,-36(s0)
	bne	a5,zero,.L5
	.loc 1 16 16
	li	a5,-1
	j	.L6
.L5:
	.loc 1 17 8
	lw	a5,-40(s0)
	bne	a5,zero,.L7
	.loc 1 18 16
	li	a5,-1
	j	.L6
.L7:
	.loc 1 19 8
	lw	a5,-44(s0)
	bne	a5,zero,.L8
	.loc 1 20 16
	li	a5,-1
	j	.L6
.L8:
	.loc 1 21 8
	lw	a5,-48(s0)
	bgt	a5,zero,.L9
	.loc 1 22 16
	lw	a5,-48(s0)
	j	.L6
.L9:
.LBB2:
	.loc 1 24 15
	sw	zero,-20(s0)
	.loc 1 24 5
	j	.L10
.L11:
	.loc 1 25 22
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 25 31
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 25 13
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a2,-44(s0)
	add	a5,a2,a5
	.loc 1 25 26
	add	a4,a3,a4
	.loc 1 25 17
	sw	a4,0(a5)
	.loc 1 24 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	.loc 1 24 25 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	blt	a4,a5,.L11
.LBE2:
	.loc 1 28 12
	lw	a5,-48(s0)
.L6:
	.loc 1 29 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	addv, .-addv
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x121
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.4byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5
	.uleb128 0x2
	.string	"in1"
	.byte	0x10
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"in2"
	.byte	0x1b
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"out"
	.byte	0x26
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"n"
	.byte	0x30
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.string	"i"
	.byte	0x18
	.byte	0xf
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	0x26
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118
	.uleb128 0x1
	.string	"a"
	.byte	0x4
	.byte	0x9
	.4byte	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"b"
	.byte	0x5
	.byte	0x9
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"n"
	.byte	0x6
	.byte	0x9
	.4byte	0x26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.4byte	.LASF5
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"res"
	.byte	0x9
	.byte	0x9
	.4byte	0x26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.4byte	.LASF7
	.byte	0x1
	.byte	0x9
	.byte	0xf
	.4byte	0x26
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x26
	.uleb128 0xe
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"unsigned int"
.LASF7:
	.string	"addv"
.LASF5:
	.string	"result"
.LASF4:
	.string	"long double"
.LASF8:
	.string	"main"
.LASF6:
	.string	"GNU C17 13.3.0 -mcmodel=medlow -mabi=ilp32 -misa-spec=20191213 -march=rv32im -g -O0 -fstack-protector-strong"
.LASF3:
	.string	"long long int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"se201-prog.c"
.LASF1:
	.string	"/home/bl4ck/_code/riscv-processor-design/code"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits

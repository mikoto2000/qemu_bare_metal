	.arch armv8-a
	.file	"main.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"count: "
	.align	3
.LC1:
	.string	"."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [x29, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [x29, 24]
	str	wzr, [x29, 44]
	b	.L2
.L3:
	ldrsw	x0, [x29, 44]
	add	x1, x29, 16
	mov	w2, 5
	bl	ltoa_10
	ldr	x0, [x29, 32]
	bl	print
	add	x0, x29, 16
	bl	print
	ldr	x0, [x29, 24]
	bl	println
	ldr	w0, [x29, 44]
	add	w0, w0, 1
	str	w0, [x29, 44]
.L2:
	ldr	w0, [x29, 44]
	cmp	w0, 1000
	ble	.L3
.L4:
	b	.L4
	.size	main, .-main
	.ident	"GCC: (Linaro GCC 6.2-2016.11) 6.2.1 20161016"
	.section	.note.GNU-stack,"",@progbits

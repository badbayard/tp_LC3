	.ORIG x0000
	LD R1, a
	LD R2, b
	ADD R3, R1, R2
	ST R3, c
a:	.FILL 2
b:	.FILL 3
c:	.BLKW 1
	.END


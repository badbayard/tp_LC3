	.ORIG x0000
	LD R1, i
loop:	BRnz end
	ADD R1,R1,#-1
	BR loop
end:    BR end
i:	.FILL 3
	.END


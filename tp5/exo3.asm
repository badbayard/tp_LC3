			.ORIG X3000
			LD R0,char
			AND R1,R1,#0
			ADD R1,R1,#10
			BRn endloop
loop: OUT
			ADD R1,R1,#-1
			BRp loop
endloop: HALT
char: .FILL x005A
.END


;.ORIG X3000
;.FILL X2007
;.FILL X9140
;.FILL X111A
;.FILL X0000
;.FILL X1111

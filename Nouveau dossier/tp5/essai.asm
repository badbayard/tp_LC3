		  .ORIG x3000
			AND R3,R3,#0
			AND R1,R1,#0
			AND R2,R2,#0
			LEA R0,Z
			ADD R1,R1,#10
			NOT R1,R1
			ADD R1,R1,#1	
loop: ADD R2,R3,R1
			BRp endloop
		  OUT
			ADD R3,R3,#1
			BR loop
endloop:HALT
z: .FILL x005A
.END	
	 

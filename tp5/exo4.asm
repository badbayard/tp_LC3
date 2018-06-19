		;R0<-X
		;R1<-Y
		;R2<-R0-R2
		; if (R2<0){
		; mem[min]<-R0
		; mem[max]<-R1
		; }else{
		; mem[min]<-R1
		; mem[max]<-R0				
			
			
			.ORIG x3000
			LD R0,x
			LD R1,y

			NOT R1,R1
			ADD R1,R1,1
			ADD R2,R0,R1

			BRn else
then: ST R0,min
			ST R1,max
			BR endif
else: ST R0,max
			ST R1,min
endif: HALT
x: .FILL 5
y: .FILL 10
min: .BLKW 1
max: .BLKW 1
			 

.ORIG x3000
;Programme principal

main: LEA R6, stackend
LEA R0, msg1
PUTS
LEA R1, ch1
JSR saisie
LEA R0, msg2
PUTS
LEA R0,ch1
PUTS
ADD R0, R0 ,#10
HALT


saisie: ADD R6,R6,#-1
STR R7,R6,#0
ADD R2,R1,#0
loop: GETC
OUT
ADD R4, R0, #-10
BRz endloop
STR R0, R2,#0
ADD R2, R2, #1
BR loop
endloop: AND R0,R0, #0
STR R0,R2,#0
LDR R7,R6,#0
ADD R6,R6,#1
RET


msg1: .STRINGZ "ENTREZ UNE CHAINE "
msg2: .STRINGZ "VOUS AVEZ TAPER " 
ch1: .BLKW #8
stack: .BLKW #32
stackend: .FILL #0
.END

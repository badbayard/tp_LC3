;; Author: Bill Slough MAT 3670
;; Adapted by Laure Gonnord, oct 2014.
	.ORIG x3000      ; specify where to load the program in memory
	LEA R0,HELLO     
	PUTS             
	LEA R0,COURSE    
	PUTS             
	HALT             
HELLO:  .STRINGZ "Hello, world!\n"
COURSE: .STRINGZ "LIFASR4\n"
	.END

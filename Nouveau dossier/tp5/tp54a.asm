;; Author: Bill Slough MAT 3670
;; Adapted for LIF6/Univ Lyon 1 by Laure Gonnord, oct 2014.
	.ORIG x3000      ; specify the "origin"; i.e., where to load in memory
	LEA R0,HELLO     ;
	PUTS             ;
	LEA R0,COURSE    ;
	PUTS             ;
	HALT             ;
HELLO:  .STRINGZ "Hello, world!\n"
COURSE: .STRINGZ "LIF6\n"
	.END

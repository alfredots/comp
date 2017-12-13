* TINY Compilation to TM Code
* File: C:\Users\Alfredo Tito\Documents\GitHub\comp\compiler\bin\Debug\switchTest.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
  2:     IN  0,0,0 	read integer value
  3:     ST  0,0(5) 	read: store value
* -> if
* -> Op
* -> Id
  4:     LD  0,0(5) 	load id value
* <- Id
  5:     ST  0,0(6) 	op: push left
* -> Const
  6:    LDC  0,1(0) 	load const
* <- Const
  7:     LD  1,0(6) 	op: load left
  8:    SUB  0,1,0 	op ==
  9:    JEQ  0,2(7) 	br if true
 10:    LDC  0,0(0) 	false case
 11:    LDA  7,1(7) 	unconditional jmp
 12:    LDC  0,1(0) 	true case
* <- Op
* if: jump to else belongs here
* if: then part
* -> Id
 14:     LD  0,0(5) 	load id value
* <- Id
 15:    OUT  0,0,0 	write ac
* if: jump to end belongs here
 13:    JEQ  0,3(7) 	if: jmp to else
* if: else part
 16:    LDA  7,0(7) 	jmp to end
* <- if
* End of execution.
 17:   HALT  0,0,0 	

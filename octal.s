OCTAL:	

lui $r0 0x0	
lw $r2 0($r0) 
andi $r0 $r2 7
sw $r3 0($r0)

lui $r3 0x0	
addi $r3 $r3 3 
srlv $r2 $r2 $r3 
lui $r1 0x0
andi $r1 $r2 7 
lui $r3 0x0
addi $r3 $r3 4 
sllv $r1 $r1 $r3	
or $r0 $r0 $r1 

lui $r3 0x0 
addi $r3 $r3 3 
srlv $r2 $r2 $r3 
lui $r1 0x0
andi $r1 $r2 0x7
lui $r3 0x0
addi $r3 $r3 8
sllv $r1 $r1 $r3
or $r0 $r0 $r1

disp $r0 0
andi $r0 $r0 0x0
andi $r1 $r1 0x0
andi $r2 $r2 0x0
lw $r3 0($r0)
jr $r3

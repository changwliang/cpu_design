MOD: 	
lui $r0 0x0
lw $r2 1($r0)
slt $r1 $r2 $r0
beq $r1 $r0 curr
sub $r2 $r0 $r2

curr: 	
lw $r1 0($r0)
sw $r3 0($r0)

sub: 	
slt $r3 $r1 $r2
bne $r3 $r0 done
sub $r1 $r1 $r2
j sub

done: 	
sw $r1 2($r0)
lw $r3 0($r0)
jr $r3

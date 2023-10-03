// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

    @op
    M=0

(Bucle)
    @R0
    D=M 

    @Fin
    D;JEQ

    @op 
    D=M 

    @R1 
    D=D+M 

    @op 
    M=D 

    @R0
    M=M-1 

    @Bucle
    0;JMP

(Fin)
    @op 
    D=M 

    @R2
    M=D 

    @Fin
    0;JMP




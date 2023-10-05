# Grupo Tech

#### Mult
Este programa es usado para multiplicar dos numeros, el resultado tiene que ser menor que 32768, además hay que asumir que ambos valores son mayores o iguales a cero. Para hacerlo se usó el programa de ejemplo que adiciona los primeros 100 numeros en la documentación, ya que una multiplicacion en básicamente suma el mismo numero un x numero de veces.

```Hack
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
```


#### Fill

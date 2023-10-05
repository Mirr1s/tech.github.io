# Grupo Tech - Projecto 4 - Lenguaje Maquina
#
En este proyecto, el reto es programar en Hack Machine Lenguajes dos programas, uno que multiplica dos numeros y otro que hace que la pantalla quede negra al presional una tecla.

#### Mult
Este programa es usado para multiplicar dos numeros, el resultado tiene que ser menor que 32768, además hay que asumir que ambos valores son mayores o iguales a cero. Para hacerlo se usó el programa de ejemplo que adiciona los primeros 100 numeros en la documentación, ya que una multiplicacion en básicamente suma el mismo numero un x numero de veces.

![Ejemplo Suma en Hack](https://github.com/Mirr1s/tech.github.io/blob/main/imagenes/imagen_2023-10-04_230916642.png)

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
Este hace que la pantalla se vuelva negra cuando se oprime, asi que se usa @SCREEN para lograr esto, pero claro, hay que colorar todos los pixeles uno por uno, y eso toma mucho tiempo, así que para que no se tarde demasiado, solo se selecciona la opción "No animation" en el CPUEmulator para que sea instantaneo. De igual manera debido a la poca experiencia con el lenguaje y el modo en que trabaja, se usaron apoyos como videos de ejemplo de internet.

```Hack
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(Reinicio)
    @SCREEN
    D=A

    @Pixel
    M=D	

(PruebaTeclado)
    @KBD
    D=M

    @PantallaNegra
    D;JGT	

    @PantallaBlanca
    D;JEQ	

    @PruebaTeclado
    0;JMP

(PantallaNegra)
    @Color
    M=-1

    @Op
    0;JMP

(PantallaBlanca)
    @Color
    M=0	

    @Op
    0;JMP

(Op)
    @Color
    D=M	

    @Pixel
    A=M
    M=D	

    @Pixel
    D=M+1

    @KBD
    D=A-D    

    @Pixel
    M=M+1
    A=M

    @Op
    D;JGT	
    
    @Reinicio
    0;JMP
```

#
##Referencias
1. Schocken, S., & Nisan, N. (2017). Project 04. Nand2tetris. Recuperado 01 de Octubre de 2023, de https://www.nand2tetris.org/project04

2. Campos, O. (2021) Fill.asm. Recuperado el 01 de Octubre de 2023, de https://www.youtube.com/watch?v=9gIpyR5w3ow

3. Schocken, S., & Nisan, N. (2017). Machine Language. The Elements of Computing Systems. Recuperado 02 de Octubre de 2023, de https://www.nand2tetris.org/_files/ugd/44046b_d70026d8c1424487a451eaba3e372132.pdf

4. Schocken, S., & Nisan, N. (s.f.) CPU Emulator Tutorial. Efi Arazi School of Computer Science. Reichman University. Recuperado 02 de Octubre de 2023, de https://docs.google.com/presentation/d/16DQsZZS9kd50JpK15QKPL8NVqf3Ic912/edit#slide=id.p1

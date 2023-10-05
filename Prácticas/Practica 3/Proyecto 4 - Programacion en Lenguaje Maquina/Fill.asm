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
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
@0
M=D	//PUT SCREEN START LOCATION IN RAM0

///////////////////////////
(PruebaTeclado)

@KBD
D=M
@PantallaNegra
D;JGT	//JUMP IF ANY KBD KEYS ARE PRESSED
@PantallaBlanca
D;JEQ	//ELSE JUMP TO WHITEN

@PruebaTeclado
0;JMP
///////////////////////////
(PantallaNegra)
@1
M=-1	//WHAT TO FILL SCREEN WITH (-1=11111111111111)
@Op
0;JMP

(PantallaBlanca)
@1
M=0	//WHAT TO FILL SCREEN WITH
@Op
0;JMP
//////////////////////////
(Op)
@1	//CHECK WHAT TO FILL SCREEN WITH
D=M	//D CONTAINS BLACK OR WHITE

@0
A=M	//GET ADRESS OF SCREEN PIXEL TO FILL
M=D	//FILL IT

@0
D=M+1	//INC TO NEXT PIXEL
@KBD
D=A-D	//KBD-SCREEN=A

@0
M=M+1	//INC TO NEXT PIXEL
A=M

@Op
D;JGT	//IF A=0 EXIT AS THE WHOLE SCREEN IS BLACK
/////////////////////////
@Reinicio
0;JMP
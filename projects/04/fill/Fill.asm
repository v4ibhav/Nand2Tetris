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

@8192
D=A
@count
M = D
//////count upto 8192


(LOOP)
@counter
M=0

@SCREEN
D=A
@addr
M = D /////addr  = 16384

@KBD
D=M
@BLACK
D;JNE
@WHITE
D;JEQ



(BLACK)
@counter
D = M
@count
D = D-M
@END
D;JEQ

@addr 
A=M
M = -1   //goto this address in addr and put -1
@counter 
M = M+1  //increase counter counts by 1

///put addr to +1
@1
D=A
@addr
M = M+D
@BLACK
0;JMP


(WHITE)
@counter
D = M
@count
D = D-M
@END
D;JEQ

@addr 
A=M
M = 0  //goto this address in addr and put -1
@counter 
M = M+1  //increase counter counts by 1

///put addr to +1
@1
D=A
@addr
M = M+D
@WHITE
0;JMP




(END)
@LOOP
0;JMP

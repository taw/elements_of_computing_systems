// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// Put your code here.

// R0 - loop counter
(loop)
@16384
D=A
@0
M=D

@24576
D=M
@keypressed
D;JNE

(nokey)
// [R0] = 0
@0
D=A
@0
A=M
M=D

// R0 += 1
D=A+1
@0
M=D

@24576
D=D-A
@nokey
D;JNE

@loop
0;JMP

(keypressed)

// [R0] = 0xFFFF
D=-1
@0
A=M
M=D

// R0 += 1
D=A+1
@0
M=D

@24576
D=D-A
@keypressed
D;JNE

@loop
0;JMP

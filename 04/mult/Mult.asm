// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

// R2=0, R3=1
@2
M=0
@3
M=1

// do
(loop)

// if R0 & R3
@0
D=M
@3
D=D&M
@skip
D;JEQ

// then R2 += R1, R0 -= R3
@1
D=M
@2
M=M+D
@3
D=M
@0
M=M-D

(skip)
// R1 *= 2, R3 *= 2
@1
D=M
M=D+M
@3
D=M
M=D+M

// while R0 != 0
@0
D=M
@loop
D;JNE

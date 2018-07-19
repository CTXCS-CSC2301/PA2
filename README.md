# PA2
CSC2301, Programming Assignment 2

1.  You are given some code in PA2-1.s that creates a string which should correspond to a four letter word.  But, this string has its characters scrambled.  You need to rearrange the characters so when it prints it makes a word.  The positions of the characters are numbered 0 through 3.

    *	The letter originally at position 0 should be moved to position 3
    *   The letter originally at position 1 should be moved to position 0
    *   The letter originally at position 3 should be moved to position 1
    *   The letter at position 2 should not move

    You will use a series of `LDRB` and `STRB` instructions with pre-indexed addressing to do these.  Load each of the three letters to be moved into registers using `LDRB` instructions to get the letters from different positions.  Then store them back to memory into the correct positions using `STRB`.

2.  You are given code in PA2-2.s that sets up 8 bytes of data corresponding to a secret message.  That message is at a memory address labeled *text*.  You need to perform the following operations on the bytes of the message to transform them into characters to decrypt the message:

    *   Bytes 0 and 4 need to have the operation `EOR 0x0b1010` applied to them and written back to memory at the original location
    *   Bytes 1 and 5 need to have the operation `ORR 0x40` applied to them and written back to memory at the original location
    *   Bytes 2 and 6 need to have the operation `AND 0x7F` applied to them and written back to memory at the original location
    *   Bytes 3 and 7 should remain unchanged.

    Use `LDRB` with appropriate addressing to load each byte, then perform the operation, then store the byte back to memory using `STRB`.

## Grading Rubric

### Comments
Your code must contain (in comments)
 * Name of author (or both partners for pair assignments)
 * Name of assignment
 * Date assignment is completed
 * A short (one or two line) description of what your program does.
 * A description of how each register in the program is being used
 * When subroutines are created, a description of all inputs and the purpose of the function
 * Any outside resources (other than textbook, or slides) utilized in the completion of the project
 * __Each line of new code you write should indicate what that line of code is doing.__

### Grading standard

| Standard | Correctness | Design and Efficiency | Comments and format |
|----------|-------------|-----------------------|---------------------|
|Full credit|Program fully implements the operational requirements as set forth in the assignment.  For all test inputs, the program produces the correct result.: 20 points | Code implements the algorithm in the most efficient manner possible: 5 points | Code contains all the  comments listed above: 5 points |
| Good | Program produces the correct result in 75% of the test cases: 15 points | Code does two or three operations that are not needed, or could be simplified: 3 points | 1 or 2 items missing or code not neat: 3 points |
| Fair | Program produces the correct result in 50% of the test cases: 10 points | Code does many inefficient operations, but is generally able to be followed:  2 points | about half of comments are missing: 2 points |
| Poor | Program produces the correct result in less than 50% of the test cases, but a reasonable attempt has been made to write correct code: 5 points | | Minimal commenting: 1 point |
| Nothing | Code not turned in or does not appear to address the operational requirements in any meaningful way: 0 | Code is very inefficient or convoluted or difficult to follow: 0 | No commenting: 0 |

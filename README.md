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

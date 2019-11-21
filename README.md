# DIGITAL LOGIC DESIGN - FINAL PROJECT
## Submitted by - Paras Goyal (2018csb1111) and Hansin Ahuja (2018csb1094)

## Overall description
sw[15] and sw[14] define the working mode as follows:
00->Home State
01-> Binary to BCD Checker
10-> 4-bit sequence detector
11-> Quine Mcqulsey for 3 variables verification

led[15] represents a clock with T=2s and inputs are changes when this led is off.
An on-paper design has been uploaded as well.

### State 01: BCD converter
#### Inputs
sw[13] -> reset
sw[12] -> serialIn for binary number
sw[9:0] -> BCD Input

#### Outputs: 	
led[13] -> answer
led[7:0] -> 8 bit binary number

#### Functioning:
If reset is 1 the binary number is set to 0
SerialIn of binary is read using sw[12] during the first 8 clock cycles after reset
After 8 clock cycles BCD input in read and answer bit is displayed as 1 if the BCD equivalent of the binary number displayed on the leds is entered correctly.

### State 10: Sequence Detector

#### Inputs 
sw[13] -> lock
sw[12] ->serialIn of the sequence
sw[7:4] -> pattern #1
sw[3:0] -> pattern #2

#### Outputs:
led[13] -> Any of the pattern matched with the sequence entered.
led[3:0] -> Current value stored in the shift register.

#### Functioning:
This module takes two 4-bit patterns and compares them with value being input from the serialIn line. It is to be noted that the serial input is only taken if lock is 1 else if lock ==0 then the shift registered in cleared.

### State 11: QM checker
#### Inputs:
sw[7:0] -> minterms of the raw expression where sw[7] represents abc and sw[0] represents a'b'c'.
sw[12:8] -> number of terms in the reduced expression.
sw[14:13] -> number of variables in the heaviest term of reduced expression.

#### Output:
led[13] -> answer

#### Functioning:
It takes the raw expression in the form of minterms and takes the value of length of the reduced expression and the length of costliest term in the reduced expression. Answer is set to 1 if the input values are correct else it is zero.


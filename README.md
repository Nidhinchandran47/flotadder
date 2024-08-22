# Floating Point Adder

This repository contain the VHDL code for a 4-bit floating point adder.
![Block_diagram](https://github.com/user-attachments/assets/77bb9c58-9e01-4f97-a504-9cf5907103b4)

### Working

Input to this FPA 2 number to be added but it should be given in Constant, Exponentinal part

-  Constant 1
-  Exponent 1
-  Constant 2
-  Exponent 2 
  
Exponents are fed to a subtractor to calculate the difference and compare which one is larger. Using a MUX Constant which is having lower exponent is selected and shifted left to difference (e1-e2) times to match the placevalue with other constant, Then they are added, If sum doesn't have a carry out,  then the sum and larger exponent is given as output, else the sum is shifed 1 bit right and exponent is increment by 1 and assigned to output.





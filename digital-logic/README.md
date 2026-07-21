This folder contains the structural Verilog implementation of a Half Adder and full adder  and its verification testbench.


for half adder 
A) Design Specifications
Inputs a,b (1-bit inputs)
Outputs sum ,carry (1-bit outputs)
Modeling Style Structural (Gate-level primitives)

B) File Structure
1) half_adder_structural.v :- Main hardware description design file (module)
2) half_adder_tb.v :- Testbench file simulating all input combinations (testbench)
3) half_adder_waveform.jpeg :- Verified simulation output screenshot.

C) Truth Table Verification :- The design implements the standard binary addition rule

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

D) simulation result 
Below is the functional waveform generated via EDA Playground verifying that the outputs perfectly match the truth table:
<img width="1763" height="844" alt="half adder waveform" src="https://github.com/user-attachments/assets/fd24d1ac-004a-4558-af35-37695e29a017" />



for full adder
A) Design Specifications
Inputs a,b,cin (1-bit inputs)
Outputs sum,cout (1-bit outputs)
Modeling Style Structural (Gate-level primitives)
B) File Structure
1) full_adder_structural.v :- Main hardware description design file (module)
2) full_adder_tb.v :- Testbench file simulating all input combinations (testbench)
3) full_adder_waveform.jpeg :- Verified simulation output screenshot.
C) Truth Table Verification :- The design implements the standard binary addition rule
| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |
D) Simulation Result
Below is the functional waveform generated via EDA Playground verifying that the outputs perfectly match the truth table:

<img width="1763" height="844" alt="full adder" src="https://github.com/user-attachments/assets/712a3471-93ef-4b17-8566-b35da1ff8a73" />


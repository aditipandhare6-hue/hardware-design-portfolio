This folder contains the structural Verilog implementation of a following and its verification testbench and waveform
1) Half Adder 
2) full adder  
3) 2:1 mux


1) for half adder

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



2) for full adder

A) Design Specifications
Inputs a,b,cin (1-bit inputs)
Outputs sum,cout (1-bit outputs)
Modeling Style Structural (Gate-level primitives)
B) File Structure
1) full_adder_structural.v :- Main hardware description design file (module)
2) full_adder_tb.v :- Testbench file simulating all input combinations (testbench)
3) full_adder_waveform.jpeg :- Verified simulation output screenshot.
C) Truth Table Verification :- ### Full Adder Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

### D) Simulation Result
D) Simulation Result
Below is the functional waveform generated via EDA Playground verifying that the outputs perfectly match the truth table:

<img width="1763" height="844" alt="full adder" src="https://github.com/user-attachments/assets/712a3471-93ef-4b17-8566-b35da1ff8a73" />

3) 2 to 1 Multiplexer (Structural / Gate-Level Verilog)
 
 A) Design Specifications
- Inputs:
  - I0 (1-bit input)
  - I1 (1-bit input)
  - S (1-bit select input)
- Output:
  - Y (1-bit output)
- Modeling Style:
  - Structural (Gate-Level Primitives)
B) File Structure
1) 2:1mux_structural.v - Main design file
2) 2:1mux_tb.v - Testbench file for simulating all input combinations
3) 2:1 mux waveform.jpeg - Simulation waveform screenshot

 C) Truth Table Verification
The select input (S) determines which input is passed to the output.

| S | I0 | I1 | Y |
|---|----|----|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |


 D) Logic Implementation

- w1 = S'
- w2 = I0 · S'
- w3 = I1 · S
- Y = w2 + w3

Implemented using:
- 1 NOT gate
- 2 AND gates
- 1 OR gate

 E) Simulation Result

The simulation verifies that the output matches the truth table for all possible input combinations.

<img width="1763" height="844" alt="Screenshot_22-7-2026_124117_www edaplayground com" src="https://github.com/user-attachments/assets/a9cc95cf-a9bd-4bba-843a-875d4cd1f978" />

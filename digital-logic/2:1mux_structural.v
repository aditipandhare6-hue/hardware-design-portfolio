module mux2to1_gate (
    input  wire I0,
    input  wire I1,
    input  wire S,
    output wire Y
);
    wire w1, w2, w3;
  
    not g1 (w1, S);
    and g2 (w2, I0, w1);
    and g3 (w3, I1, S);
    or  g4 (Y,  w2, w3);
endmodule

module tb_mux2to1_gate;
    reg I0;
    reg I1;
    reg S;
    wire Y;
    mux2to1_gate uut (
        .I0(I0),
        .I1(I1),
        .S(S),
        .Y(Y)
    );
    initial begin
      $dumpfile("dunp.vcd");
      $dumpvars(0,tb_mux2to1_gate);
        $display("Time | S I0 I1 | w1 w2 w3 | Y");
        $display("-----------------------------");
        $monitor("%4t | %b  %b  %b |  %b  %b  %b | %b", 
                 $time, S, I0, I1, uut.w1, uut.w2, uut.w3, Y);
        S = 0; I0 = 0; I1 = 0; #10;
        S = 0; I0 = 0; I1 = 1; #10;
        S = 0; I0 = 1; I1 = 0; #10;
        S = 0; I0 = 1; I1 = 1; #10;
        S = 1; I0 = 0; I1 = 0; #10;
        S = 1; I0 = 0; I1 = 1; #10;
        S = 1; I0 = 1; I1 = 0; #10;
        S = 1; I0 = 1; I1 = 1; #10;
        $finish;
    end

endmodule

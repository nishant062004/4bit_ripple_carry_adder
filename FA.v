`timescale 1ns / 1ps

module FA(S,C,A,B,Cin);
    input A,B,Cin;
    output S,C;
    
    assign S=A^B^Cin;
    assign C=(A&B)|(B&Cin)|(Cin&A);
    
endmodule

`timescale 1ns / 1ps


module ripple_carry_adder(sum,carry,a,b,cin);
    input [3:0]a;
    input [3:0]b;
    input cin;
    output [3:0]sum;
    output carry;
    wire [2:0]c;
    
    FA fa0(sum[0],c[0],a[0],b[0],cin);
    FA fa1(sum[1],c[1],a[1],b[1],c[0]);
    FA fa2(sum[2],c[2],a[2],b[2],c[1]);
    FA fa3(sum[3],carry,a[3],b[3],c[2]);
    
    
endmodule

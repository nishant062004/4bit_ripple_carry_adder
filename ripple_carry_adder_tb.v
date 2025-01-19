`timescale 1ns/1ps

module ripple_carry_adder_tb;
    reg [3:0]a;
    reg [3:0]b;
    reg cin;
    wire [3:0]sum;
    wire carry;
    
    ripple_carry_adder uut(sum,carry,a,b,cin);
    
    initial begin
    $monitor($time,"a=%d,b=%d,cin=%d,sum=%d,carry=%d",a,b,cin,sum,carry);
             a= 4'b0000;b= 4'b0000;cin = 1'b0;
        #10; a= 4'b0001;b= 4'b0010;cin = 1'b0; 
        #10; a= 4'b0101;b= 4'b0011;cin = 1'b1; 
        #10; a= 4'b1111;b= 4'b1111;cin = 1'b1; 
        #10; a= 4'b1010;b= 4'b0101;cin = 1'b0; 
        #10; a= 4'b1100;b= 4'b0011;cin = 1'b1;
        #10  $finish;
    
    end 
endmodule

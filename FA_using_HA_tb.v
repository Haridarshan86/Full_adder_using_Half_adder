`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 14:02:49
// Design Name: 
// Module Name: FA_using_HA_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_adder_tb;

reg a, b, cin;
wire sum, carry;

integer i;

Full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin

    $display("A B Cin | Sum Carry");

    for(i = 0; i < 8; i = i + 1)
    begin
        {a,b,cin} = i;
        #10;
        $display("%b %b  %b  |  %b    %b",a,b,cin,sum,carry);
    end

    $finish;
end

endmodule

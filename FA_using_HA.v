`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2026 12:57:06
// Design Name: 
// Module Name: FA_using_HA
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

module Full_adder(input a,input b,input cin,output sum,output carry);
wire s1, c1, c2;

// First Half Adder
HA HA1(.a(a),.b(b),.sum(s1),.carry(c1));

// Second Half Adder
HA HA2(.a(s1),.b(cin),.sum(sum),.carry(c2));

assign carry = c1 | c2;
endmodule

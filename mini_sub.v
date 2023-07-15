`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2023 17:13:38
// Design Name: 
// Module Name: mini_sub
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


module mini_sub(din,dout);
input [3:0] din;
output reg[3:0]  dout;



always @ (din) begin
case(din)
4'b0000:dout<=4'b1100;
4'b0001:dout<=4'b0101;
4'b0010:dout<=4'b0110;
4'b0011:dout<=4'b1011;
4'b0100:dout<=4'b1001;
4'b0101:dout<=4'b0000;
4'b0110:dout<=4'b1010;
4'b0111:dout<=4'b1101;
4'b1000:dout<=4'b0011;
4'b1001:dout<=4'b1110;
4'b1010:dout<=4'b1111;
4'b1011:dout<=4'b1000;
4'b1100:dout<=4'b0100;
4'b1101:dout<=4'b0111;
4'b1110:dout<=4'b0001;
4'b1111:dout<=4'b0010;


endcase



end
endmodule

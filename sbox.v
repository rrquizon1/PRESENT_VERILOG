`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 11:15:05
// Design Name: 
// Module Name: sbox
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


module sbox(din,dout );
input [63:0] din;
output [63:0]dout;
wire [3:0] keyout1_l1,keyout1_l2,keyout1_l3,keyout1_l4,keyout1_l5,keyout1_l6,keyout1_l7,keyout1_l8,keyout1_r1,keyout1_r2,keyout1_r3,keyout1_r4,keyout1_r5,keyout1_r6,keyout1_r7,keyout1_r8;
reg [3:0] sout1_l1,sout1_r1;
reg [3:0] sout1_l2,sout1_r2;
reg [3:0] sout1_l3,sout1_r3;
reg [3:0] sout1_l4,sout1_r4;
reg [3:0] sout1_l5,sout1_r5;
reg [3:0] sout1_l6,sout1_r6;
reg [3:0] sout1_l7,sout1_r7;
reg [3:0] sout1_l8,sout1_r8;

assign keyout1_l1=din[63:60];
assign keyout1_l2=din[59:56];
assign keyout1_l3=din[55:52];
assign keyout1_l4=din[51:48];
assign keyout1_l5=din[47:44];
assign keyout1_l6=din[43:40];
assign keyout1_l7=din[39:36];
assign keyout1_l8=din[35:32];
assign keyout1_r1=din[31:28];
assign keyout1_r2=din[27:24];
assign keyout1_r3=din[23:20];
assign keyout1_r4=din[19:16];
assign keyout1_r5=din[15:12];
assign keyout1_r6=din[11:8];
assign keyout1_r7=din[7:4];
assign keyout1_r8=din[3:0];
assign dout={sout1_l1,sout1_l2,sout1_l3,sout1_l4,sout1_l5,sout1_l6,sout1_l7,sout1_l8,sout1_r1,sout1_r2,sout1_r3,sout1_r4,sout1_r5,sout1_r6,sout1_r7,sout1_r8};

always @ (din) begin
case(keyout1_l1)
4'b0000:sout1_l1<=4'b1100;//C
4'b0001:sout1_l1<=4'b0101;//5
4'b0010:sout1_l1<=4'b0110;//6
4'b0011:sout1_l1<=4'b1011;//B
4'b0100:sout1_l1<=4'b1001;//9
4'b0101:sout1_l1<=4'b0000;//0
4'b0110:sout1_l1<=4'b1010;//A
4'b0111:sout1_l1<=4'b1101;//D
4'b1000:sout1_l1<=4'b0011;//3
4'b1001:sout1_l1<=4'b1110;//E
4'b1010:sout1_l1<=4'b1111;//F
4'b1011:sout1_l1<=4'b1000;//8
4'b1100:sout1_l1<=4'b0100;//4
4'b1101:sout1_l1<=4'b0111;//7
4'b1110:sout1_l1<=4'b0001;//1
4'b1111:sout1_l1<=4'b0010;//2

endcase


case(keyout1_l2)
4'b0000:sout1_l2<=4'b1100;
4'b0001:sout1_l2<=4'b0101;
4'b0010:sout1_l2<=4'b0110;
4'b0011:sout1_l2<=4'b1011;
4'b0100:sout1_l2<=4'b1001;
4'b0101:sout1_l2<=4'b0000;
4'b0110:sout1_l2<=4'b1010;
4'b0111:sout1_l2<=4'b1101;
4'b1000:sout1_l2<=4'b0011;
4'b1001:sout1_l2<=4'b1110;
4'b1010:sout1_l2<=4'b1111;
4'b1011:sout1_l2<=4'b1000;
4'b1100:sout1_l2<=4'b0100;
4'b1101:sout1_l2<=4'b0111;
4'b1110:sout1_l2<=4'b0001;
4'b1111:sout1_l2<=4'b0010;

endcase


case(keyout1_l3)
4'b0000:sout1_l3<=4'b1100;
4'b0001:sout1_l3<=4'b0101;
4'b0010:sout1_l3<=4'b0110;
4'b0011:sout1_l3<=4'b1011;
4'b0100:sout1_l3<=4'b1001;
4'b0101:sout1_l3<=4'b0000;
4'b0110:sout1_l3<=4'b1010;
4'b0111:sout1_l3<=4'b1101;
4'b1000:sout1_l3<=4'b0011;
4'b1001:sout1_l3<=4'b1110;
4'b1010:sout1_l3<=4'b1111;
4'b1011:sout1_l3<=4'b1000;
4'b1100:sout1_l3<=4'b0100;
4'b1101:sout1_l3<=4'b0111;
4'b1110:sout1_l3<=4'b0001;
4'b1111:sout1_l3<=4'b0010;

endcase


case(keyout1_l4)
4'b0000:sout1_l4<=4'b1100;
4'b0001:sout1_l4<=4'b0101;
4'b0010:sout1_l4<=4'b0110;
4'b0011:sout1_l4<=4'b1011;
4'b0100:sout1_l4<=4'b1001;
4'b0101:sout1_l4<=4'b0000;
4'b0110:sout1_l4<=4'b1010;
4'b0111:sout1_l4<=4'b1101;
4'b1000:sout1_l4<=4'b0011;
4'b1001:sout1_l4<=4'b1110;
4'b1010:sout1_l4<=4'b1111;
4'b1011:sout1_l4<=4'b1000;
4'b1100:sout1_l4<=4'b0100;
4'b1101:sout1_l4<=4'b0111;
4'b1110:sout1_l4<=4'b0001;
4'b1111:sout1_l4<=4'b0010;

endcase


case(keyout1_l5)
4'b0000:sout1_l5<=4'b1100;
4'b0001:sout1_l5<=4'b0101;
4'b0010:sout1_l5<=4'b0110;
4'b0011:sout1_l5<=4'b1011;
4'b0100:sout1_l5<=4'b1001;
4'b0101:sout1_l5<=4'b0000;
4'b0110:sout1_l5<=4'b1010;
4'b0111:sout1_l5<=4'b1101;
4'b1000:sout1_l5<=4'b0011;
4'b1001:sout1_l5<=4'b1110;
4'b1010:sout1_l5<=4'b1111;
4'b1011:sout1_l5<=4'b1000;
4'b1100:sout1_l5<=4'b0100;
4'b1101:sout1_l5<=4'b0111;
4'b1110:sout1_l5<=4'b0001;
4'b1111:sout1_l5<=4'b0010;

endcase


case(keyout1_l6)
4'b0000:sout1_l6<=4'b1100;
4'b0001:sout1_l6<=4'b0101;
4'b0010:sout1_l6<=4'b0110;
4'b0011:sout1_l6<=4'b1011;
4'b0100:sout1_l6<=4'b1001;
4'b0101:sout1_l6<=4'b0000;
4'b0110:sout1_l6<=4'b1010;
4'b0111:sout1_l6<=4'b1101;
4'b1000:sout1_l6<=4'b0011;
4'b1001:sout1_l6<=4'b1110;
4'b1010:sout1_l6<=4'b1111;
4'b1011:sout1_l6<=4'b1000;
4'b1100:sout1_l6<=4'b0100;
4'b1101:sout1_l6<=4'b0111;
4'b1110:sout1_l6<=4'b0001;
4'b1111:sout1_l6<=4'b0010;

endcase


case(keyout1_l7)
4'b0000:sout1_l7<=4'b1100;
4'b0001:sout1_l7<=4'b0101;
4'b0010:sout1_l7<=4'b0110;
4'b0011:sout1_l7<=4'b1011;
4'b0100:sout1_l7<=4'b1001;
4'b0101:sout1_l7<=4'b0000;
4'b0110:sout1_l7<=4'b1010;
4'b0111:sout1_l7<=4'b1101;
4'b1000:sout1_l7<=4'b0011;
4'b1001:sout1_l7<=4'b1110;
4'b1010:sout1_l7<=4'b1111;
4'b1011:sout1_l7<=4'b1000;
4'b1100:sout1_l7<=4'b0100;
4'b1101:sout1_l7<=4'b0111;
4'b1110:sout1_l7<=4'b0001;
4'b1111:sout1_l7<=4'b0010;

endcase


case(keyout1_l8)
4'b0000:sout1_l8<=4'b1100;
4'b0001:sout1_l8<=4'b0101;
4'b0010:sout1_l8<=4'b0110;
4'b0011:sout1_l8<=4'b1011;
4'b0100:sout1_l8<=4'b1001;
4'b0101:sout1_l8<=4'b0000;
4'b0110:sout1_l8<=4'b1010;
4'b0111:sout1_l8<=4'b1101;
4'b1000:sout1_l8<=4'b0011;
4'b1001:sout1_l8<=4'b1110;
4'b1010:sout1_l8<=4'b1111;
4'b1011:sout1_l8<=4'b1000;
4'b1100:sout1_l8<=4'b0100;
4'b1101:sout1_l8<=4'b0111;
4'b1110:sout1_l8<=4'b0001;
4'b1111:sout1_l8<=4'b0010;

endcase


case(keyout1_r1)
4'b0000:sout1_r1<=4'b1100;
4'b0001:sout1_r1<=4'b0101;
4'b0010:sout1_r1<=4'b0110;
4'b0011:sout1_r1<=4'b1011;
4'b0100:sout1_r1<=4'b1001;
4'b0101:sout1_r1<=4'b0000;
4'b0110:sout1_r1<=4'b1010;
4'b0111:sout1_r1<=4'b1101;
4'b1000:sout1_r1<=4'b0011;
4'b1001:sout1_r1<=4'b1110;
4'b1010:sout1_r1<=4'b1111;
4'b1011:sout1_r1<=4'b1000;
4'b1100:sout1_r1<=4'b0100;
4'b1101:sout1_r1<=4'b0111;
4'b1110:sout1_r1<=4'b0001;
4'b1111:sout1_r1<=4'b0010;

endcase

case(keyout1_r2)
4'b0000:sout1_r2<=4'b1100;
4'b0001:sout1_r2<=4'b0101;
4'b0010:sout1_r2<=4'b0110;
4'b0011:sout1_r2<=4'b1011;
4'b0100:sout1_r2<=4'b1001;
4'b0101:sout1_r2<=4'b0000;
4'b0110:sout1_r2<=4'b1010;
4'b0111:sout1_r2<=4'b1101;
4'b1000:sout1_r2<=4'b0011;
4'b1001:sout1_r2<=4'b1110;
4'b1010:sout1_r2<=4'b1111;
4'b1011:sout1_r2<=4'b1000;
4'b1100:sout1_r2<=4'b0100;
4'b1101:sout1_r2<=4'b0111;
4'b1110:sout1_r2<=4'b0001;
4'b1111:sout1_r2<=4'b0010;

endcase

case(keyout1_r3)
4'b0000:sout1_r3<=4'b1100;
4'b0001:sout1_r3<=4'b0101;
4'b0010:sout1_r3<=4'b0110;
4'b0011:sout1_r3<=4'b1011;
4'b0100:sout1_r3<=4'b1001;
4'b0101:sout1_r3<=4'b0000;
4'b0110:sout1_r3<=4'b1010;
4'b0111:sout1_r3<=4'b1101;
4'b1000:sout1_r3<=4'b0011;
4'b1001:sout1_r3<=4'b1110;
4'b1010:sout1_r3<=4'b1111;
4'b1011:sout1_r3<=4'b1000;
4'b1100:sout1_r3<=4'b0100;
4'b1101:sout1_r3<=4'b0111;
4'b1110:sout1_r3<=4'b0001;
4'b1111:sout1_r3<=4'b0010;

endcase


case(keyout1_r4)
4'b0000:sout1_r4<=4'b1100;
4'b0001:sout1_r4<=4'b0101;
4'b0010:sout1_r4<=4'b0110;
4'b0011:sout1_r4<=4'b1011;
4'b0100:sout1_r4<=4'b1001;
4'b0101:sout1_r4<=4'b0000;
4'b0110:sout1_r4<=4'b1010;
4'b0111:sout1_r4<=4'b1101;
4'b1000:sout1_r4<=4'b0011;
4'b1001:sout1_r4<=4'b1110;
4'b1010:sout1_r4<=4'b1111;
4'b1011:sout1_r4<=4'b1000;
4'b1100:sout1_r4<=4'b0100;
4'b1101:sout1_r4<=4'b0111;
4'b1110:sout1_r4<=4'b0001;
4'b1111:sout1_r4<=4'b0010;

endcase


case(keyout1_r5)
4'b0000:sout1_r5<=4'b1100;
4'b0001:sout1_r5<=4'b0101;
4'b0010:sout1_r5<=4'b0110;
4'b0011:sout1_r5<=4'b1011;
4'b0100:sout1_r5<=4'b1001;
4'b0101:sout1_r5<=4'b0000;
4'b0110:sout1_r5<=4'b1010;
4'b0111:sout1_r5<=4'b1101;
4'b1000:sout1_r5<=4'b0011;
4'b1001:sout1_r5<=4'b1110;
4'b1010:sout1_r5<=4'b1111;
4'b1011:sout1_r5<=4'b1000;
4'b1100:sout1_r5<=4'b0100;
4'b1101:sout1_r5<=4'b0111;
4'b1110:sout1_r5<=4'b0001;
4'b1111:sout1_r5<=4'b0010;

endcase

case(keyout1_r6)
4'b0000:sout1_r6<=4'b1100;
4'b0001:sout1_r6<=4'b0101;
4'b0010:sout1_r6<=4'b0110;
4'b0011:sout1_r6<=4'b1011;
4'b0100:sout1_r6<=4'b1001;
4'b0101:sout1_r6<=4'b0000;
4'b0110:sout1_r6<=4'b1010;
4'b0111:sout1_r6<=4'b1101;
4'b1000:sout1_r6<=4'b0011;
4'b1001:sout1_r6<=4'b1110;
4'b1010:sout1_r6<=4'b1111;
4'b1011:sout1_r6<=4'b1000;
4'b1100:sout1_r6<=4'b0100;
4'b1101:sout1_r6<=4'b0111;
4'b1110:sout1_r6<=4'b0001;
4'b1111:sout1_r6<=4'b0010;

endcase

case(keyout1_r7)
4'b0000:sout1_r7<=4'b1100;
4'b0001:sout1_r7<=4'b0101;
4'b0010:sout1_r7<=4'b0110;
4'b0011:sout1_r7<=4'b1011;
4'b0100:sout1_r7<=4'b1001;
4'b0101:sout1_r7<=4'b0000;
4'b0110:sout1_r7<=4'b1010;
4'b0111:sout1_r7<=4'b1101;
4'b1000:sout1_r7<=4'b0011;
4'b1001:sout1_r7<=4'b1110;
4'b1010:sout1_r7<=4'b1111;
4'b1011:sout1_r7<=4'b1000;
4'b1100:sout1_r7<=4'b0100;
4'b1101:sout1_r7<=4'b0111;
4'b1110:sout1_r7<=4'b0001;
4'b1111:sout1_r7<=4'b0010;

endcase


case(keyout1_r8)
4'b0000:sout1_r8<=4'b1100;
4'b0001:sout1_r8<=4'b0101;
4'b0010:sout1_r8<=4'b0110;
4'b0011:sout1_r8<=4'b1011;
4'b0100:sout1_r8<=4'b1001;
4'b0101:sout1_r8<=4'b0000;
4'b0110:sout1_r8<=4'b1010;
4'b0111:sout1_r8<=4'b1101;
4'b1000:sout1_r8<=4'b0011;
4'b1001:sout1_r8<=4'b1110;
4'b1010:sout1_r8<=4'b1111;
4'b1011:sout1_r8<=4'b1000;
4'b1100:sout1_r8<=4'b0100;
4'b1101:sout1_r8<=4'b0111;
4'b1110:sout1_r8<=4'b0001;
4'b1111:sout1_r8<=4'b0010;

endcase

end






endmodule

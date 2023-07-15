`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 09:24:11
// Design Name: 
// Module Name: tb
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


module tb();

reg [31:0] data [1:0];// turn this to 31 for final proj
reg [63:0] data_out [1:0];


integer file,i=0;
reg clk,rst;
reg[31:0] dout1,dout2;
reg [63:0] din;// turn this to 31 for final proj

wire [3:0] state;
wire gclk;

wire done1,done2;
wire [31:0] dout;
wire [31:0] din_gate;
top uut(clk,gclk,rst,din,din_en,din_gate,dout,done1,done2,state);



initial begin
file<=0;
clk=0;
rst=0;
din=0;



end
always #50 clk=~clk;

initial begin
data[0]=32'h0;
data[1]=32'hFFFFFFFF;
data_out[0]<=0;
data_out[1]<=0;
dout1<=0;
dout2<=0;
  
 //file= $fopen("D:/UPD_MASters/EE 227/Project/SPN/PRESENT6/data.txt","r");
//$readmemh("D:/UPD_MASters/EE 227/Project/SPN/PRESENT6/data.txt",data);
//$fclose(file);  
#1000
#1000
#1000
#1000
#1000
#1000



for (i=0;i<2;i=i+1) begin
#100

din<=data[i];
//#1000
rst=1;
#100

while (done2==0) begin 
if (done1==1)begin
dout1<=dout;
if (din<1) begin
din<=data[i+1];
end
//@(posedge clk);
#50;
end

else begin
@(posedge clk);
//#50;
end

end
//#50
@(posedge clk);

dout2<=dout;
//rst=1;
#100;
data_out[i]<={dout1,dout2};
   
end
file= $fopen("D:/UPD_MASters/EE 227/Project/SPN/PRESENT6/data_out.txt","w");
 



for (i=0;i<2;i=i+1) begin
@(posedge clk);
#50
$fdisplay(file,"%0x",data_out[i]);
end 



$fclose(file);

rst=0;
data_out[0]<=0;
data_out[1]<=0;
din<=0;
dout1<=0;
dout2<=0;
#1000
#1000
#1000


$finish;
end




















endmodule

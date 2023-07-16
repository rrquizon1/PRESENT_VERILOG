`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rhodel Quizon
// 
// Create Date: 21.04.2023 11:09:20
// Design Name: 
// Module Name: top
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


module top(clk,gclk,rst,din,din_en,din_gate,dout,done1,done2,state);
(* gated_clock = "yes" *) input clk;

input rst;
input [31:0] din;// turn this to 31 for final proj

output reg [31:0] dout;
output reg done1;
output reg done2;
output reg din_en;
output gclk;
output reg [3:0] state=initialize;
output wire [31:0] din_gate;
assign gclk=clk&rst;
wire [63:0 ]sout,pout;

reg [63:0] keyout,sin;
reg [63:0] din_key;



// Signal Gating
assign din_gate[0]=din_en&din[0];
assign din_gate[1]=din_en&din[1];
assign din_gate[2]=din_en&din[2];
assign din_gate[3]=din_en&din[3];
assign din_gate[4]=din_en&din[4];
assign din_gate[5]=din_en&din[5];
assign din_gate[6]=din_en&din[6];
assign din_gate[7]=din_en&din[7];
assign din_gate[8]=din_en&din[8];
assign din_gate[9]=din_en&din[9];
assign din_gate[10]=din_en&din[10];
assign din_gate[11]=din_en&din[11];
assign din_gate[12]=din_en&din[12];
assign din_gate[13]=din_en&din[13];
assign din_gate[14]=din_en&din[14];
assign din_gate[15]=din_en&din[15];
assign din_gate[16]=din_en&din[16];
assign din_gate[17]=din_en&din[17];
assign din_gate[18]=din_en&din[18];
assign din_gate[19]=din_en&din[19];
assign din_gate[20]=din_en&din[20];
assign din_gate[21]=din_en&din[21];
assign din_gate[22]=din_en&din[22];
assign din_gate[23]=din_en&din[23];
assign din_gate[24]=din_en&din[24];
assign din_gate[25]=din_en&din[25];
assign din_gate[26]=din_en&din[26];
assign din_gate[27]=din_en&din[27];
assign din_gate[28]=din_en&din[28];
assign din_gate[29]=din_en&din[29];
assign din_gate[30]=din_en&din[30];
assign din_gate[31]=din_en&din[31];


// state machines
parameter initialize=0;
parameter get_data=1;
parameter roundx=2;
parameter sbox=3;
parameter pbox=4;
parameter cont=5;
parameter out1=6;
parameter out2=7;

//counters and other variables
reg [5:0] count ; //round counter
reg[79:0] rkey; // 80 bit key register
reg [63:0] rkeyx;// roundkey
reg [3:0]keysubin; //input to subin
reg [4:0]rkeyop1; // [19:15] xor count
reg [14:0]rkeyop2; // [14:0]
reg [3:0] out1_count;//
reg [3:0] out2_count;//

wire [3:0]keysubout;// keyschedule loop
reg [63:0] dout_buff; //dout buffer

// Instantiations
sbox u0(sin,sout); //sbox connections
pbox u1(sout,pout); //pbox connection
mini_sub u2(keysubin,keysubout); //mini_subconnection




always @(posedge gclk or negedge rst )
begin
if ((rst==1'b0)) 
    begin
        state<=initialize;
        dout<=0;
         
end

else begin

case(state)
initialize:begin
    rkey<=80'h0;
   // rkey<=80'hFFFFFFFFFFFFFFFFFFFF;
    state<=get_data;
    rkeyop1<=5'b00001;
    count<=5'b00001;
    out1_count<=0;
    out2_count<=0;
    done1<=0;
    done2<=0;
    dout<=0;
    din_en<=1;
 
end


get_data:begin
    din_key<=din_gate;
    rkeyx<=rkey[79:16];
    rkey<={rkey[18:0],rkey[79:19]};
    state<=roundx;
    din_en<=0;
end

roundx:begin
    keysubin<=rkey[79:76];
    if (count==32)begin
    dout_buff<=din_key^rkeyx;
    state<=out1;


    end
    else begin
    keyout<=rkeyx^din_key;
   
    state<=sbox;
    end

end 

sbox:begin

    rkey<={keysubout,rkey[75:0]};
    sin<=keyout;
    state<=pbox;
    rkeyop1<=rkey[19:15]^count;
    rkeyop2<=rkey[14:0];
end

pbox:begin

    rkey<={rkey[79:20],(rkeyop1),rkeyop2};
    state<=cont;
    count<=count+1;
    din_key<=pout;


end
cont:begin
    rkeyx<=rkey[79:16];
    rkey<={rkey[18:0],rkey[79:19]};
    state<=roundx;
end

out1:begin
    
    if (out1_count<1) begin
    state<=out1;
    dout<=dout_buff[63:32];
    out1_count<=out1_count+1;
    done1<=1;
    end
    
    else begin
    done1<=0;
    state<=out2;
    
    end
end

out2:begin
    if (out2_count<1) begin
    state<=out2;
    dout<=dout_buff[31:0];
    out2_count<=out2_count+1;
    done2<=1;
    end
    
    else begin
    done2<=0;
    state<=initialize;
    
   
    end
end

endcase


end

end


endmodule

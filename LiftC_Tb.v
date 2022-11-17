`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2022 02:18:00
// Design Name: 
// Module Name: LiftC_Tb
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


module LiftC_Tb();
reg clk,reset;
reg [6:0] req_floor;
wire [1:0] stop,door,Up,Down; 
wire [6:0] current_floor;
wire [6:0] max_request, min_request;
wire [63:0] requests;

LiftC dut(.clk(clk),.reset(reset),.req_floor(req_floor),.stop(stop),.door(door),.Up(Up),.Down(Down),.current_floor(current_floor), .max_request(max_request), .min_request(min_request), .requests(requests));

initial begin
clk=1'b0;
reset = 1;
#10;
reset=0;
req_floor=27;
#200
req_floor=3;
#200
req_floor=15;
#60
req_floor=10;
#60
req_floor=6;
#40
req_floor=20;
#60
req_floor=16;
#60
req_floor=17;
end
always #5 clk=~clk;
endmodule






`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2022 02:16:57
// Design Name: 
// Module Name: LiftC
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


module LiftC(clk,reset,req_floor,stop,door,Up,Down,current_floor,requests,max_request,min_request);

input clk,reset;

input [6:0] req_floor;
output reg[1:0] door;
output reg[6:0] max_request;
output reg[6:0] min_request;
output reg[1:0] Up;
output reg[1:0] Down;
output reg[1:0] stop;
output reg [6:0] current_floor ; //current floor
output reg[63:0] requests;

always @(req_floor)
begin
requests[req_floor] = 1;
end

always @(req_floor)
begin
if(max_request<req_floor  )
begin
max_request <= req_floor;
end
if(min_request>req_floor )
begin
min_request <= req_floor;
end
end

always @(current_floor)
begin
if(requests[current_floor]==1)
begin
stop=1;
door=1;
requests[current_floor]=0;
end
end

always @(req_floor)
begin
if(requests[max_request]==0 && req_floor>current_floor)
begin
max_request=req_floor;
end
if(requests[min_request]==0 && req_floor<current_floor)
begin
min_request=req_floor;
end
end

always @ (posedge clk)
begin

if(reset)
begin
current_floor<=0;
stop<=1;
door<=1; //door open
Up<=1; //going up
Down<=0; //not going down
max_request = 0;
min_request = 63;
requests = 0;
end

else if ( requests == 0  && !reset)
begin
current_floor<=current_floor;
end

else
begin
if(max_request < 63)
begin

if(min_request < current_floor && Down==1 )
begin
current_floor<=current_floor-1;
door<=0;
stop<=0;
end

else if (max_request > current_floor && Up==1 )
begin
current_floor <= current_floor+1;
door<=0;
stop<=0;
end

else if(max_request == current_floor )
begin
if(requests[current_floor]==1)
begin
door<=1;
stop<=1;
end
Up<=0;
Down<=1;
requests[current_floor]=0;
end

else if(min_request == current_floor )
begin
if(requests[current_floor]==1)
begin
door<=1;
stop<=1;
end
door<=1;
stop<=1;
Up<=1;
Down<=0;
requests[current_floor]=0;
end
end
end
end

endmodule





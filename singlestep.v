


module singlestep(
clk50,
trigger,
step
);


input clk50;
input trigger;
output reg step;

reg [4:0] delay=6;
reg [4:0] ctr=6;

reg trigd=0;

always @(posedge clk50)
begin

if(ctr<delay)
begin
 ctr<=ctr+1; 
 step<=0;
 
end
else begin
 step<=1;
 
 if(!trigger)begin 
  if(!trigd)begin 
   ctr<=0;
   trigd=1;
  end
  
 end
 else trigd=0;
end


end



endmodule
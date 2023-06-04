
module allgates_tb();
reg t_a,t_b;
wire ty1,ty2,ty3,ty4,ty5,ty6,ty7;

allgates dut(.a(t_a), .b(t_b), .y1(ty1), .y2(ty2), .y3(ty3), .y4(ty4), .y5(ty5), .y6(ty6), .y7(ty7));

initial begin
t_a=0;
t_b=0;
#10

t_a=0;
t_b=1;
#10

t_a=1;
t_b=0;
#10

t_a=1;
t_b=1;
#10

$stop;
end 
endmodule

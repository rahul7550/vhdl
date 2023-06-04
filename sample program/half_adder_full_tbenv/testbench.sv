`include "interface.sv"
`include "test"
`include "design.sv"

module tb_top();
 intf i_intf();
 test t1(i_intf);
 main h1(.a(i_intf.a), .b(i_intf.b), .sum(i_intf.sum), 
 .carry(i_intf.carry));
endmodule  

`include "interface.sv"
`include "environment.sv"
module test(intf_ i_intf);
environment env;

initial 
	begin 
	env =new(i_intf);
	env.run();
	end 
endmodule


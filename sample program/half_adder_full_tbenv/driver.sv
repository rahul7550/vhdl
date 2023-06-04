//`include "interface.sv"
//`include "transaction.sv"
class driver;
virtual intf vif;
mailbox gen2drv;
function new( virtual intf vif, mailbox gen2drv);
	this.gen2drv = gen2drv;
	this.vif =vif;
endfunction

task main();
transaction trans;
repeat(1)
begin 
	gen2drv.get(trans);
	vif.a = trans.a;
	vif.b = trans.b;
	trans.sum = vif.sum;
	trans.carry = vif.carry;
	trans.display("driver");
end 
endtask 
endclass

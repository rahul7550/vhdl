//`include "interface.sv"
//`include "transaction.sv"
class monitor;
virtual intf vif;
mailbox mon2scb;
function new(virtual intf vif, mailbox mon2scb);
	this.vif=vif;
	this.mon2scb=mon2scb;
endfunction

task main();
transaction trans;
trans =new();
begin
#3;
	repeat(1)
	trans.a =vif.a;
	trans.b =vif.b;	
	trans.sum =vif.sum;
	trans.carry =vif.carry;
	mon2scb.put(trans);
	trans.display("monitor");
end 
endtask 
endclass





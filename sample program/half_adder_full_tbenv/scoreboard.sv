//`include "transaction.sv"
class scoreboard;
mailbox mon2scb;
transaction trans= new();
function new(mailbox mon2scb);
	this.mon2scb=mon2scb;
endfunction
//trans =new();
task main();
begin
	repeat(1)
	mon2scb.get(trans);
	if(((trans.a ^ trans.b)==(trans.sum)) && ((trans.a & trans.b)==(trans.carry) ) )
	$display("PASS");
	else
	$display("FAIL");
	trans.display("scoreboard");
end 
endtask
endclass


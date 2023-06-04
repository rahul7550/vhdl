module fk();
initial begin 
#2
$display("start");
fork
	#3
	$display ("three");
	#2
	$display ("two");
	#1
	$display ("one");
join_none
$display("end");
end
endmodule
	
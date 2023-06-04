class pkg;
	rand bit [2:0] data;
endclass


module main();
	initial begin
		pkg p1;
		p1 = new ();
		for (int i=0; i<=10; i++)begin
			p1.randomize();
			$display("itr= %d, data=%d",i,p1.data);
		end 
	end 
endmodule

class abc;
	randc bit[2:0] data;
	constraint c1 {data >2; data <=9;};
endclass

module main();
	initial begin
		abc p1;
		p1 = new ();
		for (int i=0; i<=10; i++)begin
			p1.randomize();
			$display("itr= %d, data=%d",i,p1.data);
		end 
	end 
endmodule

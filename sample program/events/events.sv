module events;
	event a;
	initial begin
		#49 -> a;
		$display ("[%0t]: thread 1 triggered a", $time);
	end 
	initial begin
		$display ("[%0t]: thread 2 waiting for trigger a", $time);
		@(a);
		$display ("[%0t]: thread 2 triggered a", $time);
	end 
	initial begin
		$display ("[%0t]: thread 3 waiting for trigger a", $time);
		wait(a.triggered);
		$display ("[%0t]: thread 3 triggered a", $time);
	end 
endmodule
		

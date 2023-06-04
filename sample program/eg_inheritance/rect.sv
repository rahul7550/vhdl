

//======================================================================================
//class1
class math1;
	int len;
	int bre;
	int pmeter;
	/*function new(int len, int bre);
		this.len =len;
		this.bre=bre;
	endfunction 
	*/
	
	function int  perimeter();
		pmeter=2*(len+bre);
		$display("perimeter=%0d",pmeter);
		return pmeter;
	endfunction
endclass


//====================================================================================
//class 2


class math2 extends math1;
	int area;
/*	function new(int area);
		super.new();
		this.area=area;
	endfunction
	*/
	
	function void ar();
		area= len*bre;
		$display("area=%0d",area);
	endfunction
	
	function int tl();
		int z;
		z=super.perimeter();
		return z;
	endfunction 

endclass


//====================================================================================
//main module


module main;
	int y;
	math2 rect1;
initial begin
	rect1	= new();
	rect1.len=10;
	rect1.bre=20;
	rect1.ar();
	y=rect1.tl();
end
endmodule
	
	

		
	

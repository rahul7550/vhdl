
module f_2;
	
    int a=4;
    int b=5;
	int c;
	int d;
  initial begin
    $display("a=%0d, b=%0d", a, b);
	c= sum(a,b);
	$display("sum(a,b)(%0d*%0d)= %0d",a,b,c);
	$display("a=%0d, b=%0d", a, b);
	d= mul(a,b);
    $display("mul(a,b)(%0d+%0d)= %0d",a,b,d);
	$display("a=%0d, b=%0d", a, b);
    
  end 
  
  function byte sum(int a,int b);
    sum=a+b;
  endfunction
  
  function automatic byte mul(ref int a,b);
    b=a*b;
    return b;
  endfunction
  
  
endmodule
    
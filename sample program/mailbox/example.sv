
module main;
mailbox mbx = new(2);
int a,b, sum,pro;
task add;
	a=5;
	mbx.put(a);
	b=6;
	mbx.put(b);
	sum  =a+b;
	$display($time ,"sum =%0d",sum);
endtask

task mul;
	mbx.get(a);
	mbx.get(b);
	pro=a*b;
	$display($time ,"product =%0d",pro);
endtask


  initial begin
    fork                                  
      add();                    
      mul();  
    join
  end
endmodule


module f_1;
int s;	
  initial begin
     s =sum(3,4);
    $display("sum(3,4)= %0d", s);
    $display("sum(3,4)= %0d", sum(3,4));
    $display("mul(3,4)= %0d", mul(3,4));
  end 
  function byte sum (int a,int b);
    sum =a+b;
  endfunction 
  
  
  function int mul(int a, b);
    return a*b ;
  endfunction
endmodule 


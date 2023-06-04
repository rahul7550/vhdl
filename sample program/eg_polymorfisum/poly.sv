// Code your testbench here
// or browse Examples
class A;
  virtual function void prt();
    $display("function a");
  endfunction
endclass


class B extends A;
  function void prt();
    $display("function b");
  endfunction 
endclass



class C extends A;
  function void prt();
    $display("function c");
  endfunction 
endclass

module main();
  A a;
  B b;
  C c;
  initial begin 
  a=new();
  b=new();
  c=new();
  
    a.prt();
    b.prt();
    c.prt();
    //b=c;
    a.prt();
    b.prt();
    c.prt();
  end 
endmodule
 
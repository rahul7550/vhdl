class transaction;
	rand bit a, b;
	bit sum ,carry;
function void display(string name);
$display("-----------------------------------");
$display("%s",name);
$display("-----------------------------------");
$display("a=%0d ,b=%0d", a, b);
$display("sum =%0d, carry =%d", sum, carry);
$display("-----------------------------------");
endfunction
endclass


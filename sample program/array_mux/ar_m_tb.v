module ar_m_tb();
reg a,b,c,clk;
reg [7:0] q;
ar_m sut(.a(a), .b(b), .c(c), .q(q), .clk(clk));
always #1 clk =~clk;

initial begin
a=0; b=0; c=0;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=0; b=0; c=1;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=0; b=1; c=0;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=0; b=1; c=1;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=1; b=0; c=0;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=1; b=0; c=1;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=1; b=1; c=0;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
a=1; b=1; c=1;
#2
$display ("a=%0d, b=%0d, c=%0d, q=%0d",a,b,c,q);
end 

endmodule




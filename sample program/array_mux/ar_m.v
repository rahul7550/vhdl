// Code your design heremodu
module ar_m(
  input a, b, c,
  output reg [7:0] q
);

  parameter ARRAY_SIZE = 8;
  reg [7:0] my_array [0:ARRAY_SIZE-1];
  integer i;
	
  initial begin
    // Initialize the array with some values
    for( i = 0; i < ARRAY_SIZE; i = i + 1)
      begin
      my_array[i] = 10 ;
    end
  end

  always @(a,b,c) 
begin
    // Mux
    case ({a, b, c})
      3'b000: q <= my_array[0];
      3'b001: q <= my_array[1];
      3'b010: q <= my_array[2];
      3'b011: q <= my_array[3];
      3'b100: q <= my_array[4];
      3'b101: q <= my_array[5];
      3'b110: q <= my_array[6];
      3'b111: q <= my_array[7];
    endcase
end
endmodule
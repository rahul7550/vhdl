module array_example;
integer i;
parameter ARRAY_SIZE = 8; // Define the size of the array
reg[0:7] my_array [0:ARRAY_SIZE-1]; // Declare an 8-bit array of size ARRAY_SIZE

initial begin
// Initialize the array with some values
for ( i = 0; i < ARRAY_SIZE; i = i + 1) begin
my_array[i] = i * 2;
end

// Print the values of the array
$display("Values of the array:");
for (i = 0; i < ARRAY_SIZE; i = i + 1) begin
$display("my_array[%0d] = %0d", i, my_array[i]);
 end
end
endmodule
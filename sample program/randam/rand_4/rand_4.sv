//randamising the array
class pkt;
        rand int data[7];
//        constraint m { this.data<5;};
endclass


module main;
        initial begin
                pkt p1=new();
                for (int i =0; i<7; i++)
                begin
                        p1.randomize();
                        $display("array=%0d", p1.data[i]);
                end
        end
endmodule


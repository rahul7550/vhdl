`include "transaction.sv"
 class generator;
transaction trans;
    
    mailbox gen2drv;
    function new(mailbox gen2drv);
        this.gen2drv = gen2drv;
    endfunction
    task main();
trans =new();

        repeat(3)
	 begin
          
            trans.randomize();
//	trans.a=1;
//	trans.b=1;
	trans.display("Generator");
            gen2drv.put(trans);
        end
    endtask endclass

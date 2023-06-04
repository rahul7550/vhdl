
module mailbox_example();
  mailbox  mb = new(3);
  int value;
  string name;
 
  task process_A();       
	value = 5;
    name = "STRING";
    mb.put(value);
    $display($time,"Put data = %0d", value);
    mb.put("STRING");
    $display($time,"Put data = %s", name);
  endtask

  task process_B();                      
    mb.get(value);
    $display($time,"Retrieved data = %0d", value);
    mb.get(name);
    $display($time,"Retrieved data = %s", name);
  endtask




   initial begin
    fork                                  
      process_A();                    
      process_B();  
    join
  end
endmodule
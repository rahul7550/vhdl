class mynetpkg;
  string sour_add;
  string rec_add;
  string pkg_type;
  int data;
  bit[1:0] crc;
  
  function new( string sour_add, string rec_add, string pkg_type, int data, bit[1:0] crc);
    this.sour_add = sour_add;
    this.rec_add = rec_add;
    this.pkg_type = pkg_type;
    this.data = data;
    this.crc = crc;
  endfunction
 
  function void show_pkg();
    $display("sour_add=%s | rec_add= %s | pkg_type=%s | data=%0d | crc= %0d |", this.sour_add, this.rec_add, this.pkg_type, this.data, this.crc);
  endfunction
endclass

module test;
  mynetpkg pkg1, pkg2;
  
  initial begin
    pkg1 = new("hp001", "hp002", "tcp_ip", 56, 2);
    pkg1.show_pkg();
    pkg2 = new("dell001", "dell002", "udp", 77, 3);
    pkg2.show_pkg();
  end
endmodule

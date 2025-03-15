// dff_tb.sv
module dff_tb;
timeunit 1ns;
timeprecision 1ps;

  logic clk = 0, d, q;

  // Instantiate DUT
  dff dff_inst (.*);

  // Clock generation
  always #5 clk = ~clk;

  // Assertions
  // ----------------------------------------
  // Using |=> (implication)
  property p_implication;
    @(posedge clk) d |=> q;
  endproperty
  assert_implication: assert property (p_implication);

  
  initial begin
    // Test 1:
  /*  d = 1;

    #10;  // After 1 cycle, q becomes 1
    #10;  // Hold for another cycle

    // Test 2
    d = 0;
*/  #10;
    d = 1;

    #10;  // After 1 cycle, q becomes 1
    #10;  // Hold for another cycle

    // Test 2
    d = 0;
    #10;
    $finish;
  end
endmodule

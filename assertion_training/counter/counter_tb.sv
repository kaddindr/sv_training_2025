// tb.sv
module counter_tb;
timeunit 1ns;
timeprecision 1ps;

  logic clk = 0, rst_n = 0, enable = 0;
  logic [2:0] count;

  // Instantiate DUT
  counter dut (.*);

  // Bind assertions to DUT instance
  bind counter counter_assertions assertions_inst (
    .clk    (clk),
    .rst_n  (rst_n),
    .enable (enable),
    .count  (count)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize
    rst_n = 0;
    #20 rst_n = 1;

    // Test 1: Count with enable=1
    enable = 1;
    repeat(5) @(negedge clk);

    // Test 2: Hold with enable=0
    enable = 0;
    repeat(2) @(negedge clk);

    // Test 3: Reset during operation
    rst_n = 0;
    #10 rst_n = 1;

    // Finish
    #100 $finish;
  end
endmodule

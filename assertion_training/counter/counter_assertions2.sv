// counter_assertions.sv
module counter_assertions (
  input logic clk, rst_n, enable,
  input logic [2:0] count
);

timeunit 1ns;
timeprecision 1ps;
  // Property 1: Reset sets count to 0
  property p_reset;
    @(posedge clk) disable iff (!rst_n)
    !rst_n |=> (count == 0);
  endproperty
  assert_reset: assert property (p_reset);

  // Property 2: Count increments when enabled
  property p_increment;
    @(posedge clk) disable iff (!rst_n)
    (rst_n && enable) |=> (count == ($past(count) + 1));
  endproperty
  assert_increment: assert property (p_increment);

  // Property 3: Count holds when disabled
  property p_hold;
    @(posedge clk) disable iff (!rst_n)
    (rst_n && !enable) |=> (count == $past(count));
  endproperty
  assert_hold: assert property (p_hold);

  // Coverage: Track enable/disable cycles
  covergroup cg_enable;
    coverpoint enable {
      bins en = {1};
      bins dis = {0};
    }
  endgroup
  cg_enable cov_enable = new();
  always @(posedge clk) cov_enable.sample();
endmodule

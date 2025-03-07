// dff.sv
module dff (
  input logic clk, d,
  output logic q
);
timeunit 1ns;
timeprecision 1ps;
  always_ff @(posedge clk) begin
    q <= d;  // q is d delayed by 1 cycle
  end
endmodule
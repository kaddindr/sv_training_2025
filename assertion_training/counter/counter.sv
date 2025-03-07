// counter.sv
module counter (
  input logic clk, rst_n, enable,
  output logic [2:0] count
);

timeunit 1ns;
timeprecision 1ps;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) count <= 3'b0;
    else if (enable) count <= count + 1;
  end
endmodule

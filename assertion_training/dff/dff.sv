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



// //one way
// assert( q == $past(d));

/*
//why can't we do it like this
assert( q <=  d); THIS IS A TRICK QUESTION, there is no concept of NBA
    inside assert statement. assert treats it like less than equal to sign
*/
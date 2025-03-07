module rose;

timeunit 1ns;
timeprecision 1ps;

bit clk;
logic a;
logic b;


initial
    clk = 0;

always
    #5 clk = ~clk;

initial
begin
        b = 1; 
    #10 a = 1;

    repeat(3) @(negedge clk);
        b = 0;
    repeat(2) @(negedge clk);
    $finish;
end

//needs two clk egdges to see if signal 'a' rose
always @(posedge clk)
    assert($rose(a));

//needs two clk edges to evaluate signal 'b' stable
always @(posedge clk)
    assert($stable(b));


endmodule

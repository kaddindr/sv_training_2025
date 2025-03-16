module ripple_carry_adder_tb;
timeunit 1ns;
timeprecision 1ps;

	reg [3:0] in0;
	reg [3:0] in1;
	wire [3:0] out;
	wire cout;
    

	rca rca_INST (.in0(in0), .in1(in1), .out(out), .cout(cout));

	initial begin
        #10
		in0 = 4'd4; in1 = 4'd4; 
        #10
		in0 = 4'd3; in1 = 4'd3; 
        #10
		in0 = 4'd7; in1 = 4'd7; 
        #10
		in0 = 4'd5; in1 = 4'd4; 
        #10
		in0 = 4'd15; in1 = 4'd1; 
        #10
        $finish;
    end
    
    always@*
        IMMEDIATE_ASSERT: #1 assert({cout,out} == in0+in1);

    endmodule

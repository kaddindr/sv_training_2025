
rca:
	vcs -full64 -sverilog -l rca.log adder.sv rca.sv rca_tb.sv -debug_access+all +vcs+vcdpluson -assert dve
	./simv -vpd_file rca.vpd -assert vacuous
	dve -full64 -vpd rca.vpd&


clean:
	rm -rf *.rc *.conf verdiLog/ simv simv.daidir/ csrc/ *.log ucli.key DVEfiles *.fsdb *.vpd *.vdb

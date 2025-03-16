
dff:
	vcs -full64 -sverilog -l dff.log dff.sv dff_tb.sv -debug_access+all +vcs+vcdpluson
	./simv -assert vacuous -vpd_file dff.vpd
	dve -full64 -vpd dff.vpd&


dff2:
	vcs -full64 -sverilog -l dff2.log dff.sv dff_tb2.sv -debug_access+all +vcs+vcdpluson
	./simv -assert vacuous -vpd_file dff2.vpd
	dve -full64 -vpd dff2.vpd&

dff3:
	vcs -full64 -sverilog -l dff3.log dff.sv dff_tb3.sv -debug_access+all +vcs+vcdpluson
	./simv -assert vacuous -vpd_file dff3.vpd
	dve -full64 -vpd dff3.vpd&

clean:
	rm -rf *.rc *.conf verdiLog/ simv simv.daidir/ csrc/ *.log ucli.key DVEfiles *.fsdb *.vpd *.vdb

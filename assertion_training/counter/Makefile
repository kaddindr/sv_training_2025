


counter:
	vcs -full64 -R -sverilog -l counter.log counter.sv counter_assertions.sv counter_tb.sv -debug_access+all +vcs+vcdpluson -assert dve
	#dve -full64 -vpd vcdplus.vpd&


clean:
	rm -rf *.rc *.conf verdiLog/ simv simv.daidir/ csrc/ *.log ucli.key DVEfiles *.fsdb *.vpd *.vdb

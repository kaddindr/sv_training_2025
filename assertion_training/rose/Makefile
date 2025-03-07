

rose:
	vcs -full64 -R -sverilog -l rose.log rose.sv -debug_access+all +vcs+vcdpluson -assert dve
	#dve -full64 -vpd vcdplus.vpd&


clean:
	rm -rf *.rc *.conf verdiLog/ simv simv.daidir/ csrc/ *.log ucli.key DVEfiles *.fsdb *.vpd *.vdb

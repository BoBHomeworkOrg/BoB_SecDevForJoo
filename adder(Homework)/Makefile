rca16_tb : rca16.vhd rca16_tb.vhd
	ghdl -a fa.vhd
	ghdl -a fa_tb.vhd
	ghdl -e fa_tb
	ghdl -a $^
	ghdl -e $@
	ghdl -r $@ --stop-time=800ns --wave=$@.ghw
	gtkwave $@.ghw

csa16_tb : csa16.vhd csa16_tb.vhd
	ghdl -a fa.vhd
	ghdl -a fa_tb.vhd
	ghdl -e fa_tb
	
	ghdl -a mux2_1.vhd
	ghdl -a mux2_1_tb.vhd
	ghdl -e mux2_1_tb

	ghdl -a $^
	ghdl -e $@
	ghdl -r $@ --stop-time=1us --wave=$@.ghw
	gtkwave $@.ghw

clean :
	rm work-obj93.cf *.ghw
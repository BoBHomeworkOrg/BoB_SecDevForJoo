mux2_1_tb : mux2_1.vhd mux2_1_tb.vhd
	ghdl -a $^
	ghdl -e $@
	ghdl -r $@ --stop-time=1600ns --wave=$@.ghw
	gtkwave $@.ghw

fa_tb : fa.vhd fa_tb.vhd
	ghdl -a $^
	ghdl -e $@
	ghdl -r $@ --stop-time=1600ns --wave=$@.ghw
	gtkwave $@.ghw

clean :
	rm work-obj93.cf *.ghw
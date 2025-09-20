clean:
	rm -rf a.out vedicmultiplier.vcd proton.log* proton.cmd*
sim:
	iverilog -o a.out test/test.v  src/adder*.v src/vedic*.v src/halfAdder.v ; ./a.out
	gtkwave vedicmultiplier.vcd

syn: create
	cd workarea ; yosys -s ../scripts/synthesis.tcl ; cat vedic.vg  | egrep -v "\(\*" > vedic_filter.vg


create:
		mkdir workarea

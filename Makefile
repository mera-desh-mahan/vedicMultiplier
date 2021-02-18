clean:
	rm -rf a.out vedicmultiplier.vcd
sim:
	iverilog -o a.out test/test.v  src/adder*.v src/vedic*.v src/halfAdder.v ; ./a.out
	gtkwave vedicmultiplier.vcd

syn:
	cd workarea ; yosys -s ../scripts/synthesis.tcl

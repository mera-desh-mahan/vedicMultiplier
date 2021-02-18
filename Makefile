sim:
	iverilog -o a.out test/test.v  src/adder*.v src/vedic*.v src/halfAdder.v ; ./a.out
	gtkwave vedicmultiplier.vcd

syn:
	yosys -s synthesis.tcl

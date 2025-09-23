clean:
	rm -rf a.out vedicmultiplier.vcd proton.log* proton.cmd* workarea

sim: clean
	iverilog -o a.out test/test.v  src/adder*.v src/vedic*.v src/halfAdder.v ; ./a.out
	gtkwave vedicmultiplier.vcd

syn: create
	cd workarea ; yosys -s ../scripts/synthesis.tcl ; cat vedic.vg  | egrep -v "\(\*" > vedic_filter.vg
	#cd workarea ; yosys -s ../scripts/sf4_synthesis.tcl ; cat vedic.vg  | egrep -v "\(\*" > vedic_filter.vg

cpnr:
	cd workarea ; proton_hier --cleanlog --nolog -f ../scripts/nangate_cpnr.tcl

create: clean
		mkdir workarea

app:
	apptainer shell --bind /tech:/tech --bind /proj_pd:/proj_pd --bind /home/rsrivastava/:/home/rsrivastava/  ~/podman/pysparkcad.sif

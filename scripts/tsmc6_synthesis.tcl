#TCL written from proton verion-291
read_verilog ../src/adder12.v
read_verilog ../src/adder16.v
read_verilog ../src/adder24.v
read_verilog ../src/adder4.v
read_verilog ../src/adder6.v
read_verilog ../src/adder8.v
read_verilog ../src/vedic_8x8.v
read_verilog ../src/vedic_4x4.v
read_verilog ../src/vedic_2x2.v
read_verilog ../src/vedic_16x16.v
read_verilog ../src/halfAdder.v

hierarchy -check -top vedic_16x16

proc; opt; fsm; opt; memory; opt

# mapping to internal cell library
techmap; opt

# mapping flip-flops to mycells.lib
dfflibmap -liberty ../../library/tsmc6/tcbn06_bwph240l11p57cpd_base_svtffgnp_0p715v_125c_cbest_CCbest_T_em_ccs.lib
# mapping logic to mycells.lib
abc -liberty ../../library/tsmc6/tcbn06_bwph240l11p57cpd_base_svtffgnp_0p715v_125c_cbest_CCbest_T_em_ccs.lib

# cleanup
clean

# write synthesized design
write_verilog vedic.vg


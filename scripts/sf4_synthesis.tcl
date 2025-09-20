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
#dfflibmap -liberty ../../library/sf4/ln04lpp_sc_s6p25t_flk_slvt_c54l06_tt_nominal_max_0p7500v_85c.lib_ccs_tn_lvf
dfflibmap -liberty /proj_pd/ML4PD/dreamplace/libs/ln04lpp_sc_s6p25t_flk_slvt_c54l06_tt_nominal_max_0p7500v_85c_lvf_dth_parsed.lib_ccs_tn
# mapping logic to mycells.lib
abc -liberty /proj_pd/ML4PD/dreamplace/libs/ln04lpp_sc_s6p25t_flk_slvt_c54l06_tt_nominal_max_0p7500v_85c_lvf_dth_parsed.lib_ccs_tn

# cleanup
clean

# write synthesized design
write_verilog vedic.vg


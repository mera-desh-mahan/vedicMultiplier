#TCL written from proton verion-291
read_verilog /home/ubuntu/vedicMultiplier/src/adder12.v
read_verilog /home/ubuntu/vedicMultiplier/src/adder16.v
read_verilog /home/ubuntu/vedicMultiplier/src/adder24.v
read_verilog /home/ubuntu/vedicMultiplier/src/adder4.v
read_verilog /home/ubuntu/vedicMultiplier/src/adder6.v
read_verilog /home/ubuntu/vedicMultiplier/src/adder8.v
read_verilog /home/ubuntu/vedicMultiplier/src/vedic_8x8.v
read_verilog /home/ubuntu/vedicMultiplier/src/vedic_4x4.v
read_verilog /home/ubuntu/vedicMultiplier/src/vedic_2x2.v
read_verilog /home/ubuntu/vedicMultiplier/src/vedic_16x16.v
read_verilog /home/ubuntu/vedicMultiplier/src/halfAdder.v

hierarchy -check -top vedic_16x16

proc; opt; fsm; opt; memory; opt

# mapping to internal cell library
techmap; opt

# mapping flip-flops to mycells.lib
dfflibmap -liberty /tech/NANGATE/NangateOpenCellLibrary_PDKv1_2_v2008_10_slow_conditional_ecsm.lib
# mapping logic to mycells.lib
abc -liberty /tech/NANGATE/NangateOpenCellLibrary_PDKv1_2_v2008_10_slow_conditional_ecsm.lib

# cleanup
clean

# write synthesized design
write_verilog vedic.vg


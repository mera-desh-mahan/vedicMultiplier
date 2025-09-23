read_lef -lef /home/rsrivastava/potato/TESTS/library/NangateOpenCellLibrary_PDKv1_2_v2008_10.lef -tech also
read_verilog -v vedic_filter.vg
elaborate
set_floorplan_parameters -WIDTH 500 -HEIGHT 500
set_floorplan -force

create_net -type power -name VDD
create_net -type ground -name GND
addPowerRing -offset {0.2,0.2} -spacing 0.5 -width 1 -layerH metal3 -layerV metal2 -nets {VDD,GND}
addPowerRows -width 0.5 -layer metal1 -nets {VDD,GND}
addPowerVias

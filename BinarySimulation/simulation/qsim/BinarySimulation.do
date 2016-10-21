onerror {quit -f}
vlib work
vlog -work work BinarySimulation.vo
vlog -work work BinarySimulation.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BinarySimulation_vlg_vec_tst
vcd file -direction BinarySimulation.msim.vcd
vcd add -internal BinarySimulation_vlg_vec_tst/*
vcd add -internal BinarySimulation_vlg_vec_tst/i1/*
add wave /*
run -all

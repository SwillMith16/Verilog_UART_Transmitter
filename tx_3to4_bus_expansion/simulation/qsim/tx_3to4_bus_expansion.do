onerror {quit -f}
vlib work
vlog -work work tx_3to4_bus_expansion.vo
vlog -work work tx_3to4_bus_expansion.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tx_3to4_bus_expansion_vlg_vec_tst
vcd file -direction tx_3to4_bus_expansion.msim.vcd
vcd add -internal tx_3to4_bus_expansion_vlg_vec_tst/*
vcd add -internal tx_3to4_bus_expansion_vlg_vec_tst/i1/*
add wave /*
run -all

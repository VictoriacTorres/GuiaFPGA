onerror {quit -f}
vlib work
vlog -work work laboratorio.vo
vlog -work work laboratorio.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.D_FF_vlg_vec_tst
vcd file -direction laboratorio.msim.vcd
vcd add -internal D_FF_vlg_vec_tst/*
vcd add -internal D_FF_vlg_vec_tst/i1/*
add wave /*
run -all

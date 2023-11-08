transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/torre/OneDrive/Escritorio/GuiaFPGA/ej_combinacional/ej_combinacional.vhd}

vcom -93 -work work {C:/Users/torre/OneDrive/Escritorio/GuiaFPGA/ej_combinacional/ej_comb_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  ej_comb_testbench

add wave *
view structure
view signals
run -all

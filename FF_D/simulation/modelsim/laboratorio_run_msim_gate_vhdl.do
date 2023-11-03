transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {laboratorio_7_1200mv_85c_slow.vho}

vcom -93 -work work {D:/2. TYDD 2/tb_D_FF.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=laboratorio_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_D_FF

add wave *
view structure
view signals
run -all

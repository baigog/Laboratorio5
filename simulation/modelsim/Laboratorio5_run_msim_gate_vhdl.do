transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Laboratorio5_7_1200mv_85c_slow.vho}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio5/Mem_FSM_TB.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /memo=Laboratorio5_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  Mem_FSM_TB

add wave *
view structure
view signals
run -all

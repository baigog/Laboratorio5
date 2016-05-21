transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio5/Mem.vhd}
vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio5/Mem_FSM.vhd}

vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio5/Mem_FSM_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Mem_FSM_TB

add wave *
view structure
view signals
run -all

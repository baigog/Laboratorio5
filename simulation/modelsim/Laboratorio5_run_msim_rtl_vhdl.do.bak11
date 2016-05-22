transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

<<<<<<< HEAD
vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio5/Mem.vhd}
vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio5/Parity.vhd}

vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio5/Parity_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Parity_TB
=======
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio5/RS232_FSM.vhd}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio5/RS232_FSM_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  RS232_FSM_TB
>>>>>>> Mochi

add wave *
view structure
view signals
run -all

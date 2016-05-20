transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio5/LCD_CONTR.vhd}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio5/LCD_CONTR_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  LCD_CONTR_TB

add wave *
view structure
view signals
run -all

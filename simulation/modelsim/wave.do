onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /laboratorio5_tb/Switch
add wave -noupdate /laboratorio5_tb/Reset
add wave -noupdate /laboratorio5_tb/Botones
add wave -noupdate /laboratorio5_tb/Fsel
add wave -noupdate /laboratorio5_tb/Rx_out
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/FSM/CS
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/FREQ_SEL/out1
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/MEMORIA/address
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/MEMORIA/data_out
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/TX_OUT
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/SR/READY
add wave -noupdate -expand /laboratorio5_tb/LAB5/Practica_TX/SR/SHIFT_LOAD
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/SR/CONT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {179045495 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 308
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 10000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {62834100 ps}
bookmark add wave bookmark0 {{37170064 ps} {301535600 ps}} 0

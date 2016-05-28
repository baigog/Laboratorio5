onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /laboratorio5_tb/Switch
add wave -noupdate /laboratorio5_tb/Reset
add wave -noupdate /laboratorio5_tb/Botones
add wave -noupdate /laboratorio5_tb/Fsel
add wave -noupdate -radix hexadecimal /laboratorio5_tb/Rx_out
add wave -noupdate -radix hexadecimal /laboratorio5_tb/LAB5/Practica_TX/MEMORIA/data_out
add wave -noupdate /laboratorio5_tb/LAB5/Practica_RX/TX
add wave -noupdate /laboratorio5_tb/LAB5/Practica_RX/RX_FSM1/CS
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/FREQ_SEL/out1
add wave -noupdate /laboratorio5_tb/LAB5/Practica_TX/RS_232/CS
add wave -noupdate /laboratorio5_tb/LAB5/Practica_RX/RX_FSM1/DATA_OK
add wave -noupdate /laboratorio5_tb/LAB5/Practica_RX/RX_FSM1/PARITY_ERR
add wave -noupdate /laboratorio5_tb/LAB5/Practica_RX/PCHECKER1/err
add wave -noupdate /laboratorio5_tb/LAB5/Practica_RX/DBUFFER/EN
add wave -noupdate -radix hexadecimal /laboratorio5_tb/LAB5/Practica_TX/DBUFFER/DATAOUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {34096426 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 315
configure wave -valuecolwidth 64
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
WaveRestoreZoom {0 ps} {517013149 ps}
bookmark add wave bookmark0 {{37170064 ps} {301535600 ps}} 0

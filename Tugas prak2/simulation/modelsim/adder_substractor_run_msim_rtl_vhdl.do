transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Prak SisDig/Tugas prak2/adder_substractor.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Prak SisDig/Tugas prak2/fulladder.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Prak SisDig/Tugas prak2/adder_nbit.vhd}

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Prak SisDig/Tugas prak2(1)/fullsubs.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Prak SisDig/Tugas prak2(1)/substractor_nbit.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Prak SisDig/Tugas prak2(1)/substractor_adder.vhd}


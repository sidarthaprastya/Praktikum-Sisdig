transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/Adder11.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/Combine.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/FPAdder.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/ShiftR.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/SubsE.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/SwapM.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/CompS.vhd}
vcom -93 -work work {C:/Users/User/Documents/Kuliah Online/Kuliah Online/Prak SisDig/Floating_adder/ConvB.vhd}


transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/clock1Hz.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/NbitN_1MUX.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/ALU2.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/NbitDFF.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/ControlUnit.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/ROM.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/NbitRegister.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/BitRegister2.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/NbitDEMUX.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/Nbit2MUX.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/Hex_To_7Seg.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/ALU.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Counter.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/RAM.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/FwdSelUnit.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/BranchUnit.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/ShiftUnit.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/Stack.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/NbitLatch.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/NbitPR.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/output_files/Nbit4_1MUX.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/IO.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Misc/StartupReset.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/MemHazUnit.vhd}
vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/Memory/registers.vhd}

vcom -93 -work work {C:/Users/Chamk/Desktop/Repo/BasicCPU/../Testbenches/tb_BasicCPU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_BasicCPU

add wave *
view structure
view signals
run -all

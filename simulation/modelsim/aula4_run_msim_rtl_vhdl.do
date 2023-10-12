transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/ULASomaSub.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/somaConstante.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/decoderGeneric.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/muxGenerico2x1.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/registradorGenerico.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/memoriaROM.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/memoriaRAM.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula4/aula4.vhd}


transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/ULASomaSub.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/somaConstante.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/decoderGeneric.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/muxGenerico2x1.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/registradorGenerico.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/memoriaRAM.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/memoriaROM.vhd}
vcom -2008 -work work {/home/victor/insper/6-sem/descomp/aula5/aula5.vhd}


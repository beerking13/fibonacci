############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fibonacci
set_top fibonacci
add_files SkyDrive/main.c
add_files SkyDrive/fib.c
add_files -tb SkyDrive/main.c
open_solution "solution1"
set_part {xa7z010clg400-1q} -tool vivado
create_clock -period 10 -name default
#source "./fibonacci/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog

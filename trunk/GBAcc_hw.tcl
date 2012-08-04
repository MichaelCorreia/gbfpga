# TCL File Generated by Component Editor 12.0
# Sun Jul 22 19:33:41 EDT 2012
# DO NOT MODIFY


# 
# GBAcc "GB Accelerator Nios II custom instruction" v1.0
# Jean Charles Vallieres 2012.07.22.19:33:41
# Nios II custom instruction to accelerate Game Boy emulator
# 

# 
# request TCL package from ACDS 12.0
# 
package require -exact qsys 12.0


# 
# module GBAcc
# 
set_module_property DESCRIPTION "Nios II custom instruction to accelerate Game Boy emulator"
set_module_property NAME GBAcc
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Processor Additions"
set_module_property AUTHOR "Jean Charles Vallieres"
set_module_property DISPLAY_NAME "GB Accelerator Nios II custom instruction"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL gbacc
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file gbacc.vhd VHDL PATH gbacc.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point nios_custom_instruction_slave
# 
add_interface nios_custom_instruction_slave nios_custom_instruction end
set_interface_property nios_custom_instruction_slave clockCycle 0
set_interface_property nios_custom_instruction_slave operands 1
set_interface_property nios_custom_instruction_slave ENABLED true

add_interface_port nios_custom_instruction_slave dataa dataa Input 32
add_interface_port nios_custom_instruction_slave datab datab Input 32
add_interface_port nios_custom_instruction_slave result result Output 32
add_interface_port nios_custom_instruction_slave clk_en clk_en Input 1
add_interface_port nios_custom_instruction_slave clk clk Input 1
add_interface_port nios_custom_instruction_slave start start Input 1
add_interface_port nios_custom_instruction_slave done done Output 1
add_interface_port nios_custom_instruction_slave n n Input 4
add_interface_port nios_custom_instruction_slave reset reset Input 1


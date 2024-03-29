# TCL File Generated by Component Editor 11.0sp1
# Wed Dec 07 20:07:41 EST 2011
# DO NOT MODIFY


# +-----------------------------------
# | 
# | AvSDC "SD Card controller" v1.0
# | Jean Charles Vallieres 2011.12.07.20:07:41
# | Avalon SD Card controller
# | 
# | D:/dev/spcplayer2/av_sdc_config.vhd
# | 
# |    ./av_sdc_config.vhd syn
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module AvSDC
# | 
set_module_property DESCRIPTION "Avalon SD Card controller"
set_module_property NAME AvSDC
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Interface Protocols"
set_module_property AUTHOR "Jean Charles Vallieres"
set_module_property DISPLAY_NAME "SD Card controller"
set_module_property TOP_LEVEL_HDL_FILE av_sdc_config.vhd
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property TOP_LEVEL_HDL_MODULE av_sdc_config
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME av_sdc_config
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file av_sdc_config.vhd SYNTHESIS
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset rst_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point slave_0
# | 
add_interface slave_0 avalon end
set_interface_property slave_0 addressUnits WORDS
set_interface_property slave_0 associatedClock clock
set_interface_property slave_0 associatedReset reset
set_interface_property slave_0 bitsPerSymbol 8
set_interface_property slave_0 burstOnBurstBoundariesOnly false
set_interface_property slave_0 burstcountUnits WORDS
set_interface_property slave_0 explicitAddressSpan 0
set_interface_property slave_0 holdTime 0
set_interface_property slave_0 linewrapBursts false
set_interface_property slave_0 maximumPendingReadTransactions 0
set_interface_property slave_0 readLatency 0
set_interface_property slave_0 readWaitStates 0
set_interface_property slave_0 readWaitTime 0
set_interface_property slave_0 setupTime 0
set_interface_property slave_0 timingUnits Cycles
set_interface_property slave_0 writeWaitTime 0

set_interface_property slave_0 ENABLED true

add_interface_port slave_0 read read Input 1
add_interface_port slave_0 write write Input 1
add_interface_port slave_0 readdata readdata Output 32
add_interface_port slave_0 writedata writedata Input 32
add_interface_port slave_0 waitrequest waitrequest Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point wire
# | 
add_interface wire conduit end

set_interface_property wire ENABLED true

add_interface_port wire sd_clk export Output 1
add_interface_port wire sd_cs export Output 1
add_interface_port wire sd_di export Output 1
add_interface_port wire sd_do export Input 1
# | 
# +-----------------------------------

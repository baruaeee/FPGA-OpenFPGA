// Specify input files
LAYOUT PATH "/home/cae1/Desktop/PDK/sky130_cds/sky130_osu_sc_t18/18T_hs/gds/sky130_osu_sc_18T_hs__dffr_1.gds"
LAYOUT PRIMARY "sky130_osu_sc_18T_hs__inv_1"
LAYOUT SYSTEM GDSII



// Setup antenna check
ANTENNA CHECK YES
ANTENNA CELL ALL
ANTENNA LAYER metal1 metal2 metal3 // specify your metal layers

// Output settings
RESULTS DATABASE "antenna.db"
WRITE REPORT "antenna.rpt"
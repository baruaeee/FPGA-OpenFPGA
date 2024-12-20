# Automatically generated scripts for restoring stages. 
# Do not modify unless you have sufficient knowledge of this file.

aae_restore_init \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.81271.140638435831168/aae.globals \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.81271.140638435831168/aae.stage \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.81271.140638435831168/aae.tasks \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.81271.140638435831168/.aae.results.restore

while {[aae_restore_next_stage]} {
  aae_analyze_restored_stage -debugLevel 3
  aae_print_analysis_results
}

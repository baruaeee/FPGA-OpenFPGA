# Automatically generated scripts for restoring stages. 
# Do not modify unless you have sufficient knowledge of this file.

aae_restore_init \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.84674.139756612849024/aae.globals \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.84674.139756612849024/aae.stage \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.84674.139756612849024/aae.tasks \
/home/exotic/Desktop/FPGA-OpenFPGA/PNR/auto_3x3_sky_scl/stage.saving.84674.139756612849024/.aae.results.restore

while {[aae_restore_next_stage]} {
  aae_analyze_restored_stage -debugLevel 3
  aae_print_analysis_results
}

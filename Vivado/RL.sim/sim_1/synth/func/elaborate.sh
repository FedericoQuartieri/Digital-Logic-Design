#!/bin/bash -f
xv_path="/media/federico/Shared/Linux_apps/Xilinx/Vivado/2016.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto cdbe79ad3baa4c9cac4bdef1f219f737 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot project_tb_k_func_synth xil_defaultlib.project_tb_k -log elaborate.log

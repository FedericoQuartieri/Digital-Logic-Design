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
ExecStep $xv_path/bin/xsim project_tb_k_func_synth -key {Post-Synthesis:sim_1:Functional:project_tb_k} -tclbatch project_tb_k.tcl -log simulate.log

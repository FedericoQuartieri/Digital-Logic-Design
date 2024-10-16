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
echo "xvhdl -m64 --relax -prj project_tb_k_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj project_tb_k_vhdl.prj 2>&1 | tee -a compile.log

#########   Activating the virtualenvironment ################################
#
# Run the following to activate tensorflow-asr env
#
#    source activate_luban_tf1.4.sh
#
##############################################################################

# This env is for our luban platform, you can use activate.sh at our test machines

# !/bin/bash

# set kaldi path
#source /nfs/project/tools/env/kaldi.sh
source /nfs/project/tools/env/kaldi_master.sh

# source tf python env...
source /nfs/project/tools/env/tf1.9_py3.5.env

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/nvidia/lib:/usr/local/nvidia/lib64:/usr/local/cuda/lib64
export PATH=/nfs/project/tools/openfst1.6.2/bin/:$PATH


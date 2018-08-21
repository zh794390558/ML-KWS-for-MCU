#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python test.py --data_url '' --data_dir /nfs/project/zhanghui/data/kws/opensource \
 --model_architecture rmn \
 --model_size_info 98 18 144 1 3 70 \
 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 \
 --checkpoint work/RMN/RMN2/training/best/rmn_9403.ckpt-21600  &> work/RMN/RMN2/test.log

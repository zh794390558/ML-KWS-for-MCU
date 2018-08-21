#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python test.py --data_url '' --data_dir /nfs/project/zhanghui/data/kws/opensource \
 --model_architecture attention \
 --model_size_info 98 144 70 --dct_coefficient_count 10 \
 --window_size_ms 100 --window_stride_ms 100 \
 --checkpoint work/ATTENTION/ATTENTION2/training/best/attention_9020.ckpt-16800 &> work/ATTENTION/ATTENTION2/test.log 

#!/bin/bash
python test.py --data_url '' --data_dir /nfs/project/zhanghui/data/kws/opensource \
 --model_architecture attention \
 --model_size_info 98 144 70 --dct_coefficient_count 10 \
 --window_size_ms 40 --window_stride_ms 40 \
 --checkpoint work/ATTENTION/ATTENTION1/training/best/attention_9198.ckpt-20000

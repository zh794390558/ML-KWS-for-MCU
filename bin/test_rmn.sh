#!/bin/bash
python test.py --data_dir '' --data_dir /nfs/project/zhanghui/data/kws/opensource \
 --model_architecture rmn \
 --model_size_info 98 18 True 3 144 70 \
 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 \
 --checkpoint work/RMN/RMN1/training/best/rmn_9175.ckpt-11600

#!/bin/bash
python test.py --data_dir /nfs/project/zhanghui/data/kws/opensource  --model_architecture dnn \
 --model_size_info 144 144 144 --dct_coefficient_count 10 \
 --window_size_ms 40 --window_stride_ms 40 \
 --checkpoint work/DNN/DNN1/training/best/dnn_8435.ckpt-26400

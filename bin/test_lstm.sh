#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python test.py --data_url '' --data_dir /nfs/project/zhanghui/data/kws/opensource \
 --model_architecture lstm \
 --model_size_info 98 144 --dct_coefficient_count 10 \
 --window_size_ms 100 --window_stride_ms 100 \
 --checkpoint work/LSTM/LSTM2/training/best/lstm_8842.ckpt-12400 &> work/LSTM/LSTM2/test.log 

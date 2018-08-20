#!/bin/bash
# set `data_url` to null, that don't download data

CUDA_VISIBLE_DEVICES=0 python test.py --data_url ' ' --data_dir /nfs/project/zhanghui/data/kws/opensource \
 --model_architecture lstm \
 --model_size_info 98 144 --dct_coefficient_count 10 \
 --window_size_ms 40 --window_stride_ms 40 \
 --checkpoint work/LSTM/LSTM1/training/best/lstm_9175.ckpt-11600 &> work/LSTM/LSTM1/test.log

#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python train.py --data_url ''\
  --data_dir /nfs/project/zhanghui/data/kws/opensource \
  --model_architecture rmn --model_size_info 98 18 144 1 3 70 \
  --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 \
  --learning_rate 0.0005,0.0001,0.00002 \
  --how_many_training_steps 10000,10000,10000 \
  --summaries_dir work/RMN/RMN1/retrain_logs --train_dir work/RMN/RMN1/training

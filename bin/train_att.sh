#!/bin/bash

. ./bin/activate_luban_tf1.9.sh
#python train.py --data_url '' --data_dir /nfs/project/zhanghui/data/kws/opensource --model_architecture attention --model_size_info 98 144 70 --dct_coefficient_count 10 --window_size_ms 40 --window_stride_ms 40 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000   --summaries_dir work/ATTENTION/ATTENTION1/retrain_logs --train_dir work/ATTENTION/ATTENTION1/training

python train.py --data_url '' --data_dir /nfs/project/zhanghui/data/kws/opensource --model_architecture attention --model_size_info 98 144 70 --dct_coefficient_count 10 --window_size_ms 100 --window_stride_ms 100 --learning_rate 0.0005,0.0001,0.00002 --how_many_training_steps 10000,10000,10000   --summaries_dir work/ATTENTION/ATTENTION2/retrain_logs --train_dir work/ATTENTION/ATTENTION2/training

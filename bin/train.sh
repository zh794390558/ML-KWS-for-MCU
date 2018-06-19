#!/bin/bash
python train.py --data_dir /nfs/project/zhanghui/data/kws/opensource  --model_architecture dnn \
 --model_size_info 144 144 144 --dct_coefficient_count 10 \
 --window_size_ms 40 --window_stride_ms 40 --learning_rate 0.0005,0.0001,0.00002 \
 --how_many_training_steps 10000,10000,10000 --summaries_dir work/DNN/DNN1/retrain_logs --train_dir work/DNN/DNN1/training

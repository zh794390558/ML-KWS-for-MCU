#!/bin/bash
python test_pb.py --data_dir /nfs/project/zhanghui/data/kws/opensource  --model_architecture dnn \
 --model_size_info 144 144 144 --dct_coefficient_count 10 \
 --window_size_ms 40 --window_stride_ms 40 \
 --graph work/DNN/DNN1/dnn.pb

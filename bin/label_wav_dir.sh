#!/bin/bash
python label_wav_dir.py \
--graph=work/DNN/DNN1/dnn.pb \
--labels=work/DNN/DNN1/training/dnn_labels.txt \
--wav_dir=/nfs/project/zhanghui/data/kws/opensource/down

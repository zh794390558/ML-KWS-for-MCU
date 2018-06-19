#!/bin/bash
python label_wav.py \
--graph=work/DNN/DNN1/dnn.pb \
--labels=work/DNN/DNN1/training/dnn_labels.txt \
--wav=/nfs/project/zhanghui/data/kws/opensource/down/106a6183_nohash_3.wav

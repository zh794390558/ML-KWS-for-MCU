#!/bin/bash

CKPT_PATH=$1

tflite_convert \
  --output_file=deploy/tflite/model/emotion.tflite \
  --saved_model_dir=$CKPT_PATH/export/saved_model

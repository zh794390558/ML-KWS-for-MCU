#!/bin/bash

if [[ $# != 1 ]]; then
  echo "usage: $0 saved_model_path"
  exit 1
fi

tflite_convert --output_file=graph_float_quant.tflite \
  --saved_model_dir=$1 \
  --output_format TFLITE \
  --inference_type FLOAT \
  --inference_input_type FLOAT \
  --post_training_quantize 1 \
  --dump_graphviz_dir graph_dump_float_quant

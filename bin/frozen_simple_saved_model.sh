#!/bin/bash


# saved model dir
dir=$1
output_name=$2

ROOT=/nfs/project/zhanghui/test/tensorflow

${ROOT}/bazel-bin/tensorflow/python/tools/freeze_graph \
  --input_saved_model_dir=$dir\
  --saved_model_tags='serve' \
  --output_node_names=$output_name\
  --output_graph='frozen_graph.pb'

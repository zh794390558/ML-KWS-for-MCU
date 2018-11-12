#!/bin/bash

graph=$1

# Note: strip_unused_nodes shape for input placeholder 
ROOT=/nfs/project/zhanghui/test/tensorflow
${ROOT}/bazel-bin/tensorflow/tools/graph_transforms/transform_graph \
--in_graph=$graph \
--out_graph=transformed_graph.pb \
--inputs='input:0' \
--outputs='softmax_output:0' \
--transforms='
  strip_unused_nodes(type=float, shape="-1,480000")
  remove_nodes(op=CheckNumerics)
  fold_constants(ignore_errors=true)
  fold_batch_norms
  fold_old_batch_norms
  '

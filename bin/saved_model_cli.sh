#!/bin/bash
# saved model dir
dir=$1

ROOT=/nfs/project/zhanghui/test/tensorflow
${ROOT}/bazel-bin/tensorflow/python/tools/saved_model_cli show --dir=$dir --all

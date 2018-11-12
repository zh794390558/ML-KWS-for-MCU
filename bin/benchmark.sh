#!/usr/bin/bash

#https://github.com/tensorflow/tensorflow/blob/34ef46ca948440fa034c7b29cf1a516750eb02d3/tensorflow/tools/benchmark/README.md

# Set tensorflow environment
# source /nfs/project/tools/env/tf1.4_py3.5.env

# options
feat_mat="./audio.mat"
output_graph='frozen_emotion.pb'
output_node="softmax_output:0"
input_node="input:0"
input_shape="16,480000"

if [ ! -f ${output_graph} ]; then
    echo Output graph: ${output_graph} can NOT be found!!
    exit 1
fi


# `bazel build -c opt tensorflow/tools/benchmark:benchmark_model`

# Run inference
if [ -f ${output_graph} ]; then
    ROOT=/nfs/zhanghui/tensorflow
    LIBS=${ROOT}/bazel-bin/tensorflow
    export LD_LIBRARY_PATH=$LIBS:$LD_LIBRARY_PATH

    export OMP_NUM_THREADS=1
    export KMP_BLOCKTIME=0
# export KMP_AFFINITY=granularity=fine,verbose,compact,1,0
    export KMP_SETTINGS=1

    CUDA_VISIBLE_DEVICES="" \
    taskset -c 6-9 \
    ${ROOT}/bazel-bin/tensorflow/tools/benchmark/benchmark_model \
    --graph=${output_graph} \
    --init_ops="" \
    --input_layer=${input_node} \
    --input_layer_shape=${input_shape} \
    --input_layer_type="float" \
    --input_layer_values=""  \
    --output_layer=${output_node} \
    --target_layer="" \
    --max_num_runs=1000  \
    --max_time="10.0"    \
    --inference_delay="-1.0" \
    --inter_benchmark_delay="-1.0"  \
    --num_threads=-1  \
    --benchmark_name="" \
    --output_prefix=""  \
    --show_sizes=false  \
    --show_run_order=true \
    --run_order_limit=0    \
    --show_time=true     \
    --time_limit=10      \
    --show_memory=true   \
    --memory_limit=10    \
    --show_type=true     \
    --show_summary=true  \
    --show_flops=false   \
    --warmup_runs=1
fi

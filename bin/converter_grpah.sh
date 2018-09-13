#!/bin/bash


if [[ $# != 2 ]];then
  usage "usage: $0 graph_file binary"
fi

file=$1
binary=$2

python converter_grpah.py --graph_file=$file --binary=$binary

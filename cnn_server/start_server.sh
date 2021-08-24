#!/usr/bin/env bash
curPath=$(dirname $(readlink -f "$0"))
cd ${curPath}
export PYTHONPATH=${PYTHONPATH}:`pwd`
python3 cnn_server.py

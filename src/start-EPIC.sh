#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run --add-host="localhost:$(ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}')" -it --rm -p 8888:8888 -v "$DIR:/home/jovyan/work/input" baderlab/bio-epic start-notebook.sh --NotebookApp.iopub_data_rate_limit='100000000' --NotebookApp.token=''

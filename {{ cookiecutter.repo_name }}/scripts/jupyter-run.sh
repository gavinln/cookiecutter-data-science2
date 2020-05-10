#!/bin/bash

# runs either "jupyter lab" or "jupyter notebook"
# first argument should be either lab or notebook

# example command: jupyter lab --port 8888 --ip=127.0.0.1 --no-browser --notebook-dir=../notebooks

JUPYTER_INTERFACE=${1:-notebook}

echo "$JUPYTER_INTERFACE"

set -Eeuo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

IP=127.0.0.1
PORT=8888

# JUPYTER_OPTS="$JUPYTER_INTERFACE --port=$PORT --ip=$IP --no-browser"
# NOTEBOOKS="$SCRIPT_DIR/../notebooks"

pipenv run jupyter "$JUPYTER_INTERFACE" --port=$PORT --ip=$IP \
    --no-browser --notebook-dir="$SCRIPT_DIR"/../notebooks

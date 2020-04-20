#!/bin/bash
SCRIPT_NAME="do"
BASEDIR=$(dirname "$0")

if [ $# -ne 0  ]; then
        flag="${1}"
        if [ "$flag" == "run" ]; then
                (set -x; python3 -m http.server 8000)
        elif [ "$flag" == "dummy" ]; then
                echo "dummy ${BASEDIR}"
        fi
else
    echo "Usage: \"./${SCRIPT_NAME} run\"";
    exit 1
fi


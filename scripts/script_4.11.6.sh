#!/bin/bash

NUM_PTRN="^[0-9]+$"

if [[ ${#} -lt 3 ]]; then
    echo "Script usage: ${0} <text_for_search> <file> <num_of_rows_to_output>"
    exit -1
fi

if ! [[ -e ${2} ]]; then
    echo "File ${2} does not exists. Please specify correct file."
    exit -1
fi

if ! [[ ${3} =~ ${NUM_PTRN} ]]; then
    echo "Number of rows is not correct. Please specify positive integer number."
    exit -1
fi

grep ${1} ${2} | sort | head -n ${3} | awk '{print NR"\t"$0}'


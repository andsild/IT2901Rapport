#!/bin/bash

if [ -z ${1} ]
then
    printf "usage %s <input file>\n" "${0}"
    exit 1
fi

infile=${1}

./cleanup.awk ${1} | ./cleanup.sed

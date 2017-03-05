#!/usr/bin/env bash
set -e
WORKDIR=$1
if [ A == A${WORKDIR} ]
then
    WORKDIR=.
fi
mkdir -p ${WORKDIR}/output
INPUT=${WORKDIR}/upstream/output
inkomst=$(cat ${INPUT}/socarb.txt)
res=$(echo "scale=0; (${inkomst} * 0.1021) / 1" | bc -l)
echo ${res} > ${WORKDIR}/output/alderspensionsavgift.txt

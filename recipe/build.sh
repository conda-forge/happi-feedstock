#!/bin/bash

$PYTHON -m pip install . --no-deps -vv

mkdir -p $PREFIX/etc/conda/activate.d
mkdir -p $PREFIX/etc/conda/deactivate.d

ACTIVATE=$PREFIX/etc/conda/activate.d/happi
DEACTIVATE=$PREFIX/etc/conda/deactivate.d/happi

# From https://docs.conda.io/projects/conda-build/en/latest/user-guide/environment-variables.html
cp -f ${RECIPE_DIR}/activate.sh ${ACTIVATE}.sh
cp -f ${RECIPE_DIR}/deactivate.sh ${DEACTIVATE}.sh

unset ACTIVATE
unset DEACTIVATE

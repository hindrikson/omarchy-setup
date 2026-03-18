#!/bin/sh

# mini forge
ORIGINAL_DIR=$(pwd)
cd ~
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" &&
bash Miniforge3-$(uname)-$(uname -m).sh
cd $ORIGINAL_DIR

#!/bin/bash

source ~/.profile

# Set up conda environment
if grep -q -F "conda initialize" ~/.bashrc; then
    echo "Anaconda is set up."
else
    echo "setting up Anaconda"
    /opt/anaconda/bin/conda init
fi
    
# Set TORCH_HOME so that PyTorch Hub picks up the shared model cache.
if grep -q -F "TORCH_HOME" ~/.profile; then
    echo "TORCH_HOME looks ok."
else
    echo "setting up TORCH_HOME"
    echo >> ~/.profile
    echo 'export TORCH_HOME=/scratch/cs344/torch' >> ~/.profile
fi

# Use the scratch area.
if grep -qsF "/scratch" ~/.fastai/config.ini
then
    echo "Scratch configured in ~/.fastai/config.ini."
else
    echo "setting up ~/.fastai/config.ini"
    mkdir -p ~/.fastai
    cat > ~/.fastai/config.ini <<EOF
[DEFAULT]
data = /scratch/cs344/data
archive = /scratch/cs344/archive
model = /scratch/cs344/models
storage = /tmp
EOF
fi

echo "Done."

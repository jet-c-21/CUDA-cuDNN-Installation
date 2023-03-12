# CUDA-cuDNN-Installation

## Add CUDA Path Shell snippet
### Short Hand Version (beta)
```shell
# >>>>>> add CUDA path >>>>>>
CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)
CUDA_BIN=/usr/local/cuda-$CUDA_VER/bin
CUDA_LD_BIN=/usr/local/cuda-$CUDA_VER/lib64
export PATH=$CUDA_BIN${PATH:+:$PATH}
export LD_LIBRARY_PATH=$CUDA_LD_BIN${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
# <<<<<< add CUDA path <<<<<<
```


## Verification
Check CUDA and cuDNN can work on both Tensorflow and PyTorch

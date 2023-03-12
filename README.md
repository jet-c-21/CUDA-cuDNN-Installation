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

### Stable Version

```shell
# >>>>>> add CUDA path >>>>>>
CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)
CUDA_BIN=/usr/local/cuda-${CUDA_VER}/bin
CUDA_LD_BIN=/usr/local/cuda-${CUDA_VER}/lib64

if [ -z "${PATH}" ]; then
  export PATH=$CUDA_BIN
elif [[ "${PATH}" == :* ]]; then
  export PATH=$CUDA_BIN${PATH}
elif [[ "${PATH}" == *: ]]; then
  export PATH=${PATH}$CUDA_BIN
else
  export PATH=${PATH}:$CUDA_BIN
fi

if [ -z "${LD_LIBRARY_PATH}" ]; then
  export LD_LIBRARY_PATH=$CUDA_LD_BIN
elif [[ "${LD_LIBRARY_PATH}" == :* ]]; then
  export LD_LIBRARY_PATH=$CUDA_LD_BIN${LD_LIBRARY_PATH}
elif [[ "${LD_LIBRARY_PATH}" == *: ]]; then
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}$CUDA_LD_BIN
else
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$CUDA_LD_BIN
fi
# <<<<<< add CUDA path <<<<<<
```

### Add snippet to shell setting file by command

#### bash

```shell
bash
```

##### Short Hand Version (beta)

```shell
echo '# >>>>>> add CUDA path >>>>>>
CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)
CUDA_BIN=/usr/local/cuda-$CUDA_VER/bin
CUDA_LD_BIN=/usr/local/cuda-$CUDA_VER/lib64
export PATH=$CUDA_BIN${PATH:+:$PATH}
export LD_LIBRARY_PATH=$CUDA_LD_BIN${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
# <<<<<< add CUDA path <<<<<<
' >> ~/.bashrc && \
source ~/.bashrc && \
sudo ldconfig
```

##### Stable Version

```shell
echo '# >>>>>> add CUDA path >>>>>>
CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)
CUDA_BIN=/usr/local/cuda-${CUDA_VER}/bin
CUDA_LD_BIN=/usr/local/cuda-${CUDA_VER}/lib64

if [ -z "${PATH}" ]; then
  export PATH=$CUDA_BIN
elif [[ "${PATH}" == :* ]]; then
  export PATH=$CUDA_BIN${PATH}
elif [[ "${PATH}" == *: ]]; then
  export PATH=${PATH}$CUDA_BIN
else
  export PATH=${PATH}:$CUDA_BIN
fi

if [ -z "${LD_LIBRARY_PATH}" ]; then
  export LD_LIBRARY_PATH=$CUDA_LD_BIN
elif [[ "${LD_LIBRARY_PATH}" == :* ]]; then
  export LD_LIBRARY_PATH=$CUDA_LD_BIN${LD_LIBRARY_PATH}
elif [[ "${LD_LIBRARY_PATH}" == *: ]]; then
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}$CUDA_LD_BIN
else
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$CUDA_LD_BIN
fi
# <<<<<< add CUDA path <<<<<<
' >> ~/.bashrc && \
source ~/.bashrc && \
sudo ldconfig
```

#### zsh

```shell
zsh
```

##### Short Hand Version (beta)

```shell
echo '# >>>>>> add CUDA path >>>>>>
CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)
CUDA_BIN=/usr/local/cuda-$CUDA_VER/bin
CUDA_LD_BIN=/usr/local/cuda-$CUDA_VER/lib64
export PATH=$CUDA_BIN${PATH:+:$PATH}
export LD_LIBRARY_PATH=$CUDA_LD_BIN${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
# <<<<<< add CUDA path <<<<<<
' >> ~/.zshrc && \
source ~/.zshrc && \
sudo ldconfig
```

##### Stable Version

```shell
echo '# >>>>>> add CUDA path >>>>>>
CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)
CUDA_BIN=/usr/local/cuda-${CUDA_VER}/bin
CUDA_LD_BIN=/usr/local/cuda-${CUDA_VER}/lib64

if [ -z "${PATH}" ]; then
  export PATH=$CUDA_BIN
elif [[ "${PATH}" == :* ]]; then
  export PATH=$CUDA_BIN${PATH}
elif [[ "${PATH}" == *: ]]; then
  export PATH=${PATH}$CUDA_BIN
else
  export PATH=${PATH}:$CUDA_BIN
fi

if [ -z "${LD_LIBRARY_PATH}" ]; then
  export LD_LIBRARY_PATH=$CUDA_LD_BIN
elif [[ "${LD_LIBRARY_PATH}" == :* ]]; then
  export LD_LIBRARY_PATH=$CUDA_LD_BIN${LD_LIBRARY_PATH}
elif [[ "${LD_LIBRARY_PATH}" == *: ]]; then
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}$CUDA_LD_BIN
else
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$CUDA_LD_BIN
fi
# <<<<<< add CUDA path <<<<<<
' >> ~/.zshrc && \
source ~/.zshrc && \
sudo ldconfig
```

## Verification

Check CUDA and cuDNN can work on both Tensorflow and PyTorch

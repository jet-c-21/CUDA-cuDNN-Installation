CUDA_VER=$(ls /usr/local | grep -oP 'cuda-\K\d+\.\d+' | tail -1)

echo $CUDA_VER
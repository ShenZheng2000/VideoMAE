# installations
mamba create -n videomae python=3.8 -y
conda activate videomae
# pip install torch==1.8.0+cu111 torchvision==0.9.0+cu111 torchaudio==0.8.0 -f https://download.pytorch.org/whl/torch_stable.html
# pip install torch==1.13.1+cu116 torchvision==0.14.1+cu116 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu116
pip install timm==0.4.12
pip install tensorboardX
pip install decord
pip install einops

# NOTE: add these three lines before installing deepspeed
export CUDA_HOME=/usr/local/cuda-11.1
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
DS_BUILD_OPS=1 DS_BUILD_AIO=0 DS_BUILD_EVOFORMER_ATTN=0 DS_BUILD_SPARSE_ATTN=0 pip install deepspeed==0.11.1

# NOTE: use numpy < 1.20.0 to avoid float error
pip install numpy==1.19.5 
pip install pandas==1.2.5
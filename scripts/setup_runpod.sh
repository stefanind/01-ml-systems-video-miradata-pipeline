#!/bin/bash

set -e

apt-get update
apt-get install -y ffmpeg

python -m pip install --upgrade pip
python -m pip install -e ".[dev]"

ffmpeg -version

python - <<'PY'
import torch
import torchcodec

print("Torch:", torch.__version__)
print("TorchCodec:", torchcodec.__version__)
print("CUDA available:", torch.cuda.is_available())

if torch.cuda.is_available():
    print("GPU:", torch.cuda.get_device_name(0))
PY
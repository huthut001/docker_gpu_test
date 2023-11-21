FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    python3 \
    python3-dev \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install NVIDIA GPU support for TensorFlow and PyTorch
RUN pip3 install --upgrade pip && \
    pip3 install torch

# Test Python with CUDA
COPY main.py /app/main.py
WORKDIR /app

CMD ["python3", "main.py"]

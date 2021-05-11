FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    wget \
    nano \
    vim \
    python-pip \
    zip \
    git \
  && rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install --upgrade pip
RUN pip install matplotlib \
    pip install numpy \
    pip install opencv-python==4.1.2.30 \
    pip install notebook

WORKDIR /notebooks
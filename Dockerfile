FROM nvidia/cuda:9.2-cudnn7-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN pip3 install -U setuptools pip
RUN pip3 install --pre cupy-cuda92

COPY cupy_perf.py /tmp
COPY run.py /tmp

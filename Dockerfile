FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt update && apt install -y \
    python3 \
    python3-pip \
    git \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    net-tools \
    iputils-ping \
    dnsutils

# Clone the modified Impacket version (compatible with PrintNightmare)
RUN git clone https://github.com/cube0x0/impacket /opt/impacket && \
    cd /opt/impacket && \
    python3 setup.py install

# Clone CVE-2021-1675 exploit (PrintNightmare)
RUN git clone https://github.com/cube0x0/CVE-2021-1675.git /opt/CVE-2021-1675

# Default Working Directory
WORKDIR /opt/CVE-2021-1675

ENTRYPOINT ["/bin/bash"]

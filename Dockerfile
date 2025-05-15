FROM jetbrains/teamcity-agent

USER root

# Install required packages for building cURL and running TeamCity Agent
RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    automake \
    libtool \
    pkg-config \
    libssl-dev \
    zlib1g-dev \
    libnghttp2-dev \
    libbrotli-dev \
    git \
    curl \
    unzip \
    ca-certificates \
    openjdk-17-jre \
    libpsl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER buildagent

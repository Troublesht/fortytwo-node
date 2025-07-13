FROM nvidia/cuda:12.4.1-devel-ubuntu22.04

LABEL maintainer="Troublesht <pointtroubleshooting@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

# Install required tools
RUN apt update && apt upgrade -y && apt install -y \
    curl unzip bc libgomp1 ca-certificates build-essential gnupg wget && \
    rm -rf /var/lib/apt/lists/*

# Create app directory
RUN mkdir -p /root/Fortytwo
WORKDIR /root/Fortytwo

# Download Fortytwo app
RUN curl -L -o app.zip https://github.com/Fortytwo-Network/fortytwo-console-app/archive/refs/heads/main.zip && \
    unzip app.zip && rm app.zip && \
    mv fortytwo-console-app-main/* . && rm -rf fortytwo-console-app-main && \
    chmod +x linux.sh

# Check nvcc and fix if needed
RUN if ! command -v nvcc >/dev/null 2>&1; then \
      echo "⚠️  nvcc not found, installing manually..."; \
      wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin && \
      mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600 && \
      wget https://developer.download.nvidia.com/compute/cuda/12.4.1/local_installers/cuda-repo-ubuntu2204-12-4-local_12.4.1-1_amd64.deb && \
      dpkg -i cuda-repo-ubuntu2204-12-4-local_12.4.1-1_amd64.deb && \
      cp /var/cuda-repo-ubuntu2204-12-4-local/cuda-*-keyring.gpg /usr/share/keyrings/ && \
      apt-get update && apt-get -y install cuda-toolkit-12-4; \
    else \
      echo "✅ nvcc found."; \
    fi

# Set default entry
CMD ["./linux.sh"]


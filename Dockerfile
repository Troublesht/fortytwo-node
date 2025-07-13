FROM nvidia/cuda:12.4.1-base-ubuntu22.04

RUN apt update && apt upgrade -y && apt install -y \
    curl unzip bc libgomp1 ca-certificates && \
    curl -L -o app.zip https://github.com/Fortytwo-Network/fortytwo-console-app/archive/refs/heads/main.zip && \
    unzip app.zip && rm app.zip && \
    mv fortytwo-console-app-main/* . && rm -rf fortytwo-console-app-main && \
    chmod +x linux.sh

CMD ["./linux.sh"]

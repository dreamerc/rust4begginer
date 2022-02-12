# Debian unstable rust + jupyter
FROM rust:latest 
WORKDIR /root
RUN DEBIAN_FRONTEND=noninteractive apt update && apt install --yes jupyter-notebook g++ cmake && cargo install evcxr_jupyter
RUN PATH="/root/.cargo/bin:$PATH" evcxr_jupyter --install
EXPOSE 8888/tcp
ENTRYPOINT ["/usr/bin/jupyter-notebook","--ip=0.0.0.0","--port=8888 ","--allow-root"]

docker pull rust:latest
docker images rust:latest | tr -s ' ' | grep rust | cut -f3 -d" " > .rust-docker-id
docker build --tag dreamerwolf/rust4beginner:latest .

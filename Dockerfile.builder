FROM rust
WORKDIR /ore-hq-server
COPY . /ore-hq-server
RUN cargo build --release
# FROM rust AS builder
FROM yesq/server-builder AS builder
WORKDIR /ore-hq-server
COPY . /ore-hq-server
RUN cargo build --release

FROM yesq/server-base
COPY --from=builder /ore-hq-server/target/release/ore-hq-server /ore-hq-server
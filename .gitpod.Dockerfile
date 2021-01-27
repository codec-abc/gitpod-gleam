FROM ghcr.io/gleam-lang/gleam-compiler-ci-test/gleam:107.0.0-elixir-alpine

USER root

RUN apk update \
    && apk add curl \
    && wget https://github.com/gleam-lang/gleam/releases/download/v0.13.2/gleam-v0.13.2-linux-amd64.tar.gz \
    && tar -xf gleam-v0.13.2-linux-amd64.tar.gz \
    && rm /bin/gleam \
    && mv gleam /bin/gleam \
    && rm gleam-v0.13.2-linux-amd64.tar.gz

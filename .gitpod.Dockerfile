FROM ghcr.io/gleam-lang/gleam-compiler-ci-test/gleam:107.0.0-elixir-alpine

USER root

RUN apk update \
    && apk add curl 
    # \
    # && curl https://sh.rustup.rs -sSf | sh -s -- -y
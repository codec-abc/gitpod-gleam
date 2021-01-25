FROM gitpod/workspace-full

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install esl-erlang -y \
    && apt-get install elixir -y \
    && curl https://sh.rustup.rs -sSf | sh \
    && curl -Lo gleam.tar.gz https://github.com/gleam-lang/gleam/releases/download/v0.13.2/gleam-v0.13.2-linux-amd64.tar.gz \
    && tar xf gleam.tar.gz
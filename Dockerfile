FROM gitpod/workspace-full

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb \
    && apt-get update \
    && apt-get install esl-erlang -y \
    && apt-get install elixir -y \
    && curl https://sh.rustup.rs -sSf | sh \
    && curl -Lo gleam.tar.gz https://github.com/gleam-lang/gleam/releases/download/v0.13.2/gleam-v0.13.2-linux-amd64.tar.gz \
    && tar xf gleam.tar.gz
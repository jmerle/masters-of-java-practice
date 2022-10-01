#!/usr/bin/env bash

if [[ -d repositories/assignments ]]; then
    git -C repositories/assignments pull
else
    git clone https://github.com/First8/mastersofjava.git repositories/assignments
fi

if [[ -d repositories/server ]]; then
    git -C repositories/server pull
else
    git clone https://github.com/mastersofjava/mastersofjava.git repositories/server
fi

docker compose up "$@"

#!/usr/bin/env bash

if [[ -d repositories/assignments ]]; then
    git -C repositories/assignments pull
else
    git clone https://github.com/First8/mastersofjava.git repositories/assignments
fi

if [[ -d repositories/mastersofjava ]]; then
    git -C repositories/mastersofjava pull
else
    git clone https://github.com/mastersofjava/mastersofjava.git repositories/mastersofjava
fi

docker compose up "$@"

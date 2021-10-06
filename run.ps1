if (Test-Path -Path "repositories/assignments") {
    git -C repositories/assignments pull
} else {
    git clone https://github.com/First8/mastersofjava.git repositories/assignments
}

if (Test-Path -Path "repositories/mastersofjava") {
    git -C repositories/mastersofjava pull
} else {
    git clone https://github.com/mastersofjava/mastersofjava.git repositories/mastersofjava
}

docker-compose up $args

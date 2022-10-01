if (Test-Path -Path "repositories/assignments") {
    git -C repositories/assignments pull
} else {
    git clone https://github.com/First8/mastersofjava.git repositories/assignments
}

if (Test-Path -Path "repositories/server") {
    git -C repositories/server pull
} else {
    git clone https://github.com/mastersofjava/mastersofjava.git repositories/server
}

docker compose up $args

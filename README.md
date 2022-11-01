# Masters of Java Practice

This repository contains Docker Compose configuration to easily run the [Masters of Java server](https://github.com/mastersofjava/mastersofjava) locally to practice on [assignments from previous years](https://github.com/First8/mastersofjava).

## Usage

First time:
1. Clone this repository.
2. Download the [JDK 11 javadoc from Oracle](https://www.oracle.com/java/technologies/javase-jdk11-doc-downloads.html) to `mastersofjava/javadoc.zip`.
3. `cd` into the repository's directory and run `docker compose up` to start the server.
4. Wait until the server has started and then go to [http://localhost:8080/control](http://localhost:8080/control).
5. Login with username `admin` and password `admin`.
6. Click on the "Bootstrap" button and wait for the admin interface to show up.
7. Open the "Configuratie" tab and click the "Laad assignments" button to load the assignments.
8. The admin interface is now ready-to-use.

After the first time:
1. `cd` into the repository's directory and run `docker compose up` to start the server.
2. Wait until the server has started and then go to [http://localhost:8080/control](http://localhost:8080/control).
3. Login with username `admin` and password `admin` if a login page shows up.
4. The admin interface is now ready-to-use.

With the admin interface visible, you can simply select one of the assignments on the "Snel starten" tab and click "Start Opdracht" to start. This will cause the page to reload, after which you can click "Speel mee" to practice the problem in the same interface that is used during the real competition.

# Masters of Java Practice

This repository contains Docker Compose configuration to easily run the [Masters of Java server](https://github.com/mastersofjava/mastersofjava) locally to practice on [assignments from previous years](https://github.com/First8/mastersofjava).

## Usage

First time:
1. Clone this repository.
2. Download the [JDK 17 javadoc from Oracle](https://www.oracle.com/java/technologies/javase-jdk17-doc-downloads.html) to `mastersofjava/javadoc.zip`.
3. `cd` into the repository's directory and run `docker compose up` to start the server.
4. Wait until the server has started and then go to [http://localhost:8080/control](http://localhost:8080/control).
5. Login with email `admin@ad.min` and password `admin`.
6. Click on the "Bootstrap" button and wait for the admin interface to show up.
7. Open the "Admin" tab and click the "Scan Assignments" button to load the assignments.
8. The admin interface is now ready-to-use.

After the first time:
1. `cd` into the repository's directory and run `docker compose up` to start the server.
2. Wait until the server has started and then go to [http://localhost:8080/control](http://localhost:8080/control).
3. Login with email `admin@ad.min` and password `admin` if a login page shows up.
4. The admin interface is now ready-to-use.

With the admin interface visible, you can practice assignments by creating a competition containing two or more assignments on the "Assignments" tab, starting the competition on the "Competitions" tab, and then starting one of the assignments in the competition on the "Session" tab. After doing so, go to [http://localhost:8080/](http://localhost:8080/) to practice the assignment in the same interface that is used during the real competition.

Make sure to start the server with `docker compose up --build` if you change any of the files in your local repository after performing the steps listed underneath "First time".

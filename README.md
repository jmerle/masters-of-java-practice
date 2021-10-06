# Masters of Java Practice

This repository contains Docker Compose configuration to easily run the [Masters of Java server](https://github.com/mastersofjava/mastersofjava) locally to practice on [assignments from previous years](https://github.com/First8/mastersofjava).

## Usage

First time:
1. Clone this repository.
2. Download the [JDK 11 javadoc from Oracle](https://www.oracle.com/java/technologies/javase-jdk11-doc-downloads.html) to `mastersofjava/javadoc.zip`.
3. If you're on Windows, open the repository in File Explorer, right-click on `run.ps1`, check the "Unblock" checkbox and click "Apply".
4. `cd` into the repository's directory and run `./run.sh` to start the server (`.\run.ps1` on Windows).
5. Go to [http://localhost:8080/control](http://localhost:8080/control) and refresh a few times until the server has started and redirects you to a login page.
6. Login with username `admin` and password `admin`.
7. Click on the "Bootstrap" button and wait for the admin interface to show up.
8. Open the "Configuratie" tab and click the "Laad assignments" button to load the assignments.
9. The admin interface is now ready-to-use.

After the first time:
1. `cd` into the repository's directory and run `./run.sh` to start the server (`.\run.ps1` on Windows).
2. Go to [http://localhost:8080/control](http://localhost:8080/control) and refresh a few times until the server has started and shows you either the admin interface or the login page.
3. Login with username `admin` and password `admin` if a login page shows up.
4. The admin interface is now ready-to-use.

With the admin interface visible, you can simply select one of the assignments on the "Snel starten" tab and click "Start Opdracht" to start. This will cause the page to reload, after which you can click "Speel mee" to practice the problem in the same interface that is used during the real competition.

To stop the server, hit <kbd>Ctrl</kbd> + <kbd>C</kbd> in the terminal running `run.sh` (`run.ps1` on Windows).

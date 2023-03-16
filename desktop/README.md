# Docker containers for performing Flutter desktop builds

These docker containers are built on containers from [ghcr.io/cirruslabs](https://hub.docker.com/u/ghcr.io/cirruslabs) ([cirruslabs](https://github.com/cirruslabs)).

- linux-dev is just ghcr.io/cirruslabs/flutter:dev + apt installing the needed utils
- windows-dev-sdk30-fdev2.3rc is ghcr.io/cirruslabs/android-sdk:30-windowsservercore-2019 with Visual Studio 16, Flutter dev (2.3rc), and Google Root cert gtsr1 (for future proofing pub get)

These docker containers are both being used with Drone CI to build Flutter desktop apps for Linux and Windows. Simply run `flutter build` with the appropriate OS. These containers should work with any other Docker based automated build system such as Gitlab and others.

Example [.drone.yml](https://git.openprivacy.ca/flutter/flutter_app/src/branch/trunk/.drone.yml)

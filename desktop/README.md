# Docker containers for performing Flutter desktop builds

These docker containers are built on containers from [cirrusci](https://hub.docker.com/u/cirrusci) ([cirruslabs](https://github.com/cirruslabs)).

- linux-dev is just cirrusci/flutter:dev + apt installing the needed utils
- windows-dev-sdk30-fdev2.2rc is cirrusci/android-sdk:30-windowsservercore-2019 with Visual Studio 16, and Flutter dev (2.2rc)

These docker containers are both being used with Drone CI to build Flutter desktop apps for Linux and Windows. Simply run `flutter build` with the appropriate OS. These containers should work with any other Docker based automated build system such as Gitlab and others.

Example [.drone.yml](https://git.openprivacy.ca/flutter/flutter_app/src/branch/trunk/.drone.yml)

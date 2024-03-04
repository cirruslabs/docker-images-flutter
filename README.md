# Docker Images for [Flutter](https://flutter.dev/)

[![Build Status][build_badge]][build_link]

You can either [use it in CI](https://cirrus-ci.org/examples/#flutter) or run locally via Docker:

```bash
docker run --rm -it -v ${PWD}:/build --workdir /build ghcr.io/cirruslabs/flutter:stable flutter test
```

The example above simply mount current working directory and runs `flutter test`

## GitHub Container Registry

https://github.com/cirruslabs/docker-images-flutter/pkgs/container/flutter

[build_badge]: https://api.cirrus-ci.com/github/cirruslabs/docker-images-flutter.svg
[build_link]: https://cirrus-ci.com/github/cirruslabs/docker-images-flutter

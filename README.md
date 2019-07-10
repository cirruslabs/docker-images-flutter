# Docker Images for Flutter

You can either [use it in CI](https://cirrus-ci.org/examples/#flutter) or run locally via Docker:

```bash
docker run --rm -it -v ${PWD}:/build cirrusci/flutter:stable test
```

The example above simply mount current working directory and runs `flutter test`
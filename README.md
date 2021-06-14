# docker-sbt

Try

```bash
docker run --rm quay.io/alexanderfefelov/sbt:1.5.4-java16 \
  bash -c 'echo JAVA_HOME: $JAVA_HOME && java -version && sbt sbtVersion'
```

or

```bash
docker run --rm quay.io/alexanderfefelov/sbt:1.5.4-java11 \
  bash -c 'echo JAVA_HOME: $JAVA_HOME && java -version && sbt sbtVersion'
```

or

```bash
docker run --rm quay.io/alexanderfefelov/sbt:1.5.4-java8 \
  bash -c 'echo JAVA_HOME: $JAVA_HOME && java -version && sbt sbtVersion'
```

or run [demo project](demo).

ARG GRAALVM_VERSION
ARG JAVA_VERSION

FROM quay.io/alexanderfefelov/graalvm:$GRAALVM_VERSION-java$JAVA_VERSION

ARG SBT_VERSION
ARG SBT_HOME=/sbt
ARG WORKDIR=/workdir

ENV PATH=$SBT_HOME/bin:$PATH

WORKDIR $WORKDIR

RUN mkdir --parents $SBT_HOME $WORKDIR \
  && wget --quiet https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz \
  && tar --extract --gunzip --file=sbt-$SBT_VERSION.tgz --strip-components 1 --directory=$SBT_HOME \
  && rm sbt-$SBT_VERSION.tgz \
  && sbt sbtVersion

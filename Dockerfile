ARG GRAALVM_VERSION=21.0.0

FROM quay.io/alexanderfefelov/graalvm:$GRAALVM_VERSION

ARG SBT_VERSION=1.4.6
ARG SBT_HOME=/sbt
ARG WORKDIR=/workdir

ENV PATH=$SBT_HOME/bin:$PATH

WORKDIR $WORKDIR

ADD https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz /
RUN mkdir --parents $SBT_HOME $WORKDIR \
  && tar --extract --gunzip --file=/sbt-$SBT_VERSION.tgz --strip-components 1 --directory=$SBT_HOME \
  && rm /sbt-$SBT_VERSION.tgz \
  && sbt sbtVersion

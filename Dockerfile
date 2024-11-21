# syntax=docker/dockerfile:1

FROM amazoncorretto:21-al2-jdk

LABEL maintainer="kryptonhydrit <kryptonhydrit@kryptonhydrit.de>"

ENV SERVER_CONFIG_AUTO_MODE=true

RUN yum update -y && \
    yum install bsdtar \
    shadow-utils -y

COPY --chmod=755 servermanager.sh /servermanager.sh
COPY --chmod=755 includes/ /includes
COPY --chmod=644 configs/ /configs

EXPOSE 25565/tcp

ENTRYPOINT [ "/bin/bash", "servermanager.sh" ]
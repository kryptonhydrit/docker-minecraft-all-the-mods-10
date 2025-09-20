FROM eclipse-temurin:21-jre-noble

LABEL maintainer="kryptonhydrit <kryptonhydrit@kryptonhydrit.de>"

ENV SERVER_CONFIG_AUTO_MODE=true

RUN apt-get update -y && \
    apt-get install libarchive-tools -y

COPY --chmod=755 servermanager.sh /servermanager.sh
COPY --chmod=755 includes/ /includes
COPY --chmod=644 configs/ /configs

EXPOSE 25565/tcp

ENTRYPOINT [ "/bin/bash", "servermanager.sh" ]
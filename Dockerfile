FROM bitnami/postgresql:11.12.0-debian-10-r57
MAINTAINER r.schoebel@schoebel.tech
USER root
RUN apt update && apt install openssh-server -y
RUN useradd -ms /bin/bash -u 1001 postgresql
USER 1001
ENTRYPOINT ["/scripts/entrypoint.sh"]

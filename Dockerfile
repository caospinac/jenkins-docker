FROM jenkins/jenkins:2.277.4-lts

USER root

RUN mkdir -p /tmp/download && \
  curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.06.3-ce.tgz | tar -xz -C /tmp/download && \
  rm -rf /tmp/download/docker/dockerd && \
  mv /tmp/download/docker/docker* /usr/local/bin/ && \
  rm -rf /tmp/download

RUN groupadd -g 1001 docker && \
  usermod -aG staff,docker jenkins

USER jenkins

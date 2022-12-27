FROM ubuntu:jammy AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS tom
ARG TAGS
RUN addgroup --gid 1000 tom
RUN adduser --gecos tom --uid 1000 --gid 1000 --disabled-password tom
#RUN useradd -m -s /bin/bash -G sudo tom
#RUN useradd -m tom && echo "tom:tom" | chpasswd && adduser tom sudo
#RUN usermod -aG sudo tom
USER tom
WORKDIR /home/tom/ansible

FROM tom
COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml --ask-vault-pass"]

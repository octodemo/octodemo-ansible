FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q python3 python3-pip && \
    apt-get clean

RUN pip3 install setuptools
RUN pip3 install "ansible[azure]==2.9.10"

ENTRYPOINT ["/usr/local/bin/ansible-playbook"]

FROM ubuntu:18.04

USER root

WORKDIR /tmp

RUN apt-get update -y && apt-get install -y unzip git curl python3-pip

RUN pip3 install awscli

RUN curl -O https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_linux_amd64.zip

RUN unzip terraform_0.15.5_linux_amd64.zip

RUN chmod a+x terraform && mv terraform /usr/bin

ENTRYPOINT [ "/bin/bash" ]

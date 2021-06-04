FROM alpine:latest

USER root

WORKDIR /tmp

RUN apk add unzip git curl py3-pip

RUN pip3 install awscli

RUN curl -O https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_linux_amd64.zip

RUN unzip terraform_0.15.5_linux_amd64.zip && rm -rf terraform_0.15.5_linux_amd64.zip

RUN chmod a+x terraform && mv terraform /usr/bin

WORKDIR /root

ENTRYPOINT [ "/bin/bash" ]

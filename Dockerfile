FROM ubuntu:latest

WORKDIR /code-review

RUN apt update && apt install -y python3 libldap2-dev libsasl2-dev git python3-pip && pip3 install pyOpenSSL

RUN git clone https://github.com/debxrshi/skills-secure-code-game && cd skills-secure-code-game && pip3 install -r requirements.txt


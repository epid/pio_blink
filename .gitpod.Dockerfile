FROM python:3.7-slim

USER gitpod

ENV APP_VERSION="4.1" \
    APP="platformio-core"

RUN pip install -U platformio==${APP_VERSION} && \
    mkdir -p /workspace && \
    mkdir -p /.platformio && \
    chmod a+rwx /.platformio && \

WORKDIR /workspace

ENTRYPOINT ["platformio"]

FROM python:3.7-slim

USER 1001

ENV APP_VERSION="4.1" \
    APP="platformio-core"

RUN pip install --user -U platformio==${APP_VERSION} && \
    mkdir -p /workspace && \
    mkdir -p /.platformio && \
    chmod a+rwx /.platformio

WORKDIR /workspace

ENTRYPOINT ["platformio"]

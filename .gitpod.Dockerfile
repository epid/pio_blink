FROM gitpod:workspace-full

RUN python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"

RUN mkdir -p /workspace && \
    mkdir -p /.platformio && \
    chmod a+rwx /.platformio
WORKDIR /workspace
USER 1001

ENTRYPOINT ["platformio"]
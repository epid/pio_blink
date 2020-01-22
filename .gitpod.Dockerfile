FROM gitpod:workspace-full

WORKDIR /workspace
RUN mkdir -p /workspace && \
    mkdir -p /.platformio && \
    chmod a+rwx /.platformio

USER 1001

ENTRYPOINT ["platformio"]
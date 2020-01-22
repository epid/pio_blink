FROM gitpod/workspace-full

RUN python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"

WORKDIR /workspace
USER 1001

ENTRYPOINT ["platformio"]

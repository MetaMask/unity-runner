FROM unityci/editor:ubuntu-2021.3.32f1-linux-il2cpp-3.0.0

LABEL "com.github.actions.name"="Unity Runner"
LABEL "com.github.actions.description"="Run unity any Unity project."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/MetaMask/unity-runner"
LABEL "homepage"="http://github.com/MetaMask/unity-runner"
LABEL "maintainer"="Edward Penta <eddie.penta@consensys.net>"

COPY entrypoint.sh activate.sh request_activation.sh /

RUN chmod +x /entrypoint.sh && \
    chmod +x /activate.sh && \
    chmod +x /request_activation.sh

ENTRYPOINT ["/entrypoint.sh"]

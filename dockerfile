FROM ubuntu:latest
RUN apt update && apt install -y git curl unzip gnupg
# Setup GitHub CLI
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | \
    gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] \
    https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    apt update && apt install -y gh
CMD ["/bin/bash"]



# docker build -t gh-templab .
# docker run -it --rm gh-templab


#oprn this running container in the vscode for added security.. 

#link for the extension :- https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244

ENTRYPOINT [ "./alist", "server", "--debug", "--data /etc/secrets/config.json"]

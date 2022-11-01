FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244
RUN cp /etc/secrets/config.json /opt/alist/data/config.json && chmod 775 /opt/alist/data/config.json
ENTRYPOINT [ "./alist", "server", "--debug"]

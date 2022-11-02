FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244
RUN cp config_temp.json /opt/alist/data/config.json
ENTRYPOINT [ "./alist", "server", "--debug"]

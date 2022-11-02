FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244
CMD mkdir -p /opt/alist/data
ADD run.sh /run.sh
CMD /run.sh
#ENTRYPOINT ["./alist", "server", "--debug"]

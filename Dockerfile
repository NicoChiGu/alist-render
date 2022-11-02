FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244
ADD run.sh /run.sh
RUN mkdir -p /opt/alist/data
RUN chmod 775 /run.sh
CMD /run.sh
#ENTRYPOINT ["./alist", "server", "--debug"]

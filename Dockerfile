FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244
ADD run.sh /opt/alist/run.sh
RUN mkdir -p /opt/alist/data
RUN wget -qO /opt/alist/run.sh https://github.com/NicoChiGu/alist-render/raw/main/run.sh
RUN chmod 775 /opt/alist/run.sh
CMD /opt/alist/run.sh
#ENTRYPOINT ["./alist", "server", "--debug"]

FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
WORKDIR /opt/alist/

EXPOSE 5244
CMD mkdir -p /opt/alist/data
ADD run.sh /opt/alist/run.sh
RUN wget -qO /opt/alist/run.sh https://github.com/NicoChiGu/alist-render/raw/main/run.sh && chmod 775 /opt/alist/run.sh
CMD /opt/alist/run.sh
#ENTRYPOINT ["./alist", "server", "--debug"]

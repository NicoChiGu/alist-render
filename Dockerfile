FROM debian:stable-slim
WORKDIR /opt/alist
EXPOSE 5244
ADD run.sh /opt/alist/run.sh

RUN apt-get update \
    && apt-get install wget curl aria2 -y  
RUN wget -qO /opt/alist/alist-linux-amd64.tar.gz https://github.com/alist-org/alist/releases/download/v3.3.0/alist-linux-amd64.tar.gz
RUN tar -zxvf /opt/alist/alist-linux-amd64.tar.gz \
    && chmod +x alist

RUN mkdir -p /opt/alist/data \
    && mkdir -p /opt/alist/tempdisk \
    && chmod -R 775 /opt/alist/tempdisk
RUN wget -qO /opt/alist/run.sh https://github.com/NicoChiGu/alist-render/raw/main/run.sh \
    && chmod +x /opt/alist/run.sh
CMD /opt/alist/run.sh

#ENTRYPOINT ["./alist", "server", "--debug"]

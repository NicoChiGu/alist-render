#FROM debian:stable-slim
FROM ubuntu:jammy
WORKDIR /opt/alist
EXPOSE 5244
ADD run.sh /opt/alist/run.sh
ADD cron.sh /opt/alist/cron.sh
RUN apt-get update \
    && apt-get install wget curl aria2 -y
RUN wget -qO /opt/alist/alist-linux-amd64.tar.gz https://github.com/alist-org/alist/releases/latest/download/alist-linux-amd64.tar.gz
RUN tar -zxvf /opt/alist/alist-linux-amd64.tar.gz \
    && chmod +x alist

RUN mkdir -p /opt/alist/data \
    && mkdir -p /opt/alist/tempdisk \
    && chmod -R 775 /opt/alist/tempdisk
RUN wget -qO /opt/alist/run.sh https://github.com/NicoChiGu/alist-render/raw/main/run.sh \
    && chmod +x -R /opt/alist/
RUN rm -rf /var/lib/apt/lists/* \
    && apt-get clean
CMD /opt/alist/run.sh

#ENTRYPOINT ["./alist", "server", "--debug"]

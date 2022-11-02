FROM debian:stable-slim
WORKDIR /opt/alist
EXPOSE 5244

RUN apt-get update \
    && apt-get install wget curl  -y
RUN curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install

ADD run.sh /opt/alist/run.sh
RUN mkdir -p /opt/alist/data
RUN wget -qO /opt/alist/run.sh https://github.com/NicoChiGu/alist-render/raw/main/run.sh \
    && chmod 775 /opt/alist/run.sh
CMD /opt/alist/run.sh
#ENTRYPOINT ["./alist", "server", "--debug"]

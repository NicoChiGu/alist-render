FROM xhofe/alist:latest
WORKDIR /opt/alist/

EXPOSE 5244
RUN mkdir -p /opt/alist/data
#RUN wget -qO /opt/alist/data/config.json https://github.com/NicoChiGu/alist-render/raw/main/config.json
CMD [ "./alist", "server", "--no-prefix" ]

FROM alpine:latest
RUN apk add --no-cache curl unzip
RUN curl -LO https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip \
    && unzip Xray-linux-64.zip -d /usr/local/bin/ \
    && chmod +x /usr/local/bin/xray \
    && rm Xray-linux-64.zip
RUN mkdir -p /etc/xray
COPY config.json.tmpl /etc/xray/config.json.tmpl
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]

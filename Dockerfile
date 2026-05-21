FROM teddysun/xray
COPY config.json.tmpl /etc/xray/config.json.tmpl
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]

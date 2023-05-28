FROM alpine

RUN apk add --no-cache bash tini ttyd

WORKDIR /root

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["ttyd", "-W", "bash"]

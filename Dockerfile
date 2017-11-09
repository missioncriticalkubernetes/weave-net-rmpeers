FROM alpine:3.5

RUN apk add --no-cache curl jq

RUN curl -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.8.3/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl

COPY rmpeers /

CMD ["/rmpeers"]

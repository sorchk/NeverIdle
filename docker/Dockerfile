# syntax=docker/dockerfile:1
FROM --platform=$BUILDPLATFORM alpine:3.9
LABEL author=sorc@sction.org
ARG TARGETOS
ARG TARGETARCH
COPY ./dist/nidle_${TARGETARCH} /usr/bin/nidle
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" >/etc/timezone && apk del tzdata && mkdir /app && chmod +x /usr/bin/nidle 
WORKDIR /app
ENTRYPOINT ["/usr/bin/nidle"]
CMD ["-cp","0.2","-m","10","-n","57m37s"]
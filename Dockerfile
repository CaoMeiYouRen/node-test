FROM alpine:latest

# ENV NODE_ENV production

# 安装nodejs环境
RUN echo "http://mirrors.aliyun.com/alpine/edge/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/edge/community/" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update nodejs npm \
    && node -v && npm -v && npm config set registry https://registry.npm.taobao.org

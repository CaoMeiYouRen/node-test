FROM alpine:latest

ENV NODE_ENV production
ENV NODE_VERSION 12.15.0-r1
ENV NPM_VERSION 12.15.0-r1

# 安装nodejs环境
RUN echo "http://mirrors.aliyun.com/alpine/v3.11/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.11/community/" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update "nodejs=${NODE_VERSION}" "nodejs-npm=${NPM_VERSION}" \
    && node -v && npm -v && npm config set registry https://registry.npm.taobao.org

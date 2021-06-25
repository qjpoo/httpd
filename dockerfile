### build stage ###
FROM ubuntu:20.04 as builder
LABEL maintainer="quinn" \
      version="1.0" \
      description="mini httpd"
MAINTAINER  "qjpoo@163.com"
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && apt-get clean && apt-get update -y && apt-get install -y make yasm as31 nasm binutils
COPY . .
RUN cd asmttpd && make release
### run stage ###
FROM scratch
COPY --from=builder /asmttpd/asmttpd /asmttpd
COPY asmttpd/web_root/index.html /web_root/index.html
CMD ["/asmttpd", "/web_root", "8080"]

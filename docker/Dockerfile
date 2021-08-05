FROM debian:stable
RUN sed -i -e 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt update
RUN apt upgrade
RUN apt install -y vim fish wget curl git gcc g++ clang clang-format meson python3-pip sudo
RUN echo "%sudo ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

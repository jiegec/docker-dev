FROM debian:stable
# install packages
RUN sed -i -e 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' -e 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt update
RUN apt upgrade
RUN apt install -y sudo openssh-server
RUN apt install -y gcc g++ clang
RUN apt install -y golang-go
RUN apt install -y meson cmake
RUN apt install -y htop
RUN apt install -y python3-pip python3-matplotlib
RUN apt install -y vim fish zsh wget curl clang-format git unar
RUN apt install -y command-not-found
RUN update-command-not-found
RUN apt update

# setup packages
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
RUN echo "%sudo ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

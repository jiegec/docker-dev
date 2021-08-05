FROM debian:stable
# install packages
RUN sed -i -e 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' -e 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt update
RUN apt upgrade
RUN apt install -y sudo openssh-server
RUN apt install -y gcc g++ clang gdb
RUN apt install -y golang-go openjdk-11-jdk
RUN apt install -y meson cmake autoconf automake
RUN apt install -y htop glances iftop lsof strace
RUN apt install -y python3-pip python3-matplotlib
RUN apt install -y vim fish zsh clang-format git unar valgrind
RUN apt install -y bison flex libboost-dev
RUN apt install -y wget curl axel
RUN apt install -y verilator ghdl
RUN apt install -y screen tmux byobu
RUN apt install -y command-not-found
RUN update-command-not-found
RUN apt update

# setup packages
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
RUN echo "%sudo ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

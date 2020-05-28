FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y nmap
RUN apt-get install -y socat
RUN echo "source /root/bash_extra" >>/root/.bashrc
ADD bash_extra /root/bash_extra
CMD ["/bin/bash"]


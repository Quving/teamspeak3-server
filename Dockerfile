FROM ubuntu:16.04

ENV TS3_VERSION 3.3.0
ENV TS3_DL http://ftp.4players.de/pub/hosted/ts3/releases/${TS3_VERSION}/teamspeak3-server_linux_amd64-${TS3_VERSION}.tar.bz2
ENV TS3_FILE ts3-server

WORKDIR /ts3

# Install wget.
RUN apt-get update && \
    apt-get install -y \
    wget bzip2

# Download ts3-server
RUN wget -O ${TS3_FILE}.tar.bz2 ${TS3_DL}; ls && \
    tar -xvf ${TS3_FILE}.tar.bz2  && \
    rm ${TS3_FILE}.tar.bz2

#Expose the Standard TS3 port, for files, for serverquery
EXPOSE 9987/udp 30033 10011

CMD ["/ts3/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]


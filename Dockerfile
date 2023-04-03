FROM arm64v8/ubuntu:22.04

LABEL Alexandre Boutoille "https://github.com/TeaRex-coder/docker-openvpn-access-server"

USER root

WORKDIR /

RUN apt-get update && \
    apt-get install -y wget iptables net-tools gnupg ca-certificates && \
    wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc && \
    echo "deb [arch=arm64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian jammy main" > /etc/apt/sources.list.d/openvpn-as-repo.list && \
    apt-get update && \
    apt-get install -y openvpn-as && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

EXPOSE 443/tcp 1194/udp 943/tcp

VOLUME ["/usr/local/openvpn_as"]

CMD ["/entrypoint.sh"]

# Ubuntu 20.04 x86

This verison uses a [Docker image](https://github.com/TeaRex-coder/docker-openvpn-access-server/blob/main/ubuntu20.04-x86/Dockerfile) with a base image of Ubuntu 20.04 for x86 CPU architectures.

## Setup

### Clone repository

```bash
git clone https://github.com/TeaRex-coder/docker-openvpn-access-server.git \
&& cd docker-openvpn-access-server
&& cd ubuntu20.04-x86
```

### Installation

Use the included docker compose-compose file to build the image and install Open VPN Access Server in a container. Now run:
`docker compose up -d`

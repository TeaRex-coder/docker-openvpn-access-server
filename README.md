# Ubuntu 22.04 ARM

This verison uses a [Docker image](https://github.com/TeaRex-coder/docker-openvpn-access-server/blob/ubuntu22.04-arm/Dockerfile) with a base image of Ubuntu 22.04 for ARM CPU architectures.

## Installation

### Clone repository

```bash
git clone -b ubuntu22.04-arm https://github.com/TeaRex-coder/docker-openvpn-access-server.git
cd docker-openvpn-access-server
```

## Using Docker Hub Image

To use the Docker Hub image alexandreboutoille/ovpn-as, you can either edit the docker-compose file to use the new image or use the docker run command with the new image.

**Edit Docker Compose**
Update the `docker-compose.yml` file as follows:

```yaml
version: "3.8"

services:
  ovpn-as:
    image: alexandreboutoille/ovpn-as:ubuntu22.04-arm
    container_name: ovpn-as
    ports:
      - "1443:443"
      - "943:943"
      - "1194:1194/udp"
    privileged: true
    volumes:
      - /path/to/host/data:/usr/local/openvpn_as
```

The run:
`docker compose up -d`

**Or, using Docker Run**

`docker run -d -p 1443:443 -p 943:943 -p 1194:1194/udp --privileged=true -v /path/to/host/data:/usr/local/openvpn_as --name ovpn-as alexandreboutoille/ovpn-as:ubuntu22.04-arm`

### Manual install

Build image

`docker build -t ovpn-as:ubuntu22.04-arm .`

Create Container

`docker run -d -p 1443:443 -p 943:943 -p 1194:1194/udp --privileged=true -v /path/to/host/data:/usr/local/openvpn_as --name ovpn-as ovpn-as:ubuntu22.04-arm`

**Or, build with Docker Compose**

`docker compose up -d`

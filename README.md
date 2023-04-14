<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/f/f5/OpenVPN_logo.svg" width="512">
</p>

<h3 align="center">Running Open-VPN Access Server in a Docker Container</h3>

<p align="center">
  <img src="https://img.shields.io/github/stars/TeaRex-coder/docker-openvpn-access-server?style=for-the-badge">
  <img src="https://img.shields.io/docker/stars/alexandreboutoille/ovpn-as?style=for-the-badge">
  <img src="https://img.shields.io/docker/pulls/alexandreboutoille/ovpn-as?style=for-the-badge">
  <img src="https://img.shields.io/github/languages/code-size/TeaRex-coder/docker-openvpn-access-server?style=for-the-badge">
</p>

<p align="center">
  <img src="https://img.shields.io/github/last-commit/TeaRex-coder/docker-openvpn-access-server?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/TeaRex-coder/docker-openvpn-access-server?style=for-the-badge">
  <img src="https://img.shields.io/github/license/TeaRex-coder/docker-openvpn-access-server?style=for-the-badge">
</p>

# About This Project: Docker OpenVPN Access Server

[LinuxServer.io's docker image](https://hub.docker.com/r/linuxserver/openvpn-as) to run OpenVPN Access Server was depreciated 2 years ago. I couldn't find a replacement so I made my own! This image is built on top of Ubuntu (18.04. 20.04 & 22.04) and includes the latest version of OpenVPN Access Server with both x86 and ARM builds.

## What is OpenVPN Access Server?

If you don't already know, OpenVPN Access Server is a powerful and easy-to-use VPN solution that allows you to securely connect remote users to your network. It supports a wide range of authentication methods, including username and password, two-factor authentication, and LDAP. It also provides a web-based management interface that makes it easy to configure and manage your VPN.

## Requirements

To use this Docker image, you'll need to have the following installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install)

## Setup

Select the version matching your CPU architecture.

<details>
  <summary>Ubuntu 22.04 x86 <b>Recommended</b> </summary>

```bash
git clone -b ubuntu22.04-x86 https://github.com/TeaRex-coder/docker-openvpn-access-server.git
cd docker-openvpn-access-server
```

Follow instructions [here](https://github.com/TeaRex-coder/docker-openvpn-access-server/tree/ubuntu22.04-x86)

</details>

<details>
  <summary>Ubuntu 20.04 x86</summary>

```bash
git clone -b ubuntu20.04-x86 https://github.com/TeaRex-coder/docker-openvpn-access-server.git
cd docker-openvpn-access-server
```

Follow instructions [here](https://github.com/TeaRex-coder/docker-openvpn-access-server/tree/ubuntu20.04-x86)

</details>

<details>
  <summary>Ubuntu 18.04 x86</summary>

```bash
git clone -b ubuntu18.04-x86 https://github.com/TeaRex-coder/docker-openvpn-access-server.git
cd docker-openvpn-access-server
```

Follow instructions [here](https://github.com/TeaRex-coder/docker-openvpn-access-server/tree/ubuntu18.04-x86)

</details>

<details>
  <summary>Ubuntu 22.04 ARM <b>Recommended</b> </summary>

```bash
git clone -b ubuntu22.04-arm https://github.com/TeaRex-coder/docker-openvpn-access-server.git
cd docker-openvpn-access-server
```

Follow instructions [here](https://github.com/TeaRex-coder/docker-openvpn-access-server/tree/ubuntu22.04-arm)

</details>

<details>
  <summary>Ubuntu 20.04 ARM</summary>

```bash
git clone -b ubuntu20.04-arm https://github.com/TeaRex-coder/docker-openvpn-access-server.git
cd docker-openvpn-access-server
```

Follow instructions [here](https://github.com/TeaRex-coder/docker-openvpn-access-server/tree/ubuntu20.04-arm)

</details>

## Contributing

Please read the [Contribution Guide](https://github.com/TeaRex-coder/docker-openvpn-access-server/blob/main/CONTRIBUTING.md) before submitting a Pull Request to this repo!

## To-Do List

- [ ] Update image when new version of OpenVPN Access Server is released
- [ ] Build image with Debian 11 base image
- [ ] Build image with Debian 10 base image

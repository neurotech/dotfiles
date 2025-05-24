# :minidisc: dotfiles

## Linux Installation Steps

1. Install Ubuntu Server via USB
2. After first reboot, login to the machine

### Change system font

`sudo dpkg-reconfigure console-setup`

* Encoding: UTF-8
* Character set: Guess optimal character set
* Font: VGA, 8x16

### Configure static IP:

`sudo nano /etc/netplan/50-cloud-init.yaml`

#### WiFi:

```yaml
network:
  version: 2
  wifis:
    wlp0s20f3:
      addresses:
        - 192.168.1.123/24
      nameservers:
        addresses: [192.168.1.1, 1.1.1.1, 1.0.0.1]
      routes:
        - to: default
          via: 192.168.1.1
```

#### Ethernet:

```yaml
network:
  version: 2
  ethernets:
    eno1:
      addresses:
        - 192.168.1.222/24
      nameservers:
        addresses: [192.168.1.1, 1.1.1.1, 1.0.0.1]
      routes:
        - to: default
          via: 192.168.1.1
```

### Configure timezone

```shell
sudo dpkg-reconfigure tzdata
```

---

## Software

### Prerequisites

Update and upgrade existing packages:

```shell
sudo apt update
sudo apt upgrade
```

### Laptop Display Brightness

`sudo apt install brightnessctl`

Add yourself to the video and input groups (so as to not need to `sudo` before each call to `brightnessctl`)

```shell
sudo usermod -a -G video $USER
sudo usermod -a -G input $USER
sudo reboot now
```

### Homebrew

Install Homebrew as per: https://brew.sh/

### Docker

Install Docker as per: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

Create a `docker` group (so as to not need to `sudo` before each call to `docker`):

```shell
sudo groupadd docker
sudo usermod -a -G docker $USER
newgrp docker
```

### Python, node, pnpm, starship

`brew install uv node pnpm starship`

Add the following to the end of `~/.bashrc`:

```shell
eval "$(starship init bash)"

echo >> $HOME/.bashrc && echo 'eval "$(starship init bash)"' >> $HOME/.bashrc
```

### Pi-hole

### dotfiles


```shell
git clone https://github.com/neurotech/dotfiles
./install.sh
```
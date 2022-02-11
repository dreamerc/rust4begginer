Install
=====
Docker
-------
Docker VNC Desktop
```
docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
```

Ubuntu
-------
==Before start , Please APT Upgrade==

```bash
add-apt-repository ppa:ubuntu-mozilla-security/rust-updates
apt install rustc
```

Jupyter
--------
```bash
apt install jupyter-notebook cmake g++
cargo install evcxr_jupyter
```
Start
---
```bash
jupyter notebook --ip=127.0.0.1 --port=8888 --allow-root
```
Cargo Bin
------
~/.profile
```bash
if [ -d "$HOME/.cargo/bin" ] ; then
PATH="$HOME/.cargo/bin:$PATH"
fi
```
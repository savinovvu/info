```shell script
sudo echo nameserver 127.0.0.53 > /etc/resolv.conf
systemctl restart resolvconf
```
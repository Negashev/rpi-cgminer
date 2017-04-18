# rpi-cgminer
For AU3
```
docker run  -it --restart always --privileged --device /dev/ttyUSB0 negash/rpi-cgminer
```
env vars
```
ENV USER Negash.helper
ENV PASS 0
ENV URL stratum+tcp://stratum.slushpool.com:3333
```
https://github.com/Negashev/rpi-cgminer

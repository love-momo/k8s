FROM ubuntu

MAINTAINER Wei Zhou <cszhouwei@gmail.com>

RUN apt-get update; \
    apt-get -y upgrade

RUN apt-get -y install g++ cmake git subversion

RUN mkdir /home/git; \
    cd /home/git; \
    sudo git clone https://github.com/cszhouwei/cmake_demo.git -b master; \
    cd cmake_demo; \
    mkdir build; \
    cd build; \
    cmake -DCMAKE_BUILD_TYPE=Release ../; \
    make
    
CMD ["/home/git/cmake_demo/buld/module_xxx/module_xxx", "--config", "/etc/module_xxx.conf"]
————————————————
版权声明：本文为CSDN博主「cszhouwei」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/cszhouwei/article/details/41312671

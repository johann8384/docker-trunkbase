FROM johann8384/gnuradio


RUN mkdir /src && cd /src && git clone --depth 1  https://github.com/robotastic/trunk-recorder.git
RUN cd /src/trunk-recorder && cmake . && make

WORKDIR /src/trunk-recorder

CMD ["/bin/bash"]

FROM ubuntu:wily

RUN apt-get update \
    && apt-get install -y \
    git build-essential unzip \
    cmake automake libtool libtool-bin pkg-config curl mercurial

#RUN git clone https://github.com/fingul/sffmpeg.git

WORKDIR /code

ADD . /code

#VOLUME /out

#CMD git pull && make && cp build/bin/{ffmpeg,ffprobe,frmxtract} /out

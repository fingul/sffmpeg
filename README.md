# sffmpeg-build

This Docker image will build a static version of `ffmpeg` and `ffprobe` using [github.com/pyke369/sffmpeg](https://github.com/pyke369/sffmpeg).

The binaries are Linux binaries and will be stored in `/sffmpeg-bin`.

You must mount this directory to be get the binaries.

## Usage

The first step is to create a directory for the static binaries:

```
$ mkdir ffmpeg-bin
```

Then you can start the build process:

```
$ docker run --rm -v $PWD/ffmpeg-bin:/ffmpeg-bin sebest/sffmpeg-build
```

When the container will exit, you should have your Linux binaries in the `ffmpeg-bin` directory.


docker build -t sffmpeg .
docker run -v `pwd`/bin:/code/bin -t -i sffmpeg bash -c 'export MAKEFLAGS=" -j `cat /proc/cpuinfo|grep cores|wc -l`" && make && cp /code/lib/libebur128.so.1 /code/bin'


docker run -v `pwd`/bin:/code/bin -t -i sffmpeg bash

export MAKEFLAGS=" -j `cat /proc/cpuinfo|grep cores|wc -l`" && make && cp /code/lib/libebur128.so.1 /code/bin

docker run -v `pwd`:/code -t -i sffmpeg bash -c 'export MAKEFLAGS=" -j `cat /proc/cpuinfo|grep cores|wc -l`" && make && cp /code/lib/libebur128.so.1 /code/bin'

docker run -v `pwd`:/code -t -i sffmpeg bash

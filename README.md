# docker-icecream
Docker images and instructions to run container as ICECC x86_64 build nodes.

## What is `Icecream(icecc)`?
[Ice Cream - Distributed compiler system](https://github.com/icecc/icecream)

## Instructions to run icecc containters
- macOS with Docker for Mac
```bash
$ docker run -itd -p 10245:10245/tcp -p 8765:8765/tcp -p 8766:8766/tcp -p 8765:8765/udp <docker_repo_name/img_id>
```

- GNU Linux
```bash
$ docker run -itd --net=host -p 10245:10245/tcp -p 8765:8765/tcp -p 8766:8766/tcp -p 8765:8765/udp <docker_repo_name/img_id>
```

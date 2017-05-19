FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    icecc

# Configure icecc scheduler ip based on your icecc environment.
# (macOS only, https://docs.docker.com/docker-for-mac/networking/#known-limitations-use-cases-and-workarounds)
ENV USE_SCHEDULER 10.247.24.135

# Run icecc daemon in very verbose mode with default name `docker-compiler`
ENTRYPOINT ["iceccd","-vv","-N","docker-compiler"]

# Expose required TCP/UDP ports
EXPOSE 10245 8765/TCP 8765/UDP 8766

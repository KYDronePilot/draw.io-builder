FROM ubuntu:18.04

COPY ./src /src
RUN /src/build.sh

ENTRYPOINT ["/src/start.sh"]
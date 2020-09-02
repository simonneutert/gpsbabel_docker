FROM ubuntu:20.04

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

RUN apt-get update && apt-get install dumb-init gpsbabel -y

RUN dumb-init gpsbabel --version

WORKDIR /gpsbabel

VOLUME ["/gpsbabel"]

ENTRYPOINT ["dumb-init", "gpsbabel"]

CMD ["--help"]

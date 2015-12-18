FROM debian:8
MAINTAINER Antonio Esposito "kobe@member.fsf.org"

RUN apt update && apt install -y \
  python3-pip python3-dev libpq-dev libevent-dev \
  postgresql-client osm2pgsql curl \
  && rm -rf /var/lib/apt/lists/*
RUN pip3 install pgcli

CMD ["true"]

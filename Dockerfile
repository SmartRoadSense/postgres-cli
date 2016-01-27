FROM debian:8
MAINTAINER Antonio Esposito "kobe@member.fsf.org"

RUN apt update && apt install -y \
  python-pip python-dev libpq-dev libevent-dev \
  postgresql-client osm2pgsql curl wget \
  && rm -rf /var/lib/apt/lists/*
RUN pip install pgcli

CMD ["true"]

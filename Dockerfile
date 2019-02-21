FROM alpine:3.9

RUN apk --no-cache update && \
    apk --no-cache add \
    gcc=8.2.0-r2 \
    postgresql-client=11.1-r0 \
    musl-dev=1.1.20-r3 \
    postgresql-dev=11.1-r0 \
    python2-dev=2.7.15-r3 \
    py2-pip=18.1-r0

RUN pip install 'pgcli==2.0.2'

# Drop permissions and run as UID 1000 user
RUN adduser -D -u 1000 app
USER app

CMD ["true"]

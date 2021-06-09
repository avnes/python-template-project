FROM python:3.9

COPY . sandbox/

WORKDIR sandbox

RUN make install && make

RUN make dev && \
    make lint && \
    make test && \
    make coverage

RUN make check || true

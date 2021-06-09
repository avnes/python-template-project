FROM python:3.9

RUN apt update && apt install -y vim

COPY . python-template-project/

WORKDIR python-template-project

RUN make install && make

RUN make dev && \
    make lint && \
    make test && \
    make coverage

RUN make check && \
    make fix || true

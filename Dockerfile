FROM python:3.9

COPY . sandbox/

WORKDIR sandbox

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

RUN . $HOME/.poetry/env && make install && make

RUN . $HOME/.poetry/env && \
    make dev && \
    make lint && \
    make test && \
    make coverage

RUN . $HOME/.poetry/env && \
    make check || true

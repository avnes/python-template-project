# Python Template Project

This is an opinionated way to structure a Python project using a number of productivity tools:

- Poetry from <https://python-poetry.org/>
- Makefile from <https://www.gnu.org/software/make/manual/make.html>
- pre-commit from <https://pre-commit.com/>
- black from <https://github.com/psf/black>
- flake8 from <https://github.com/pycqa/flake8>
- bandit from <https://github.com/pycqa/bandit>
- isort from <https://github.com/pycqa/isort>
- A test framework. In this project pytest and pytest-cov are used.

## Requirements

These software packages must be installed prior to using this repo:

- Python
- bash
- curl
- git

## Usage

This describes how to run the demo code in this project:

```bash
make install
make
```

## Development

### Virtual environment

```bash
poetry shell
poetry install
```

### Linter

```bash
make lint
```

### Run tests

```bash
make test
make coverage
```

### Install pre-commit hook

The Git pre-commit hook rules are defined in <.pre-commit-config.yaml>

```bash
poetry shell
pre-commit install
```

### Git check

Check if the code can pass a git pre-commit hook.

```bash
make check
```

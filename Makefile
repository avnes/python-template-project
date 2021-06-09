.PHONY: run install dev lint test coverage check

PACKAGE_DIR:=python_template_project
SHELL:=/bin/bash

run:
	source $(HOME)/.poetry/env && poetry run python main.py

install:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - \
	&& source $(HOME)/.poetry/env \
	&& poetry install --no-dev

dev:
	source $(HOME)/.poetry/env && poetry install

lint:
	source $(HOME)/.poetry/env && poetry run flake8 $(PACKAGE_DIR) tests

test:
	source $(HOME)/.poetry/env && poetry run pytest

coverage:
	source $(HOME)/.poetry/env && poetry run pytest --cov=$(PACKAGE_DIR) tests

check:
	source $(HOME)/.poetry/env && poetry run pre-commit run --all-files

fix:
	source $(HOME)/.poetry/env && poetry run pre-commit ru

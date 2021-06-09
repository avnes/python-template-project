.PHONY: run install dev lint test coverage check

PACKAGE_DIR:=python_template_project

run:
	. $(HOME)/.poetry/env && poetry run python main.py

install:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - \
	&& . $(HOME)/.poetry/env \
	&& poetry install --no-dev

dev:
	. $(HOME)/.poetry/env && poetry install && poetry run pre-commit install

lint:
	. $(HOME)/.poetry/env && poetry run flake8 $(PACKAGE_DIR) tests

test:
	. $(HOME)/.poetry/env && poetry run pytest

coverage:
	. $(HOME)/.poetry/env && poetry run pytest --cov=$(PACKAGE_DIR) tests

check:
	. $(HOME)/.poetry/env && poetry run pre-commit run --all-files

fix:
	. $(HOME)/.poetry/env && poetry run pre-commit run

docker-test:
	docker build .

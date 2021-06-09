.PHONY: run install dev lint test coverage check

PACKAGE_DIR:=python_template_project

run:
	poetry run python main.py

install:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
	poetry install --no-dev

dev:
	poetry install

lint:
	poetry run flake8 $(PACKAGE_DIR) tests

test:
	poetry run pytest

coverage:
	poetry run pytest --cov=$(PACKAGE_DIR) tests

check:
	poetry run pre-commit run --all-files

fix:
	poetry run pre-commit run

.PHONY: run install dev lint test coverage check docker-test

PACKAGE_DIR:=python_template_project

run:
	poetry run python main.py

install:
	poetry install --no-dev

dev:
	poetry install && poetry run pre-commit install

lint:
	poetry run flake8 $(PACKAGE_DIR) tests

test:
	poetry run pytest

coverage:
	poetry run pytest --cov=$(PACKAGE_DIR) tests

check:
	poetry run pre-commit run --all-files

docker-test:
	docker build .

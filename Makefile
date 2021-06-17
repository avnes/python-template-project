.PHONY: run install dev mypy pylint flake8 bandit lint test coverage check docker-test

PACKAGE_DIR:=python_template_project

run:
	poetry run python main.py

install:
	poetry install --no-dev

dev:
	poetry install && poetry run pre-commit install

flake8:
	poetry run flake8 $(PACKAGE_DIR) tests main.py

mypy:
	poetry run mypy $(PACKAGE_DIR) tests main.py

pylint:
	poetry run pylint $(PACKAGE_DIR) tests main.py

bandit:
	poetry run bandit -r $(PACKAGE_DIR) main.py

lint:
	$(MAKE) flake8
	$(MAKE) pylint
	$(MAKE) mypy
	$(MAKE) bandit

test:
	poetry run pytest

coverage:
	poetry run pytest --cov=$(PACKAGE_DIR) tests

check:
	poetry run pre-commit run --all-files

docker-test:
	docker build .

.PHONY: install data train evaluate models test docker

install:
	pip install -e ".[dev]"

data:
	mlops init-data

train:
	mlops train

evaluate:
	mlops evaluate

models:
	mlops models

test:
	pytest -q

docker:
	docker build -t mlops-cli .

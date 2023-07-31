install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C main.py

format:
	black *.py
	
test:
	python -m pytest -vv --cov=main test.py

all: install lint test
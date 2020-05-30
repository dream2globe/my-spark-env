setup:
	docker build -t my-spark-lab:latest .

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name __pycache__ | xargs rm -fr {}

.PHONY: setup clean

setup:
	docker build -t my-spark-lab:latest .
	docker run -p 8888:8888 -p 4040:4040 -p 4041:4041 -d --rm -v ~/workspace/python/SparkDefinitiveGuide:/home/jovyan/work --name my-spark-lab my-spark-lab

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name __pycache__ | xargs rm -fr {}

.PHONY: setup clean

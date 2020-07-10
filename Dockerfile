ARG BASE_CONTAINER=jupyter/all-spark-notebook
FROM $BASE_CONTAINER

USER root

RUN pip --no-cache-dir install \
	numpy \
	pandas \
	scikit-learn \
	xgboost \
	lightgbm \
	seaborn \
	requests

RUN echo 'c.NotebookApp.password="sha1:285c458cbb60:ac50e00375f1be469440b7487b0ebf13fd447af3"' >> ~/.jupyter/jupyter_notebook_config.py

WORKDIR /usr/local/spark/jars
ADD https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.20.zip /usr/local/spark/jars
RUN unzip mysql-connector-java-8.0.20.zip mysql-connector-java-8.0.20/mysql-connector-java-8.0.20.jar \
	&& mv mysql-connector-java-8.0.20/mysql-connector-java-8.0.20.jar . \
	&& rm -r mysql-connector-java-8.0.20
	
VOLUME ["/home/jovyan/work"]
WORKDIR /home/jovyan/work

EXPOSE 8888 4040 4041

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

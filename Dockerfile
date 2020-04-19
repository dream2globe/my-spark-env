ARG BASE_CONTAINER=jupyter/pyspark-notebook
FROM $BASE_CONTAINER

LABEL maintainer="shyeon.kang@gmail.com" 

USER root

RUN echo "c.NotebookApp.password='sha1:285c458cbb60:ac50e00375f1be469440b7487b0ebf13fd447af3'">>~/.jupyter/jupyter_notebook_config.py
	
VOLUME ["/home/jovyan/work"]
WORKDIR /home/jovyan/work

EXPOSE 8888 4040 4041

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

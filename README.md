# My Spark Environment
Pyspark environment for distributed file system with Jyputer lab

### Installation
<pre>
docker pull dream2globe/my-spark-env:[tag]
</pre>

### Usage - Running the docker image
<pre>
docker run -p 8888:8888 -p 4040:4040 -p 4041:4041 -d --rm -v [workingdir]:/home/jovyan/work --name my-spark-lab dream2globe/my-spark-env
</pre>

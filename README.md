# My Machine Learning Environment
Pyspark environment for distributed file system with Jyputer lab

### Installation
<pre>
docker pull dream2globe/my-spark-env:[tag]
</pre>

### Usage - Running the docker image
<pre>
docker run --gpus all -d -it --rm -v ~/workspace:/workspace -p 8888:8888 dream2globe/my-spark-env:[tag]
</pre>



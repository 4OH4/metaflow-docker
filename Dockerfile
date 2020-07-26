# datascience-jupyter
# Lightweight data science Docker container for efficient workign with Jupyter Lab

FROM jupyter/pyspark-notebook
MAINTAINER 4oh4

# Metaflow user
ARG __USERNAME=user
ENV USERNAME=$__USERNAME

WORKDIR "/"

# install dependencies
ADD ./requirements.txt /
RUN pip install -r requirements.txt

# Start Jupyter Lab
ENTRYPOINT jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='local_dev'
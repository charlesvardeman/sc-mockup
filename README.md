# Base data-science smartcontainer image

Prototype Docker Container for Data Science that uses smartcontainers to enable provenance and reusability.

Based on ideas from:
* [Microbadger labels](https://microbadger.com/labels)
* [Data Science Cookie Cutter](https://github.com/drivendata/cookiecutter-data-science)
* [Docker Cookie Cutter for Data Science](https://github.com/manifoldai/docker-cookiecutter-data-science) and
* [Torus: A Toolkit For Docker-First Data Science](https://medium.com/manifold-ai/torus-a-toolkit-for-docker-first-data-science-bddcb4c97b52)
* [Google Tensorflow Docker Image](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile)


# Syncronize Shared and Local Directories
Option 1: rsync -- only unidirectional
https://medium.freecodecamp.org/speed-up-file-access-in-docker-for-mac-fbeee65d0ee7
Option 2: unison
https://github.com/onnimonni/docker-unison




## Base package configuration
* Ubuntu 16.04 (base image ubuntu:xenial-2018228)
* Python 3.6.3
* boto3 1.7.2
* dask 0.17.2
* distributed 1.21.6
* jupyter 1.0.0
* jupyter-contrib-nbextensions 0.5.0
* keras 2.1.5
* matplotlib 2.2.2
* numpy 1.14.2
* pandas 0.22.0
* scikit-learn 0.19.1
* scipy 1.0.1
* tensorflow 1.6.0

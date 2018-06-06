# See https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile
FROM tensorflow/tensorflow:latest

MAINTAINER Charles Vardeman <http://orcid.org/000-0003-4901-6059/>

# Add binary and Dockerfile
COPY Dockerfile /

RUN apt-get update && apt-get install -y --no-install-recommends \
       git \
       rsync \
       && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*



RUN pip --no-cache-dir install \
      keras \
      cookiecutter\
      mkdocs \
      mkdocs-cinder \
      pytest



# Make data directory
RUN mkdir -p /data

WORKDIR /data
# Cookie cutter data scaffold
RUN cookiecutter --no-input https://github.com/charlesvardeman/cookiecutter-data-science project_name=foobar repo_name=foobar
RUN cp -f /notebooks/* /data/foobar/notebooks
VOLUME [ "/data" ]

# Metadata params
ARG BUILD_DATE
ARG VERSION
ARG VCS_URL
ARG VCS_REF

# Metadata
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Tensorflow" \
      org.label-schema.description="My great machine learning application" \
      org.label-schema.url="https://www.tensorflow.org" \
      org.label-schema.vcs-url=$VCS_URL \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vendor="The Googles" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0" \
      com.microscaling.docker.dockerfile="/Dockerfile" \
      com.microscaling.license="Apache-2.0"

WORKDIR "/data/foobar/notebooks"
CMD ["/run_jupyter.sh", "--allow-root"]

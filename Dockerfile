FROM debian:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	python2.7 \
	python-pip \
	python-gdal \
	python-tk \
	gdal-bin \
	libspatialindex-dev

ADD ./requirements.txt /opt/requirements.txt
RUN pip install -r "/opt/requirements.txt"

ENTRYPOINT python "/opt/bin/Geo_workflow_Step1.py" && python "/opt/bin/Geo_workflow_Step2.py"

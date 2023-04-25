FROM nvcr.io/nvidia/pytorch:20.12-py3
USER root
COPY ./ ./

ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update
RUN apt-get install apt -y
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
EXPOSE 8888


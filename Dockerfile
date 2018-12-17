FROM ubuntu:14.04
MAINTAINER Ionut Vancea <ionut.vancea@gmail.com>

RUN apt-get update \
    && apt-get install -y python-pip \
    && apt-get install -y git

WORKDIR /myapp

RUN git clone https://github.com/vioan/minflask.git .
RUN pip install -r requirements.txt

CMD python app.py

EXPOSE 7000

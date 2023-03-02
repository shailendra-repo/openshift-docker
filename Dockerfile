FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y python3-pip python3-dev

RUN pip3 install Flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
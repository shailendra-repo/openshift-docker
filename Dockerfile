FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev
RUN apt-get install -y python3-pip python3-dev

RUN pip3 install --no-cache --upgrade setuptools wheel pip
RUN pip3 install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
FROM ubuntu:16.04

RUN apt-get update
RUN apt-getinstallbuild-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev
RUN apt-getinstall python3-pip python3-dev

RUN pip install --no-cache --upgrade setuptools wheel
RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
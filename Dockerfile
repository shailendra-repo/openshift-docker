FROM ubuntu:lunar-20230301

RUN apt-get update && apt-get install -y python python-pip
RUN pip install --no-cache --upgrade pip setuptools wheel
RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
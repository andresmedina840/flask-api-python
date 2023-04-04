FROM python:3.10.8-slim-buster as python

RUN apt-get update
RUN apt-get update && apt-get install -y wkhtmltopdf
RUN apt-get update && apt-get install -y gnupg2
RUN apt-get install -y curl apt-transport-https
RUN apt-get update


ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --upgrade pip


FROM python as server

WORKDIR /usr/src/app

COPY requirements.txt .

COPY . .

RUN /bin/sh -c pip3 --no-cache-dir install -r requirements.txt

ENV FLASK_APP=src/main.py

ENV FLASK_DEBUG=0

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD [ "flask", "run" ]
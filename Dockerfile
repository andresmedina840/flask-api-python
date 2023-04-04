FROM python:3.11.2

RUN apt-get update


RUN pip install --upgrade pip \
    && mkdir /app

WORKDIR /app

COPY . /app

RUN /bin/sh -c pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

CMD ["python3", "./src/app.py"]
FROM python:3.11.2

RUN apt-get update


RUN pip3 install --upgrade pip \
    && mkdir /app

WORKDIR /app

COPY . /app

ENV SECRET_KEY=mysecretkey
ENV PGSQL_HOST=150.136.169.25
ENV PGSQL_USER=postgres
ENV PGSQL_DB_PORT=5432

RUN /bin/sh -c pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

CMD ["python3", "src/app.py"]
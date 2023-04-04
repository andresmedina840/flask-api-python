FROM python:3.11.2

RUN apt-get update

RUN pip install --upgrade pip \
    && mkdir /app

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir --upgrade -r requeriments.txt

ENV SECRET_KEY=mysecretkey
ENV PGSQL_HOST=150.136.169.25
ENV PGSQL_USER=postgres
ENV PGSQL_DB_PORT=5432

ENV FLASK_APP=main.py
ENV FLASK_DEBUG=0
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["python3", "src/app.py"]
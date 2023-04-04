FROM python:3.11.2 as python

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --upgrade pip

FROM python as server

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

ENV SECRET_KEY=mysecretkey
ENV PGSQL_HOST=150.136.169.25
ENV PGSQL_USER=postgres
ENV PGSQL_DB_PORT=5432

ENV FLASK_APP=src/app.py

EXPOSE 5000

CMD [ "flask", "run" ]
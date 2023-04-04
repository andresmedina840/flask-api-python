FROM python:3.11.2 as python

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --upgrade pip

FROM python as server

WORKDIR /usr/src/app

COPY requirements.txt .

COPY . .

RUN pip3 --no-cache-dir install -r requirements.txt

ENV FLASK_APP=src/main.py

ENV FLASK_DEBUG=0

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD [ "flask", "run" ]
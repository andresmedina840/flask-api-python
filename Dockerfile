FROM python:3
COPY . /usr/src/app
COPY requirements.txt /usr/src/app/requirements.txt
WORKDIR /usr/src/app
RUN pip install -r requirements.txt

ENV FLASK_APP=src/app.py

ENV FLASK_DEBUG=1

ENV FLASK_RUN_HOST=150.136.169.25

EXPOSE 5216
CMD ["python3", "src/app.py"]
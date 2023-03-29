FROM python:3
WORKDIR /app
ADD . /app
RUN pip install -r requerements.txt
CMD ["python", "app.py"]

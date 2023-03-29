FROM python
WORKDIR /app
ADD . /app
RUN pip install -r requerements.txt
CMD ["python", "app.py"]

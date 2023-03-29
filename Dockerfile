FROM python
WORKDIR /user/app
COPY /app /user/app
RUN pip --no-cache-dir install -r requirements.txt
CMD [ "python3", "src/app.py" ]
FROM alpine:latest
RUN apk add --no-cache python3-dev \ 
    && pip install --upgrade pip
WORKDIR /app
COPY . /app
RUN pip --version
RUN pip --no-cache-dir install -r requirements.txt
CMD [ "python3", "src/app.py" ]
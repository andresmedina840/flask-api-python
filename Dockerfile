FROM alpine:latest
RUN apt-get install python3-pip
RUN apk add --no-cache python3-dev \ 
    && pip3 install --upgrade pip
WORKDIR /app
COPY . /app
RUN pip --version
RUN pip3 --no-cache-dir install -r requirements.txt
CMD [ "python3", "src/app.py" ]
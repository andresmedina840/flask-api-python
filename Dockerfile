FROM alpine:latest
RUN apk add --no-cache python3-dev
WORKDIR /app
COPY . /app
RUN pip3 --no-cache-dir install -r requirements.txt
CMD [ "python3", "src/app.py" ]
# Sets the base image for subsequent instructions
FROM ubuntu:18.04
# Sets the working directory in the container  
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev
# Copies the files to the working directory
# Install dependencies
RUN pip install -r requirements.txt
# Copies everything to the working directory
COPY . /app
# Command to run on container start    
CMD [ "python" , "./src/app.py" ]
# Pull a base image
FROM python:3.10-slim-buster

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create a working directory for the django project
WORKDIR /code

COPY ./requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files into the working directory
COPY . /code/

# Open a port on the container
EXPOSE 8000
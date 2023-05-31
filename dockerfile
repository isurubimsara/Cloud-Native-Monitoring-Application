# Use the official Python base image with version 3.9
FROM python:3.9-slim-buster

# Set the working directory for the application
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the required dependencies
RUN apt-get update \
    && apt-get install -y gcc \
    && pip install --no-cache-dir --default-timeout=100 -r requirements.txt

# RUN pip install --no-cache-dir  -r requirements.txt command was here initially. The packages failed to download so added "--default-timeout=100"
# to resolve that.

# next couldnt build the image. ERROR: cannot build psutil wheels, tried following
#             updating python
#             creating a docker companion file to run in developer mode

# nothiing worked, the isse was "pip" was not succesfully updated inside the container building environment.
# so added other commands to update and install gcc.


# Copy the Flask app files to the working directory
COPY . .

# Set the environment variable for the Flask app
ENV FLASK_APP=app.py

# Expose port 5001 to allow external access
EXPOSE 5001

# Run the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]

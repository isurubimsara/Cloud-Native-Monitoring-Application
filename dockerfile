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

# Copy the Flask app files to the working directory
COPY . .

# Set the environment variable for the Flask app
ENV FLASK_APP=app.py

# Expose port 5001 to allow external access
EXPOSE 5001

# Run the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]

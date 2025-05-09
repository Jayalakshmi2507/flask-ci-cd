# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy application files
COPY app.py /app/

# Copy dependency requirements
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Make port 5000 available
EXPOSE 5000

# Define environment variable
ENV NAME=World

# Run the Flask app
CMD ["python", "/app/app.py"]

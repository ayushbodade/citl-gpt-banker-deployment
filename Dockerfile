# Use the official Python 3.11-slim image as the base image
FROM python:3.11-slim

# Set the working directory within the container to /app
WORKDIR /app

# Copy the application code from the host machine to the container's /app directory
COPY . /app

# Install the Python dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables for your Flask application
ENV FLASK_APP=main.py
ENV FLASK_ENV=production
ENV OPENAI_API_KEY=yourkey

# Expose port 8000 for Gunicorn (adjust if needed)
EXPOSE 8000

# Define the command to run when the container starts using Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "main:app"]

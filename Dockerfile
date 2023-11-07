# Use the official Python 3.11-slim image as the base image
FROM python:3.11-slim

# Set the working directory within the container to /app
WORKDIR /app

# Copy the application code from the host machine to the container's /app directory
COPY . /app

# Install the Python dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000, allowing external connections to this port (default for Flask)
EXPOSE 5000

# Set environment variables for your Flask application
ENV FLASK_APP=main.py
ENV FLASK_ENV=development
ENV OPENAI_API_KEY=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  

# Define the command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]

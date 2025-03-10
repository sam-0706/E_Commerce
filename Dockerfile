# Use an official Python image
FROM python:3.9-slim  # Ensure no extra spaces or invisible characters

# Set the working directory in the container
WORKDIR /app

# Copy application files
COPY . /app/

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Start the application
CMD ["python", "app.py"]  # Update with your entry script

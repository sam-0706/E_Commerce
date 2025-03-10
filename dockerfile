# Use an official Python image
FROM python:3.9-slim  # Or another Python version you need

# Set the working directory in the container
WORKDIR /app

# Copy the application files
COPY . /app/

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run the application
CMD ["python", "app.py"]  # Change this to your entry script

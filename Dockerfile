# Use the latest Python version
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy application files
COPY . /app/

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip python3-venv && \
    rm -rf /var/lib/apt/lists/*

# Create a virtual environment (best practice for Python applications)
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install required Python packages
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Start the application (Update the script name if needed)
CMD ["python", "main.py"]

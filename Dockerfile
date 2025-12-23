# Use official Python image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy only necessary files
COPY requirements.txt .
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Default command to run your app
CMD ["python", "main.py"]

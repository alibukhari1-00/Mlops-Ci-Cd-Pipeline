# Use official Python image
FROM python:3.11-slim

# Set workdir
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Set environment variable so src can be imported
ENV PYTHONPATH=/app/src

# Default command (can be overwritten)
CMD ["python", "-m", "src.train"]

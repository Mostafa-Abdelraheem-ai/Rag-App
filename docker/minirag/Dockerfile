# Use a lightweight Python image
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Copy only requirements first to leverage Docker caching
COPY src/requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app source code into the container
COPY src/ .

# Expose FastAPI's port
EXPOSE 8000

# Start the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

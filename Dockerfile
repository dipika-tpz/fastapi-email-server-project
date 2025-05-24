# Use the official Python image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# Install FastAPI and Uvicorn
RUN pip install --no-cache-dir fastapi uvicorn

# Copy the FastAPI app code
COPY main.py .

# Expose port
EXPOSE 8000

# Run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]

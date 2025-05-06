# Use a lightweight Python image
FROM python:3.10-slim

# Create and set working directory
WORKDIR /app

# Copy only requirements first to leverage Docker layer caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose port your FastAPI app will run on
EXPOSE 8000

# Default command to run your FastAPI app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

# Use official Python 3.11 image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy all local files into the container
COPY . /app

# Install dependencies if you have a requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app will run on
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]

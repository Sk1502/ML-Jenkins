FROM python:3.9-slim

RUN apt-get update && apt-get install -y git

# Create the app directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Set the command to run when the container starts
CMD ["python", "/app/model.py"]
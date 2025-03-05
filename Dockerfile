FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy all files from the current directory into the container's working directory e.g /app 
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Default commands
CMD ["python", "app.py"]

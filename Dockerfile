# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /my_flask_app

# Copy the requirements.txt into the container
COPY requirements.txt .

# Install dependencies (Flask will be installed here)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Expose the port that the Flask app will run on
EXPOSE 5000

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]

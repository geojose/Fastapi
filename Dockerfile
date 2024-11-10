# Use an official lightweight Python image as a base image
FROM python:3.9-slim

#Copy start script to root
COPY start.sh .

# Set the working directory to /app
WORKDIR /app

# Copy only the requirements file to the working directory
COPY requirements.txt .

# upgrade pip
RUN pip install --upgrade pip
# Install any dependencies
RUN pip install  -r requirements.txt

# Copy the entire application to the working directory
COPY . .

# Create a user for running the application (for security reasons)
RUN useradd -m myuser
USER myuser

# Expose the port that the application will run on
EXPOSE 3000

# Command to run the application with hot reload
CMD ["/bin/bash", "/start.sh"]

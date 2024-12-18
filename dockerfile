# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Install a simple HTTP server
RUN npm install -g http-server

# Expose port 8080 for the server
EXPOSE 8080

# Start the HTTP server
CMD ["http-server", "-p", "8080"]

# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the static files from the frontend directory into the Nginx html directory
COPY . /usr/share/nginx/html

# Make port 80 available to the world outside this container
EXPOSE 80
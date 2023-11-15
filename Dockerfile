# Use the official Nginx base image
FROM nginx:latest

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom HTML file into the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

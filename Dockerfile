# Use the official NGINX image as the base
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy HTML files from the local directory to the NGINX web root
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

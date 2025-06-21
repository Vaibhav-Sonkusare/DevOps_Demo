# Use a minimal NGINX image
FROM nginx:alpine

# Remove the default NGINX configuration
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into the NGINX HTML directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# NGINX runs automatically as the default command
# Use an official Nginx image to serve your built site
FROM nginx:alpine

# Copy the built Jekyll site from _site folder into Nginx web directory
COPY _site /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

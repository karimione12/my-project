# Use Nginx to serve static Bootstrap website
FROM nginx:alpine

# Copy everything (HTML, CSS, JS) into the Nginx web directory
COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

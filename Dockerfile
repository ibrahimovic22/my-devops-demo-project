# Use Nginx as the base image
FROM nginx:alpine

# Copy all website files into the default Nginx folder
COPY . /usr/share/nginx/html

# Expose port 80 so the container can serve HTTP traffic
EXPOSE 80

# Start Nginx automatically when the container runs
CMD ["nginx", "-g", "daemon off;"]

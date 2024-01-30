# Use an official Nginx image as the production image
FROM nginx:1.21-alpine

# WORKDIR /app
# COPY . .

# Copy the built files from the build-stage to the Nginx container
COPY /dist /usr/share/nginx/html

# Expose the port on which Nginx will run
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
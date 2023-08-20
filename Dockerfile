# Use a specific LTS version of Node.js as the base image
FROM node:18.17-bullseye AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project directory to the container
COPY . .

# Build the React app
RUN npm run build

# Stage 2: Use NGINX to serve the built React app
FROM nginx:latest

# Copy the built React app files from the build stage to the NGINX web root directory
COPY --from=build /app/build /usr/share/nginx/html

# Copy a custom NGINX configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
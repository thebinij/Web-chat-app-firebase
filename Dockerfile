# Use a specific LTS version of Node.js as the base image
FROM node:18.17-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project directory to the container
COPY . .

# Expose the port your React app will run on
EXPOSE 3000

# Define the default command to start your React app
CMD ["npm", "start"]
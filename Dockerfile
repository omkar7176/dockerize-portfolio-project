# Use the official Node.js image based on Alpine Linux for a lightweight container
FROM node:20-alpine

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# This allows us to install dependencies without copying the entire application first
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the application to the working directory
COPY . .

# Expose port 5173 to the outside world
EXPOSE 5173

# Set the command to run the application in development mode
# This will start the development server
CMD ["npm", "run", "dev"]
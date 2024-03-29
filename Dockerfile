# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all local files to the working directory in the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the server
CMD ["node", "index.js"]

# Use official Node.js LTS version im directly taking nodejs image if you take base image like ubuntu and install nodejs also no problem
# Use official Node.js LTS version
FROM node:18-alpine

# Install bash (optional)
RUN apk add --no-cache bash

# Set working directory
WORKDIR /app

# Copy only package.json and package-lock.json first (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of the app source code or COPY . /app  you can use this also
COPY . .

# Expose the app port
EXPOSE 81

# Start the app
CMD ["npm", "start"]


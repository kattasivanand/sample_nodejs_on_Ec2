# Use official Node.js LTS version
FROM node:18-alpine

# Install bash (optional)
RUN apk add --no-cache bash

# Set working directory
WORKDIR /app

# Copy package.json and install dependenciesss
RUN npm install

# Copy app source code
COPY . .

# Expose port 81
EXPOSE 81

# Start the app
CMD ["npm", "start"]

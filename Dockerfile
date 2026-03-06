
# Use an official Node.js runtime as the base
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy only package files first to optimize caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application source
COPY . .

# Expose app port (optional)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]

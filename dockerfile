# Use lightweight base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy only necessary files first
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy remaining source code
COPY . .

# App runs on this port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "dev"]

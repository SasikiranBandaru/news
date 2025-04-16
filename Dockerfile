# 1. Base Image: Use a lightweight Node.js image
FROM node:18-alpine

# 2. Set working directory in container
WORKDIR /app

# 3. Copy dependency files (for caching and faster rebuilds)
COPY package*.json ./

# 4. Install only production dependencies
RUN npm install --production

# 5. Copy rest of the application code
COPY . .

# 6. Expose the port your app runs on (adjust if needed)
EXPOSE 3000

# 7. Command to start the app
CMD ["npm", "start"]

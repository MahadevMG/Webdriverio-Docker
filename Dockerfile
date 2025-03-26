# Use a lightweight Node.js image
FROM node:22-slim

# Install dependencies for Google Chrome
RUN apt-get update && apt-get install -y wget gnupg \
    && wget -qO - https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /usr/share/keyrings/google-chrome.gpg \
    && echo 'deb [signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update \
    && apt-get install -y google-chrome-stable \
    && rm -rf /var/lib/apt/lists/*

# Set working directory in the container
WORKDIR /app

# Copy only package.json and package-lock.json first (for efficient caching)
COPY package*.json ./

# Set environment variable for NPM authentication
ARG NPM_TOKEN

# Install all other dependencies
RUN npm install

# Copy the entire ui_automation project into the container
COPY . .


# Run tests as entrypoint
ENTRYPOINT ["npm", "run", "test"]
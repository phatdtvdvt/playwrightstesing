# Get latest version of Playwright 
FROM mcr.microsoft.com/playwright:v1.46.1-jammy


# Install xvfb for headful mode
RUN apt-get update && apt-get install -y xvfb

# Set working directory 
WORKDIR /app 

# Copy package.json and package-lock.json 
COPY package*.json ./ 

# Install dependencies 
RUN npm install 

# Copy the rest of the application files 
COPY . . 

# Set entry point for CMD container 


# Get latest version of Playwright 
FROM mcr.microsoft.com/playwright:v1.46.1-jammy


# Set working directory 
WORKDIR /app 

# Copy package.json and package-lock.json 
COPY package*.json ./ 

# Install dependencies 
RUN npm install 

# Copy the rest of the application files 
COPY . . 

EXPOSE 8080

# Set entry point for CMD container 
CMD ["npx","playwright","test"]

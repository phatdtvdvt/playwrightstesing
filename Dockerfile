FROM mcr.microsoft.com/playwright:v1.46.1-jammy

# Set working directory 
WORKDIR /app 

# Copy package.json and package-lock.json 
COPY package*.json ./ 

# Install dependencies 
RUN npm install 

# Copy the rest of the application files 
COPY . . 


# Set entry point for CMD container 

# Use an official Node.js runtime as a base image
FROM node:21-alpine


# Set the working directory in the container
WORKDIR /app/

# Copy package.json and package-lock.json to the working directory
COPY package*.json /app/

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port that the application will run on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]

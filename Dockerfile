# Using the official Node.js image as the base image
FROM node:14

# Setting up the working directory inside the container
WORKDIR /usr/src/app

# Copying the package.json and package-lock.json to the working directory
COPY package*.json ./

# Installing the app dependencies
RUN npm install

# Copying the application code to the working directory
COPY . .

# Exposing port 3000 for the app
EXPOSE 3000

# Commanding to run the app
CMD [ "npm", "start" ]
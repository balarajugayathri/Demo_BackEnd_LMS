# Tells the Docker which base image to start.
FROM node:alpine

#WORKING DIR.
WORKDIR /app

COPY package*.json .

RUN npm ci

COPY . .

# Start mean application
CMD ["npm", "run", "dev"]


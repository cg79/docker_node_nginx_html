FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
RUN ls
#COPY package.json ./



# Copy app source code
COPY . .

run ls

run npm install

run npm install koa

run npm install socket.io

run ls

RUN npm install -g nodemon

EXPOSE 8080

CMD [ "npm", "start" ]

FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
RUN ls
#COPY package.json ./

#RUN npm install
# Copy app source code
COPY . .

run ls

run npm install

RUN npm install -g nodemon

EXPOSE 3001

#CMD [ "npm", "start" ]

#CMD [ "nodemon", "server" ]
run nodemon server.js

#RUN apt-get update
#RUN ["apt-get","install","-y","vim"]



FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
RUN ls
COPY package.json ./

RUN npm install
# Copy app source code
COPY . .

RUN npm install -g nodemon

#Expose port and start application
EXPOSE 8080

CMD [ "npm", "start" ]
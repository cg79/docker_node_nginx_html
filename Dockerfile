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

#install npm for ang app

WORKDIR "/usr/src/app/www"

COPY ./www ./
run ls

run npm install
RUN npm install -g @angular/cli@1.7.4 --unsafe
run ng build --prod 

#end install npm for ang app 


WORKDIR "/usr/src/app"


#Expose port and start application
EXPOSE 8080

CMD [ "npm", "start" ]
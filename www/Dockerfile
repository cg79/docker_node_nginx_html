FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies

RUN ls
COPY package.json ./

RUN npm install

# Copy app source code
COPY . .
run ls

run npm install
RUN npm install -g @angular/cli@1.7.4 --unsafe

EXPOSE 4200

CMD [ "npm", "start" ]





#FROM nginx
#LABEL author="Claudiu Gombos"

#RUN apt-get update
#RUN apt-get install vim

#RUN ["apt-get","update"]
#RUN ["apt-get","install","-y","vi"]

#COPY --from=angular-built /usr/src/app/www/dist/ /usr/share/nginx/html
#COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
#EXPOSE 80 443 3003
#CMD [ "nginx", "-g", "daemon off;" ]

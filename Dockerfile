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

RUN npm i && mkdir /ngdist && cp -R ./dist ./ngdist

#end install npm for ang app 


WORKDIR "/usr/src/app"


#Expose port and start application
EXPOSE 8080

CMD [ "npm", "start" ]

RUN apt-get update
RUN ["apt-get","install","-y","vim"]

RUN ["apt-get","install","-y","nginx"]

#RUN ["cp", "./www/dist/", "/usr/share/nginx/html"]

COPY ./nginxmy/nginx.conf /etc/nginx/nginx.conf

VOLUME [./logsclient/nginx/, /var/log/nginx:cached]

CMD [ "nginx", "-g", "daemon off;" ]





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
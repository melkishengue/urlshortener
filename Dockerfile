FROM node:7-slim

MAINTAINER Mellchisedek Hengue Touomo

# data folder should be mounted into the container

RUN mkdir /var/www

WORKDIR /var/www

# first copy package.json to have a better layered image: Node + package.json + dependencies + app
COPY ./package*.json /var/www

# set env to production
ENV NODE_ENV production

EXPOSE 3000

VOLUME []

RUN npm install

# except those in the .dockerfile
COPY . /var/www

# default command executed when we start the container
CMD ["npm", "start"]

FROM node:8.9.2

WORKDIR /app

ADD . /app

EXPOSE 3000

RUN npm install

CMD ["npm", "start"]

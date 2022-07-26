FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./
COPY tsconfig*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "run", "start"]
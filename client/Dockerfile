FROM node:14.14.0-alpine as builder

WORKDIR /app

COPY ./package.json ./

RUN npm i

COPY . .

RUN npm run build

RUN npm install --global serve

CMD ["serve", "-s", "build"]

EXPOSE 3000



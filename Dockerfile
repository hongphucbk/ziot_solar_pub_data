FROM node:latest

EXPOSE 8080

WORKDIR /app

RUN npm i npm@latest -g

COPY package.json package-lock.json ./

RUN npm install

COPY . .

CMD ["node","index.js"]


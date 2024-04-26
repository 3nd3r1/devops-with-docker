FROM node:16-alpine

WORKDIR /usr/src/app
EXPOSE 5000

COPY package.json .
RUN npm install
RUN npm install -g serve

COPY . .

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]


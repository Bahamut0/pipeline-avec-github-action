FROM node:22

WORKDIR /usr/src/app

COPY ./src/package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN ls
# ENTRYPOINT npm run
ENTRYPOINT npm test
# CMD [ "node", "calculate.js" ]
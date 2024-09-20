FROM node:22

RUN mkdir -p /app

WORKDIR /app

COPY ./src/package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN ls
# ENTRYPOINT npm run
# ENTRYPOINT npm test
CMD [ "npm", "start" ]
# CMD [ "node", "calculate.js" ]
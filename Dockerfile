# Version distroless

FROM node:22 AS build-env

RUN mkdir -p /app

COPY ./src/package*.json ./
COPY . /app

WORKDIR /app

# installer les dépendances sans le dev
RUN npm install --omit=dev

FROM gcr.io/distroless/nodejs22-debian12

COPY --from=build-env /app /app

WORKDIR /app

CMD ["index.js"]



# Version lourde

# FROM node:22

# RUN mkdir -p /app

# WORKDIR /app

# COPY ./src/package*.json ./

# RUN npm install

# COPY . .

# EXPOSE 3000

# CMD [ "npm", "start" ]


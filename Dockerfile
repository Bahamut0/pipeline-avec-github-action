# Version distroless

# Récupération de l'environnement node normal afin d'installer les packages nécéssaires
FROM node:22 AS build-env

ENV environnement="dev"

RUN mkdir -p /app

WORKDIR /app

COPY ./package*.json .

# RUN npm install --omit=dev

RUN npm install

COPY . .

# Environnement de prod - Seul les fichiers nécessaires au bon fonctionnement de l'app sont présent
# Par exemple, bin/sh et npm sont absents (l'env est donc plus léger)
FROM gcr.io/distroless/nodejs22-debian12

ENV environnement="prod"

# COPY --from=build-env /bin/sh /bin/sh
COPY --from=build-env /app /app

EXPOSE 3000

WORKDIR /app

CMD [ "./public/scripts/hello.js" ]

######

# Version lourde

# FROM node:22

# RUN mkdir -p /app

# WORKDIR /app

# #  COPY ./src/package*.json ./

# RUN npm install

# COPY . .

# EXPOSE 3000

# CMD [ "npm", "start" ]

# CMD [ "npm", "run", "start" ]


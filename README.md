# Demo : Pipeline avec Github Action sur un projet nodejs de calcul

## Outils utilisés

- Docker (Docker Desktop) et docker compose => conteneurisation
- Jest => test
- Node JS => environnement
- Github Action => CICD
- Docker Hub => Déploiement de l'image sur un registre docker


## Mise en place du projet

- installation des packages pour vérification en local
sudo apt update && sudo apt install nodejs && sudo apt install npm 
node -v
npm -v

- installer jest et vérifier
sudo npm install -g jest
npm jest

- Création des conteneurs pour le projet

    - Nodejs => comme backend avec Dockerfile
    - Nginx => comme front-end avec image pulled





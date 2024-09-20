# Demo : Pipeline avec Github Action sur un projet nodejs de calcul

## Outils utilisés

- Docker (Docker Desktop) et docker compose => conteneurisation
- Jest => test
- Node JS => environnement
- Github Action => CICD
- Docker Hub => Déploiement de l'image sur un registre 



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
    - Nginx => comme front-end avec image


### Ajout d'un runner (machine) qui exécutera le workflow à la place des vms de github

    => depuis le projet, se rendre sur : settings/actions/runners 
    => cliquer sur ajouter et saisir les différentes commandes sur la machine qui servira de runner



### Bonus - Remplacer par l'image du dockerfile par une version distroless


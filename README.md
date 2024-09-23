# Demo : Pipeline avec Github Action sur un projet nodejs de calcul basique

## Outils utilisés

- Docker (Docker Desktop) et docker compose => conteneurisation
- Jest => test unitaire
- Eslint => test de qualité du code
- COVERALLS => couverture de code
- Node JS => environnement
- Github Action => CICD
- Docker Hub => Déploiement de l'image sur un registre 


## Mise en place du projet (installation local ou sur une vm)

- installation des packages pour vérification en local
sudo apt update && sudo apt install nodejs && sudo apt install npm 
node -v
npm -v

- installer jest et vérifier
sudo npm install -g jest
npm jest

- Création des conteneurs pour le projet avec docker compose

    - Nodejs => comme backend avec Dockerfile
    - Nginx => comme front-end avec image

- Création d'un dossier public contenant le html et les scripts


    - html => formulaire de calcule simple (addition, soustraction, multiplication, division)
    - js   => scripts permettant de changer dynamiquement le résultat du calcul. 
    - Attention, calculate.js n'est pas un module dans le dossier public mais un script normal. La version module ne peut être utilisée car l'application est déployée sur un site statique sous Github

### Ajout d'un runner (machine) qui exécutera le workflow à la place des vms de github

    => depuis le projet, se rendre sur : settings/actions/runners 
    => cliquer sur ajouter et saisir les différentes commandes sur la machine qui servira de runner
    => lancer le runner avec ./run.sh
    => attention, si la ram de la machine est trop faible, le workflow peut être très lent voir ne pas fonctionner. En cas de runner, il est préférable de commenter les tests de linter



### Bonus - Remplacer par l'image du dockerfile par une version distroless

    => version plus légère de nodejs
    => ne sert que pour la prod (ne contient ni bin/sh ni npm)
    => test avec le document hello.js (affiche hello world)

# README

Ce Fichier README contient toutes les indications pour faire fonctionner le projet.

Pour contribuer, dans votre terminal, déplacez vous dans le dossier de votre choix, puis clonez le projet avec git :

`git clone ssh://git@github.com:KodeNationFR/rails_curriculum.git`

ensuite créez votre branche `git branche <VOTRE_BRANCHE> && git checkout <VOTRE_BRANCHE>`, puis travaillez normalement. une fois vos modifications faites poussez votre branche sur github `git push origin <VOTRE_BRANCHE>` (github vous demandera si vous voulez créer une nouvelle branche sur le dépot distant du nom de votre branche, confirmez) et faites une pull request.

---
assurez vous d'avoir les mêmes versions de ruby, rails, bundler, et PostgreSQL, sinon vous devrez préfixer toutes vos commande rails par `bundle exec VOTRE_COMMANDE`


* Ruby version : 2.6.3

* Rails version : 5.2.3

* Bundler version : 1.17.2

* PostgreSQL version : 9.5

* Database creation : [installer PostgreSQL](https://gorails.com/setup/ubuntu/16.04#postgresql)
  - Créer un utilisateur PostgreSQL : `sudo -u postgres createuser user`
  - Créer la BDD de dévelopement et celle de test :
  ```
  sudo service postgresql start
  sudo passwd postgres
  // cette commande vous invite à saisir votre mot de pass et à le confirmer, vous ne verrais pas votre mot de passe à l’écrit ni de petits points ou étoiles mais votre mot de passe est saisi quand même. //
  sudo -u postgres psql
  // cette commande a pour effet de te faire entrer dans la CLI, tu verras le préfix de ton terminal passer à : postgres=# //
  CREATE DATABASE "curriculum_development" OWNER "user";
  CREATE DATABASE "curriculum_test" OWNER "user";
  //cette commande renvoie “CREATE DATABASE” si tout fonctionne.
```

* Database initialization :
l'app est configurée comme suit dans `config>database.yml` , à l'étape précédente, pensez bien à créer un utilisateur "user" avec un mot de passe vide, puis de créer les BDD suivantes `curriculum_development` et `curriculum_test`.

```yml
development:
  <<: *default
  database: curriculum_development

  #username: user
  #password: ""

  test:
    <<: *default
    database: curriculum_test
    #username: user
    #password: ""
```
une fois votre environnement en place avec la bonne version de Ruby, de Rails, de bundler et de PostgreSQL, dans votre terminal, déplacez vous dans le dossier de l'app et faites `bundle install` puis `rails db:migrate` pour installer les dépendances et la connection avec votre base de donnée. Enfin `rails s` et ouvrez votre navigateur à l'adresse http://localhost:3000 .

* Git :
#### Convention Git

pour participer au projet voilà la convention de nommage des commit à respecter :

```
<type>(<portée>): <sujet>

<description>
```

comment l’écrire ? si vous utiliser un outil graphique pour git tel que gitkraken ou github desktop vous aurez un champs “title” et un champ “message” pour votre commit, donc pas de problème, si vous faites vos commits en ligne de commande, faites :
`git commit -m “<type>(<portée>): <sujet>” -m “<description>”`

###### Les différents types :

- `build` : changements qui affectent le système de build ou des dépendances externes (npm, make…
- `ci` : changements concernant les fichiers et scripts d’intégration ou de configuration (Travis, Ansible, BrowserStack…)
- `feat` : ajout d’une nouvelle fonctionnalité
- `fix` : correction d’un bug
- `perf` : amélioration des performances
- `refactor` : modification qui n’apporte ni nouvelle fonctionnalité ni d’amélioration de performances
- `style` : changement qui n’apporte aucune altération fonctionnelle ou sémantique (indentation, mise en forme, ajout d’espace, renommage d’une variable…)
- `docs` : rédaction ou mise à jour de documentation
- `test` : ajout ou modification de tests

###### La portée :

préciser simplement le nom du model, du controller, et/ou de la vue. si votre changement concerne toute l’application écrivez `app`,  si il concerne les routes : `routes` etc...

###### Le sujet :

pas de majuscule, pas de point, on écrit à l’impératif et en moins de 50 caractères
ex :  `feat(app) : ajout de l’authentification`

###### La description :
une description courte et explicite, pas de règles particulière, si ce n’est COURTE ET EXPLICITE !!




cette convention est inspirée de la convention de nommage des commit du projet angular (qui est en train de devenir une norme mondiale dans de nombreux projets de tous types), mais que j’ai volontairement simplifié pour ce projet “d’étude”, je n’ai également pas imposé l’anglais dans les commits, mais sachez que dans le milieu professionnel c’est quasiment une obligation.

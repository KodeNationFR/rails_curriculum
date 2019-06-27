# README

Ce Fichier README contient toutes les indications pour faire fonctionner le projet.


* Ruby version : 2.6.3

* Rails version : 5.2.3

* System dependencies : bundler 1.17.2

* Configuration : postgresql 9.5

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
l'app est configurée comme suit dans dans `config>database.yml` , à l'étape précédente, pensez bien à créer un utilisateur "user" avec un mot de passe vide, puis de créer les BDD suivantes `curriculum_development` et `curriculum_test`.

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
une fois votre environnement en place avec la bonne version de Ruby, de Rails
de bundler et de PostgreSQL, déplacez vous dans le dossier de l'app et faites `bundle install` puis `rails db:migrate` pour installer les dépendances et la connection avec votre base de donnée.

* ...

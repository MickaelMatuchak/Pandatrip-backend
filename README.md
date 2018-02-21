PandaTrip
=======

Conception de l'API Rest de Pandatrip.

### Les dépendances :

Télécharger Composer :
[https://getcomposer.org/download/](https://getcomposer.org/download/)

Installer les librairies :
```
composer.phar install
```
### La base de données :

Modifier le fichier ".env.dist" en ".env" et ajoutez la configuration de votre BDD.

Création de la base de données :
```
php bin/console doctrine:schema:create
```

Création des tables :
```
php bin/console doctrine:schema:update
```

### Les entités :

#### Visit
**id** : int, **name** : string, **themes** : Theme[], **images** : Image[], **reviews** : Review[], **address** : string, **country** : string, **region** : string, **city** : string, **postalCode** : integer, **description** : string, **note** : integer, **nbNotes** : integer

#### Theme
**id** : int, **name** : string, **visits** : Visit[]

#### Image
**id** : int, **url** : string, **description** : string

#### User
**id** : int, **pseudo** : string, **firstname** : string, **lastname** : string, **mail** : string, **registrationDate** : datetime, **connexionDate** : datetime, **image** : Image

#### Guide
**id** : int, **billfold** : int, **reviews** : Review[], **user** : User

#### Parcours
**id** : int, **date** : datetime, **prix** : int, **visits** : Visit[], **user** : User, **guide** : Guide

#### Review
**id** : int, **note** : int, **text** : string, **date** : datetime

### Lancer le serveur :

Générer certificat JWT et cache :
```
composer run-script local-post-install-cmd
```

Run :
```
php -S 127.0.0.1:8000 -t public/
```
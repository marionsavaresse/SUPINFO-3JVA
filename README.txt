Documentation
-------------

Afin de pouvoir lancer le projet, il y a plusieurs étapes trčs simples ŕ réaliser :

1) Importer le projet sous Eclipse en faisant Ť File > Import > Existing Projects into Workspace ť. Sélectionner alors le répertoire oů se trouve le dossier Ť 3jva ť du projet (Ť Select root directory ť).

2) Executer le script dimportation de la base via le fichier Ť SupTrip.SQL ť. Celui-ci soccupe de créer une base nommée SupTrip. Tous les campus sont déjŕ en base, et il a également 4 comptes utilisateurs (ceux avec les ID Booster de léquipe, ex: id=170754 mdp=170754).

3) Aller dans Ť Java resources > src > META-INF ť ( ou directement Ť src > META-INF ť via lexplorateur de fichiers) afin de modifier le fichier Ť persistance.xml ť. Il faudra ŕ ce niveau lŕ mettre vos propres identifiants (user et password) et vérifier le chemin pour joindre la base de données.

Le projet sera alors pręt ŕ ętre déployer sur votre navigateur.
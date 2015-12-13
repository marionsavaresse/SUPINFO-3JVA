Documentation
-------------

Afin de pouvoir lancer le projet, il y a plusieurs étapes très simples à réaliser :

1) Importer le projet sous Eclipse en faisant « File > Import > Existing Projects into Workspace ». Sélectionner alors le répertoire où se trouve le dossier « 3jva » du projet (« Select root directory »).

2) Executer le script d’importation de la base via le fichier « SupTrip.SQL ». Celui-ci s’occupe de créer une base nommée SupTrip. Tous les campus sont déjà en base, et il a également 4 comptes utilisateurs (ceux avec les ID Booster de l’équipe, ex: id=170754 mdp=170754).

3) Aller dans « Java resources > src > META-INF » ( ou directement « src > META-INF » via l’explorateur de fichiers) afin de modifier le fichier « persistance.xml ». Il faudra à ce niveau là mettre vos propres identifiants (user et password) et vérifier le chemin pour joindre la base de données.

Le projet sera alors prêt à être déployer sur votre navigateur.
Documentation
-------------

Afin de pouvoir lancer le projet, il y a plusieurs �tapes tr�s simples � r�aliser :

1) Importer le projet sous Eclipse en faisant � File > Import > Existing Projects into Workspace �. S�lectionner alors le r�pertoire o� se trouve le dossier � 3jva � du projet (� Select root directory �).

2) Executer le script d�importation de la base via le fichier � SupTrip.SQL �. Celui-ci s�occupe de cr�er une base nomm�e SupTrip. Tous les campus sont d�j� en base, et il a �galement 4 comptes utilisateurs (ceux avec les ID Booster de l��quipe, ex: id=170754 mdp=170754).

3) Aller dans � Java resources > src > META-INF � ( ou directement � src > META-INF � via l�explorateur de fichiers) afin de modifier le fichier � persistance.xml �. Il faudra � ce niveau l� mettre vos propres identifiants (user et password) et v�rifier le chemin pour joindre la base de donn�es.

Le projet sera alors pr�t � �tre d�ployer sur votre navigateur.

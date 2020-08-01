# projet-aout-2020
Site d'un restaurant végétarien.

# Description du projet
Le projet est le site d'un restaurant végétarien appelé "vegezek".
Ce site est une vitrine des différentes informations relatives au restaurant (carte, heures d'ouverture, localisation,...).

# Aspects implémentés
-1: Création de l'HTML afin d'afficher une carte reprenant les différents mets que propose le restaurant.
La carte comprend les noms des mets ainsi que pour chacun d'eux une petite description.
Les mets sont répertoriés à l'aide d'un système de tri en fonction de leur type.

-2: Interface de connexion pour les administrateurs.
Les administrateurs peuvent se connecter afin d'ajouter des mets sur la carte et de voir les suggestions faites par les clients.

-3: Interface de modification de la carte.
Les administrateurs peuvent ajouter différents mets sur la carte.

-4: Interface de connexion clients.
Les clients peuvent se connecter à l'aide d'un code clients qu'ils ont au préable reçu lors de leurs visites au restaurant.

-5: Interface de suggestions.
Les clients connectés ont la possibilté de faire des suggestions de mets à ajouter sur la carte,
suggestions qui seront visibles par les administrateurs dans leur interface dédiée.

# Détail api rest
-adminConnexion : Permet la connexion des administrateurs à la BDD.
-
Il ne prend rien en paramètre.
Il récupère les pseudos et mots de passes dans la BBD (type = JSON).

-chargSuggestions : Permet de créer un tableau d'objet d'id de suggestion, de la description de suggestion et du nom du type de mets.
-
Il ne prend rien en paramètre.
Il récupère les id des suggestions,les descriptions des suggestions et les types de mets présents dans la BBD.
Il envoie cela sous forme d'un tableau d'objet (type = JSON).

-clientConnexion : Permet la connexion des clients à la BDD.
-
Il ne prend rien en paramètre.
Il récupère les codes clients dans la BDD (type = JSON).

-mets : Permet de créer un tableau d'objet d'id de mets, de nom de mets, de description et de nom du type de mets.
-
Il ne prend rien en paramètre.
Il récupère les id des mets, les noms des mets, les descriptions et les types de mets présents dans la BDD.
Il envoie cela sous forme d'un tableau d'objet (type = JSON).

-modifCarte : Permet d'ajouter des mets dans BDD.
-
Il prend un nom de mets, une description et un id de type de mets en paramètre.
Il insère ensuite les données dans la BDD (type = RAW).

-suggestion : Permet d'ajouter des suggestions dans la BDD.
-
Il prend une description de suggestion et un id de type de mets en paramètre.
Il insère ensuite les données dans la BDD (type = RAW).

-typeMets : Permet de créer un tableau d'objet des différents types de mets.
-
Il ne prend rien en paramètre.
Il récupère les types de mets présents dans la BDD et les envois sous forme d'un tableau d'objet (type = JSON).

# Détail DB 
-administrateurs : Il s'agit de la table des administrateurs présents dans la BBD.
-
pk = id_administrateur.
Cette table comprends trois collones : 
	id_administrateur qui est auto incrémenté et qui est un entier.
	pseudo qui est un varchar(30) regrouppant les pseudos des administrateurs.
	mp qui est un varchar(30) regrouppant les mots de passes des administrateurs. 

-codesClients : Il s'agit de la table des codes clients présents dans la BBD.
-
pk = id_codeClients.
Cette table comprend deux collones : 
	id_codeClients qui est auto incrémenté et qui est un entier.
	code qui est un varchar(30) regrouppant les codes clients.

-mets : Il s'agit de la table des mets que propose le restaurant.
-
pk = id_mets.
Cette table comprend quattres collones : 
	id_mets qui est auto incrémentée et est un entié.
	nomMets qui est un varchar(100) regrouppant les noms des mets proposés.
        description qui est un long varchar regrouppant les descriptions des mets. 
	id_typeMets qui est auto incrémentée et est un entié. 

-suggestions : Il s'agit de la table des suggestions proposées par les clients.
-
pk = id_suggestion.
Cette table comprend trois collones : 
	id_suggestion qui est auto incrémentée et est un entié.
        descSuggestion qui est un long varchar regrouppant les descriptions les suggestions des clients. 
	id_typeMets qui est auto incrémentée et est un entié. 

-typesMets : Il s'agit de la tables des types de mets présents dans la BDD.
-
pk id_typeMets.
Cette table comprend deux collones.
	id_typeMets qui est auto incrémentée et est un entié.
        nomTypeMets qui est un varchar(100) regrouppant les noms des types de mets. 

# Schéma relationel 

![Schéma](schemaRelationnel.PNG)


# 202.1 - BD relationnelles, _Pokémon_

## Contexte
Développer dans le contexte de l’unité d’enseignement 202.1 – Bases de données relationnelles un système d’information pertinent et de caractère complexe (toutes proportions gardées).

Pour donner suite au choix du système d’information, il sera nécessaire de modéliser et implémenter celui-ci avant de créer du code métier qui puisse interagir avec le système.

Ainsi, le système se basera sur Pokémon, une franchise japonaise de Nintendo.
Les jeux Pokémon mettent en scène un personnage qui évolue dans un monde où les pokémons, soit des créatures, cohabitent avec les humains.
L’objectif du personnage est de traverser le monde et vaincre les meilleurs dresseurs de pokémons pour ensuite se voir attitrer le rang de maître de la Ligue.

C’est un jeu auquel j’ai joué dans mon enfance.
Lorsque les cours qui nous été enseignés portaient sur les données et notamment leur modélisation, Pokémon était typiquement un des premiers exemples qui me venait à la tête.

## Objectifs

Le système d’information à travers son modèle se devra être capable de décrire :

Le schéma relationnel, en date du 23 novembre 2023 est le suivant :
![Schéma relationnel](https://i.imgur.com/yI8Jmcd.png)

### _Pokémon_

-	Un pokémon se doit d’être identifiable avec un identifiant unique
-	Un pokémon est issu d’une génération de jeu (1ère, 2ème, …)
-	Un pokémon a entre un et deux types (feu, eau, …)
-	Un pokémon a des caractéristiques physiques (taille, poids, …)
-	Un pokémon appartient à une espèce
-	Un pokémon a un talent soit un comportement passif qui lui appartient en plus d’une nature qui lui est aléatoirement attribuée
-	Un pokémon a des statistiques de base qui sont toutefois soumises à une certaine variance
-	Un pokémon peut possiblement, dès lors que certaines conditions sont admises, évoluer (selon le niveau du pokémon ou alors par usage de certains objets)
-	Un pokémon ne peut être capturé que dans une zone soit un biome (forêt, océan, …)
...

### Progression du joueur - _implémentation optionnelle_

-	Il existe des dresseurs, dont les pokémons sont déjà affectés, répartis sur la carte et prêts à affronter le joueur
-	Le joueur dans son progrès va accumuler des badges qui lui sont nécessaires pour prétendre affronter les maîtres de la Ligue qui sont en réalité des dresseurs
-	Les dresseurs appartiennent à une catégorie de dresseurs au sens de leur profession généralement (pêcheur, mineur, …)
-	Les dresseurs sont identifiés par un nom en plus de leur catégorie
...

### Implémentation logicielle
Le logiciel métier sera développé en Python.

## Points-clés

Le scrapping de données n’est pas un problème mais leur transformation pour que celles-ci soient conformes au système d’information et son modèle est plus complexe.




## Authors

[@Dion Osmani](https://github.com/dij0s)

[@Loïc Maechler](https://github.com/eteroclia)

[@Marco Caporizzi](https://github.com/kpikpo)
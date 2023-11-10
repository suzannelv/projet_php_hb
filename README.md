# Nom du projet : LOLanguages

## Introduction

LOLanguages (Lot Of Languages) est une application d'apprentissage imaginée, inspirée par l'idée de Monsieur Delobelle, qui s'adresse au public passionné par l'apprentissage des langues étrangères. Il s'agit d'une plateforme à but non lucratif.

Au cours de la section PHP, nous avons travaillé sur des concepts tels que les tableaux, l'inclusion de fichiers, les formulaires, les variables superglobales, les sessions, la programmation orientée objet (POO), PDO, et bien d'autres.

Afin de mettre en pratique les connaissances acquises, j'ai intégré ces concepts dans cette application. J'ai également créé une base de données comprenant 38 cours et leurs chapitres correspondants, qui servira de base de données pour mon application.

Dans l'ensemble de mon code, j'ai veillé à respecter certaines règles visant à produire un "code propre" en utilisant un nommage claire. Cette approche consiste principalement à rendre le code facile à comprendre et à maintenir.

### Objectifs

L'objectif principal de ce projet est de mettre en pratique les connaissances acquises en PHP au cours de cette section, en utilisant des concepts natifs de PHP. Cela contribuera à approfondir la compréhension du fonctionnement de PHP et de la nature des structures de données standard (telles que SPL), par exemple.

### Techiniques utilisées

-   **PHP** : Langage principal utilisé dans ce projet, de manière évidente ;
-   **Javascript** : Utilisé de manière limitée, sans être l'objectif principal de ce projet ;
-   **Flobite** : Bibliothèque CSS basée sur Tailwind.

### Ressrouces utilisées

Pour le développement de ce projet, j'ai opté pour l'utilisation de ressources disponibles en ligne. Les vidéos proviennent de **YouTube**, la plupart des images sont issues de **Freepik**, et les icônes sont obtenues à partir de **Flowbite** et **Font Awesome**.

### Problématiques

-   Comment structurer ce projet de manière efficace ?
-   Comment établir la connexion avec la base de données pour afficher les données sur le navigateur ?
-   Enfin, comment gérer les rôles d'administrateur et des utilisateurs de manière adéquate ?

### Structure de base de données

La structure de la base de données est présentée ci-dessous:
![strucure BDD](/assets/structure-bdd.png)

Ici, je ne vais pas préciser et détailler chaque tableau.
En résumé, dans le tableau `courses`, il y a trois clés étrangères:

-   `level_id` (Trois niveaux: débutant/intermédiaire/avancé);
-   `teacher_id` (comprenant le nom, le prénom et la photo profile des enseignants);
-   `lang_id` (les noms des langues).

Dans le tableau `users`, il inclut les informations de base sur l'utilisateur inscrit. Entre les tableaux `users` et `courses`, il y a un tableau de transition qui permet à l'utilisateur de sélectionner les cours dans leur liste de vœux pour les consulter ultérieurement.

## Réalisation du projet

Dans ce projet, le travail le plus important a consisté à récupérer les données pour les afficher sur les pages correspondantes et la connextion des utilisateurs.

### Structure du projet

```bash
<?php
|📗admin.php -> cette partie je n'ai pas réussi à tout terminer, j'ai seulement accompli  l'affichage des informations sur les cours.'
  |📃index.php
  |📃operation_process.php
  |📃template-list.php
|📔assets/
  |📓css/
    |📃style.css
  |📓img/
    |📁icon/(svg)
    |images(jpg/ico/svg)...
  |📓js/
|📕classes/
  |📙Exception
    |📃EmptyEmailException.php -> erreur lancé si email vide
    |📃InvalidEmailException.php -> erreur lancé si email invalide
  |📃AbstractPdo.php -> classe abstract PDO
  |📃AppError.php  -> code et message sur App
  |📃EmailError.php  -> méthode pour récupérer les erreurs
  |📃Email.php -> code de message sur Email
  |📃Chapiter.php -> classe sur chapitre
  |📃Course.php -> classe sur les cours
  |📃CourseLanguage.php -> classe sur les langues
  |📃CourseLevel.php -> classe sur les niveau de langue
  |📃CourseSelected.php -> classe sur la sélection des cours pour ajouter dans la liste de voeux, mais pas réussi à intégrer dans ce projet 😢
  |📃CourseTag.php -> classe sur les étiquettes des cours
  |📃MenuItem.php -> classe pour les style css des éléments sur navigation
  |📃Pagination.php -> pas réussi à faire non plus 😢
  |📃SpamChecker.php -> classe vérifier si email est un spam ou pas
  |📃TeacherInfo.php -> classe sur les enseignants
  |📃Utils.php -> Classe comprenant des méthodes statiques telles que ``headers()`` pour rediriger et convertir les minutes en heures.
|📘config
  |📇db.ini
  |📃.gitignore -> (inclure db.ini)
  |📃db.ini-template
|📕function/
  |📃db.php -> connection à la base de données
|📕layout/
  |📓home/ -> Il s'agit des fichiers présents sur la page d'accuei
  |📃head.php -> les métas
  |📃nav.php -> navigation
  |📃menuFilter.php -> menu de filtrage pour filter les cours
  |📃chapiterContent.php -> composant sur le chapitre qui affiche sur la page détaillé des cours
  |📃footer.php
  |📃footer.php
|📕template/
  |📃course-card.php -> la carte pour chaque cours
|📕uploads/ -> Des photos téléchargées et sauvegardées localement
|📃index.php -> home page
|📃about.php -> page statique sur la présentation de cette plateforme
|📃news.php -> page statique sur les actualités
|📃contact.php -> page statique sur le contact
|📃course.php -> page pour afficher tous les cours (38)
|📃courseDetail.php -> page détaillée sur chaque cours
|📃like-btn.php -> fichier pour traiter la fonction d'ajouter les cours sélectionnés dans la liste de voeux'
|📃login.php -> page pour se connecter
|📃auth.php -> verifier l'identifiant et le mot de passe de l'utilisateur
|📃logout.php -> fichier pour détruire les données si l'utilisateur se déconnecte'
|📃register.php -> page pour s'inscrire '
|📃register_process.php -> fichier pour traiter l'inscription '
|📃register_confirme.php -> Une fois que l'utilisateur a réussi à s'inscrire, cette page affichera un message pour l'informer de sa réussite'
|📃account.php -> page sur le compte de l'utilisateur '
|📃updateInfo.php -> page qui permets à l'utilisateur de mettre à jour ses info '
|📃update_process.php -> fichier responsable de la demande de l'utilisateur pour mettre à jour ses informations.'
|📃.devcontainer.json -> fichier config

```

### Classes

Les classes jouent un rôle essentiel dans ce projet, et en termes de dénomination, j'ai veillé à adopter la notation PascalCase pour nommer mes classes.

Compte tenu de la complexité de la structure de la base de données, notamment avec les tableaux de transition, j'ai opté pour la création de classes dédiées à chaque clé étrangère. Ensuite, je les ai importées à l'aide de la directive `require_once` dans la classe principale de ce projet. J'ai également cherché à factoriser les codes pour les encapsuler, bien que cela ne soit pas encore parfait.

L'objectif est de maximiser la séparation entre les différentes classes, assignant à chacune une responsabilité spécifique. Cela facilite la maintenance du code en rendant la lisibilité plus claire et le développement plus aisé.

### Connexion à la base de données

En considération de la sécurité des informations de la base de données, le fichier contenant les véritables informations est inclus dans le fichier `.gitignore`.

La fonction chargée de la connexion à la base de données se trouve dans le fichier `functions/db.php`. Cette fonction est encapsulée dans une fonction appelée `getConnection` avec toutes les variables nécessaires, et elle retourne un objet`PDO`.

Ainsi, pour les pages nécessitant l'utilisation des données, il suffit d'appeler cette fonction, ce qui permet d'éviter la redondance de code.

### Fonctionnalités

#### Connexion/Inscription

J'ai créé des formulaires permettant aux utilisateurs de s'inscrire ou de se connecter.

Au niveau des classes, j'ai implémenté des vérifications visant à identifier et examiner d'éventuelles erreurs, telles que le format du numéro de téléphone, la validité des adresses e-mail, etc.

Lorsqu'un utilisateur s'inscrit, il a également la possibilité de télécharger sa photo de profil.

#### Fonction de filtrage

Pour améliorer l'expérience utilisateur, j'ai ajouté une fonction de filtrage permettant aux utilisateurs de sélectionner les cours souhaités en fonction de la **langue**, du **niveau** et des **étiquettes**.

Dans cette partie, le fichier `menuFilter.php` (situé dans le répertoire layout/) doit se connecter à la base de données en utilisant les tables `course_tag`, `course_tag_asso`, `level` et `languages` (à l'aide des classes `CourseLanguage`,`CourseLevel` et `CourseTag`). Ces trois options sont incluses dans un formulaire avec la méthode `POST`.

Par ailleurs, un petit morceau de code JavaScript gère l'affichage du menu de filtrage. Lorsque l'écran est de petite taille, le contenu du menu est masqué derrière une icône. En cliquant sur cette icône, les options de filtrage sont affichées.

## Problèmes rencontrés

## Conclusion

### Bilan des connaissances acquises

### Bilan personnel

Ce projet m’a permis d'améliorer mes connaissances et compétences en informatique, en particulier dans le développement web. Bien que j’aie seulement eu une brève introduction au langage JavaScript et à Angular lors des cours, ces langages m’ont inspiré l'idée d'utiliser Angular et son approche de composant et de SPA pour ce projet. Cependant, j’ai finalement opté pour l'auto-apprentissage de Vue, car il était plus adapté pour ce petit projet.
J’ai également pu acquérir des notions essentielles telles que les "store" et "services", qui n'ont pas été suffisamment abordés dans nos cours. Bien que cela ait parfois été difficile, j’ai réussi à les appliquer dans mon projet. J’ai ainsi pu développer mes compétences en dehors des cours et j’ai trouvé cela très gratifiant.
En fin de compte, je suis ravie d'avoir appris de nouvelles compétences et d'avoir appliqué ces connaissances dans ce projet. J’ai constaté que l'apprentissage en dehors des cours peut être très utile et motivant.

## Améliorations prévues

Ce projet a été une grande première pour moi, je n’avais jamais développé sur une si grande échelle sur une période aussi longue. Et je dois dire que j’ai vraiment apprécié cela ! Grâce à ce projet, j’ai découvert de nouveaux frameworks comme Vue, des outils tels que Axios, Pinia, ainsi que d'autres frameworks d'interface utilisateur.
Cependant, je suis déçue de ne pas avoir réussi à implémenter tout ce que je voulais, en particulier la partie sur le filtre combiné (par exemple pour la sélection d'un film selon son type, sa langue, sa date, etc.) et la bande-annonce à afficher sur la page de détails du film ou de la série. Malgré cela, j’ai quand même atteint l’objectif principal qui était de récupérer les données via l’API externe pour les afficher sur les pages correspondantes.
Sur une note personnelle, ce projet a façonné ma vision de l’informatique professionnelle, tout en me permettant d'affiner mon choix d'avenir et d'apprendre des connaissances en back-end et en base de données. Dans l'ensemble, cette expérience a été plus que positive.

# Nom du projet : LOLanguages

## 1. Introduction

LOLanguages (Lot Of Languages) est une application d'apprentissage imaginée, inspirée par l'idée de Monsieur Delobelle, qui s'adresse au public passionné par l'apprentissage des langues étrangères. Il s'agit d'une plateforme à but non lucratif.

Au cours de la section PHP, nous avons travaillé sur des concepts tels que les tableaux, l'inclusion de fichiers, les formulaires, les variables superglobales, les sessions, la programmation orientée objet (POO), PDO, et bien d'autres.

Afin de mettre en pratique les connaissances acquises, j'ai intégré ces concepts dans cette application. J'ai également créé une base de données comprenant 38 cours et leurs chapitres correspondants, qui servira de base de données pour mon application.

Dans l'ensemble de mon code, j'ai veillé à respecter certaines règles visant à produire un [**code propre**](https://www.fidesio.com/clean-code-definition-avantages-et-principes#:~:text=Le%20terme%20Clean%20Code%20fait,d%C3%A9finition%20subjective%20du%20Clean%20Code.) en utilisant un **nommage claire**. Cette approche consiste principalement à rendre le code facile à comprendre et à maintenir.

### 1.1 Objectifs

L'objectif principal de ce projet est de mettre en pratique les connaissances acquises en PHP au cours de cette section, en utilisant des concepts natifs de PHP. Cela contribuera à approfondir la compréhension du fonctionnement de PHP et de la nature des structures de données standard (telles que SPL), par exemple.

### 1.2 Techiniques utilisées

-   **PHP** : Langage principal utilisé dans ce projet, de manière évidente ;
-   **Javascript** : Utilisé de manière limitée, sans être l'objectif principal de ce projet ;
-   **Flowbite** : Bibliothèque CSS basée sur Tailwind.

### 1.3 Ressources utilisées

Pour le développement de ce projet, j'ai opté pour l'utilisation de ressources disponibles en ligne. Les vidéos proviennent de **YouTube**, la plupart des images sont issues de **Freepik**, et les icônes sont obtenues à partir de **Flowbite** et **Font Awesome**.

### 1.4 Problématiques

-   Comment structurer ce projet de manière efficace ?
-   Comment établir la connexion avec la base de données pour afficher les données sur le navigateur ?
-   Enfin, comment gérer les rôles d'administrateur et des utilisateurs de manière adéquate ?

### 1.5 Structure de base de données

La structure de la base de données est présentée ci-dessous:
![strucure BDD](/assets/structure-bdd.png)

Ici, je ne vais pas préciser et détailler chaque tableau.

En résumé, dans le tableau `courses`, il y a trois clés étrangères:

-   `level_id` (Trois niveaux: débutant/intermédiaire/avancé);
-   `teacher_id` (comprenant le nom, le prénom et la photo profile des enseignants);
-   `lang_id` (les noms des langues).

Dans le tableau `users`, il inclut les informations de base sur l'utilisateur inscrit. Entre les tableaux `users` et `courses`, il y a un **tableau de transition** qui permet à l'utilisateur de sélectionner les cours dans leur liste de vœux pour les consulter ultérieurement.

## 2. Réalisation du projet

Dans ce projet, le travail le plus important a consisté à récupérer les données pour les afficher sur les pages correspondantes et la connextion des utilisateurs.

### 2.1 Structure du projet

```bash
<?php
|📗admin.php ➡️ cette partie je n'ai pas réussi à tout terminer, j'ai seulement accompli l'affichage des informations sur les cours.😢
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
    |📃counter_up.js ➡️ Les chiffres augmentent au fur et à mesure que l'on fait défiler jusqu'à cette partie, présente sur la page d\'accueil
|📕classes/
  |📙Exception
    |📃EmptyEmailException.php ➡️ erreur lancé si email vide
    |📃InvalidEmailException.php ➡️ erreur lancé si email invalide
  |📃AbstractPdo.php ➡️ classe abstract PDO
  |📃AppError.php  ➡️ code et message sur App
  |📃EmailError.php  ➡️ méthode pour récupérer les erreurs
  |📃Email.php ➡️ code de message sur Email
  |📃Chapiter.php ➡️ classe sur chapitre
  |📃Course.php ➡️ classe sur les cours
  |📃CourseLanguage.php ➡️ classe sur les langues
  |📃CourseLevel.php ➡️ classe sur les niveau de langue
  |📃CourseSelected.php ➡️ classe sur la sélection des cours pour ajouter dans la liste de voeux, mais pas réussi à intégrer dans ce projet 😢
  |📃CourseTag.php ➡️ classe sur les étiquettes des cours
  |📃MenuItem.php ➡️ classe pour les style css des éléments sur navigation
  |📃Pagination.php ➡️ pas réussi à faire non plus 😢
  |📃SpamChecker.php ➡️ classe vérifier si email est un spam ou pas
  |📃TeacherInfo.php ➡️ classe sur les enseignants
  |📃Utils.php ➡️ Classe comprenant des méthodes statiques telles que ``headers()`` pour rediriger et convertir les minutes en heures.
|📘config
  |📇db.ini
  |📃.gitignore ➡️ (inclure db.ini)
  |📃db.ini-template
|📕function/
  |📃db.php ➡️ connection à la base de données
|📕layout/
  |📓home/ ➡️ Il s'agit des fichiers présents sur la page d'accueil
  |📃head.php ➡️ les métas
  |📃nav.php ➡️ navigation
  |📃menuFilter.php ➡️ menu de filtrage pour filter les cours
  |📃chapiterContent.php ➡️ composant sur le chapitre qui affiche sur la page détaillé des cours
  |📃footer.php
  |📃footer.php
|📕template/
  |📃course-card.php ➡️ la carte pour chaque cours
|📕uploads/ ➡️ Des photos téléchargées et sauvegardées localement
|📃index.php ➡️ home page
|📃about.php ➡️ page statique sur la présentation de cette plateforme
|📃news.php ➡️ page statique sur les actualités
|📃contact.php ➡️ page statique sur le contact
|📃course.php ➡️ page pour afficher tous les cours (38)
|📃courseDetail.php ➡️ page détaillée sur chaque cours
|📃like-btn.php ➡️ fichier pour traiter la fonction d'ajouter les cours sélectionnés dans la liste de voeux
|📃login.php ➡️ page pour se connecter
|📃auth.php ➡️ verifier l'identifiant et le mot de passe de l'utilisateur
|📃logout.php ➡️ fichier pour détruire les données si l'utilisateur se déconnecte
|📃register.php ➡️ page pour s'inscrire
|📃register_process.php ➡️ fichier pour traiter l'inscription
|📃register_confirme.php ➡️ Une fois que l'utilisateur a réussi à s'inscrire, cette page affichera un message pour l'informer de sa réussite
|📃account.php ➡️ page sur le compte de l'utilisateur
|📃updateInfo.php ➡️ page qui permets à l'utilisateur de mettre à jour ses info
|📃update_process.php ➡️ fichier responsable de la demande de l'utilisateur pour mettre à jour ses informations.
|📃.devcontainer.json ➡️ fichier config

```

### 2.2 Classes

Les classes jouent un rôle essentiel dans ce projet, et en termes de dénomination, j'ai veillé à adopter la notation **PascalCase** pour nommer mes classes.

Compte tenu de la complexité de la structure de la base de données, notamment avec les tableaux de transition, j'ai opté pour la création de classes dédiées à chaque clé étrangère. Ensuite, je les ai importées à l'aide de la directive `require_once` dans la classe principale de ce projet. J'ai également cherché à factoriser les codes pour les encapsuler, bien que cela ne soit pas encore parfait.

L'objectif est de maximiser la séparation entre les différentes classes, assignant à chacune une responsabilité spécifique. Cela facilite la maintenance du code en rendant la lisibilité plus claire et le développement plus aisé.

### 2.3 Connexion à la base de données

En considération de la sécurité des informations de la base de données, le fichier contenant les véritables informations est inclus dans le fichier `.gitignore`.

La fonction chargée de la connexion à la base de données se trouve dans le fichier `functions/db.php`. Cette fonction est encapsulée dans une fonction appelée `getConnection()` avec toutes les variables nécessaires, et elle retourne un objet`PDO`.

Ainsi, pour les pages nécessitant l'utilisation des données, il suffit d'appeler cette fonction, ce qui permet d'éviter la redondance de code.

### 2.4 Fonctionnalités

#### 2.4.1 Opération CRUD

Dans ce projet, j'ai intégré les opérations `SELECT`, `UPDATE`, `INSERT` pour effectuer les requêtes.

-   **Sélection (SELECT)** : Pour récupérer des données depuis la base de données, j'ai mis en place des requêtes `SELECT`. Ces opérations permettent d'extraire des informations spécifiques, par exemple, afficher la liste des cours disponibles, les détails d'un utilisateur, etc.

-   **Mise à jour (UPDATE)** : J'ai appliqué l'opération `UPDATE` dans la section permettant aux utilisateurs de modifier leurs informations depuis leur compte.

-   **Insertion (INSERT)** : Les opérations `INSERT` sont mises en œuvre pour ajouter de nouvelles données à la base de données. Par exemple, l'enregistrement d'un nouvel utilisateur.

Pour toutes les données saisies par l'utilisateur, j'ai mis en place des requêtes préparées afin d'assurer la sécurité du projet.

#### 2.4.2 Connexion/Inscription

J'ai créé des formulaires permettant aux utilisateurs de s'inscrire ou de se connecter.

Au niveau des classes, j'ai implémenté des vérifications visant à identifier et examiner d'éventuelles erreurs, telles que le format du numéro de téléphone, la validité des adresses e-mail, etc.

Lorsqu'un utilisateur s'inscrit, il a également la possibilité de télécharger sa photo de profil.

Pendant la navigation des pages, si un utilisateur demeure connecté, sa photo ainsi que son adresse e-mail, sont affichées dans la barre de navigation.

#### 2.4.3 Fonction de filtrage

Pour améliorer l'expérience utilisateur, j'ai ajouté une fonction de filtrage permettant aux utilisateurs de sélectionner les cours souhaités en fonction de la **langue**, du **niveau** et des **étiquettes**.

Dans cette partie, le fichier `menuFilter.php` (situé dans le répertoire `layout/`) doit se connecter à la base de données en utilisant les tables `course_tag`, `course_tag_asso`, `level` et `languages` (à l'aide des classes `CourseLanguage`,`CourseLevel` et `CourseTag`). Ces trois options sont incluses dans un formulaire avec la méthode `POST`.

Par ailleurs, un petit morceau de code JavaScript gère l'affichage du menu de filtrage. Lorsque l'écran est de petite taille, le contenu du menu est masqué derrière une icône. En cliquant sur cette icône, les options de filtrage sont affichées.

#### 2.4.4 Ajout dans la liste de souhaits

Dans le modèle `course-card.php`, j'ai également inclus une icône de smiley sur chaque carte de cours. Cela offre aux utilisateurs la possibilité d'ajouter les cours qui les intéressent à leur liste de souhaits, un composant accessible depuis la page du compte utilisateur (`account.php`).

## 3. Problèmes rencontrés et limites

### 3.1 Remplissage de la base de données

Remplir la base de données est une tâche conséquente qui demande du temps. J'ai eu la chance de bénéficier des scripts élaborés par Monsieur Deloblle, lesquels permettent de générer des données aléatoires pour faciliter ce processus. Cependant, concernant les chapitres, cette étape a nécessité un investissement de temps considérable de ma part.

### 3.2 Organisation de la structure du projet

La complexité liée à l'organisation des fichiers et des dossiers dans un projet PHP natif suscite fréquemment des interrogations. Pour améliorer la structure de ce projet, plusieurs aspects méritent attention :

-   **Modularité** : Il est essentiel de découper le code en modules logiques, tels que des classes dédiées à la gestion des cours, à la manipulation de la base de données, à la présentation visuelle, etc.

-   **Répertoire "template"** : La question de savoir si placer le répertoire `template` dans le dossier `layout/` ou dans un dossier indépendant peut être délicate. Dans ce projet, j'ai opté pour la seconde option.

-   **Gestion des clés étrangères et des tableaux de transition**: J'ai rencontré quelques difficultés lorsqu'il s'agit de récupérer des données à partir de tableaux contenant des clés étrangères ou des tableaux de transition.

### 3.3 Factorisation du code

La **factorisation du code** rend le projet plus facile à maintenir et plus lisible.

Cependant, en raison d'un manque de compréhension du concept de factorisation, il m'arrive parfois de ne pas savoir quand et où effectuer cette opération, et je doute également de l'efficacité de l'optimisation de la factorisation.

Face à ces défis, j'ai entrepris des recherches de solutions auprès de Monsieur Delobelle, ainsi que sur des sources en ligne telles que Google, des forums français et chinois, et ChatGPT. Ces ressources m'ont permis d'explorer différentes approches pour résoudre ces problèmes spécifiques.

### 3.4 Gestion des erreurs

La gestion des erreurs est un aspect un peu complexe pour moi. Dans ce projet, j'ai mis en place des vérifications pour les adresses e-mail, les numéros de téléphone et l'identification des mots de passe. Cependant, je n'ai pas encore implémenté de vérifications pour la date de naissance ni pour les fichiers téléchargés, notamment en ce qui concerne la taille et le type de fichier. Cela s'explique par le fait que cette implémentation nécessiterait des configurations au niveau du fichier `php.ini`, et je suis un peu réticent à le modifier directement.

Dans le futur, je prévois de me pencher davantage sur ces aspects pour améliorer la gestion des erreurs et renforcer la sécurité du projet.

## 4. Conclusion

### 4.1 Bilan des connaissances acquises

Ce projet a été une occasion de consolider l'ensemble des connaissances acquises au cours de la session PHP en les mettant en pratique de manière concrète.

Bien que certaines parties du projet m'aient semblé un peu difficiles et même abstraites, telles que les classes abstraites, PDO et SESSION, la clarté s'est progressivement installée au fur et à mesure du développement du projet, notamment grâce aux explications fournies par Monsieur Delobelle.

En fin de compte, je suis ravie d'avoir acquis de nouvelles compétences et de les avoir mises en œuvre dans ce projet. Ce parcours d'apprentissage dans le domaine PHP s'est révélé extrêmement enrichissant et motivant. La complexité des concepts abordés a été un défi gratifiant qui a renforcé ma compréhension globale de la programmation PHP.

### 4.2 Bilan personnel

Ce projet a constitué ma première expérience significative en PHP, et je dois dire que j'ai grandement apprécié cette expérience !

La fusion entre la théorie et la pratique, ainsi que l'apprentissage d'un nouveau langage, ont été des aspects particulièrement intéressants pour moi.

Cependant, je ressens une pointe de déception de n'avoir pas réussi à implémenter toutes les fonctionnalités que je souhaitais, notamment la partie dédiée à la pagination, l'enregistrement de l'historique des cours consultés, la section d'administration pour gérer la base de données, etc.

Malgré ces défis, j'ai néanmoins accompli l'objectif principal qui consistait à manipuler les données depuis la base de données pour les afficher sur les pages correspondantes.

D'un point de vue personnel, ce projet a considérablement influencé ma perception de mon premier langage back-end, suscitant en moi le désir d'explorer davantage avec Symfony.

Dans l'ensemble, cette expérience s'est révélée plutôt positive.

### 4.3 Améliorations prévues

Il existe plusieurs aspects du projet qui nécessitent des améliorations, comme mentionné précédemment, notamment la partie administrative, etc.

Cependant, étant donné que nous nous apprêtons à entamer une nouvelle expérience avec le framework **Symfony**, il serait envisageable de refaire ce projet avec Symfony pour concrétiser ce que je n'avais pas accompli dans cette première version.

Cette transition vers Symfony pourrait non seulement permettre la réalisation des fonctionnalités manquantes, mais aussi offrir de nouvelles possibilités et une meilleure structure 😊 .

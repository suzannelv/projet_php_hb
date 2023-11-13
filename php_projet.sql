-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 13 nov. 2023 à 08:48
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `php_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `chapiter`
--

DROP TABLE IF EXISTS `chapiter`;
CREATE TABLE IF NOT EXISTS `chapiter` (
  `id_chapiter` int NOT NULL AUTO_INCREMENT,
  `chapiter_title` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `chapiter_duration_minutes` int NOT NULL,
  `chapiter_video_id` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `chapiter_content` text COLLATE utf8mb4_general_ci NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id_chapiter`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chapiter`
--

INSERT INTO `chapiter` (`id_chapiter`, `chapiter_title`, `chapiter_duration_minutes`, `chapiter_video_id`, `chapiter_content`, `course_id`) VALUES
(1, 'Module 1', 70, '0vsTGO1GPm0', '- Le Présent\n- Les prénoms\n- Do VS Make\n- Le pluriel\n- Le présent continu\n- Le passé simple\n- Say VS Tell', 1),
(2, 'Module 2', 65, '-XnXZ-3fx9Q', '- Les verbes modaux\r\n- Present perfect simple\r\n- Since vs For ; Never vs Ever\r\n- Construire une question\r\n- Can vs Be able to\r\n- Le passé continue', 1),
(3, 'Module 3', 56, '2QBR_nisc6k', '- Hope vs Wish ; Hard vs Hardly\r\n- Les discours direct et indirect (reported speech)\r\n- Les auxiliaires\r\n- As ... as vs The same ... as\r\n- Les adjectifs\r\n- Les voix actives et passives\r\n- Such vs So ; As vs Like\r\n\r\n', 1),
(4, 'Module 4', 47, '2QBR_nisc6k', '- Must vs Have to\r\n- Past perfect\r\n- Present perfect continuous\r\n- Past perfect continuous\r\n- Would rather vs Prefer to\r\n- Les prépositions\r\n', 1),
(5, 'Module 1', 49, 'YAJR7ZhIQsQ', '- English Phonetic\r\n- Phonetic Cas Pratique\r\n- Alphabet\r\n- Salutation\r\n- Présentation personnelle', 2),
(6, 'Module 2', 68, 'SqJlGwi4lsI', '- Les pronoms\r\n- L\'auxiliaire TO BE : Le présent simple\r\n- L\'auxiliaire TO BE : Le passé simple (prétérit)\r\n- L\'auxiliaire TO HAVE : Le présent simple\r\n- L\'auxiliaire TO HAVE : Le futur simple\r\n- L\'utilisation de : SOME, ANY, NO', 2),
(7, 'Module 3', 33, 'SqJlGwi4lsI', '- L\'utilisation de : to, at, from, since, ago, for, during\r\n- No more, any more / No longer, any longer\r\n- Les comparatifs et superlatifs\r\n- L\'utilisation de \"TO BE GOING TO\"\r\n', 2),
(8, 'Module 4', 30, '-8cDYCNIyxc', '- La forme idiomatique de TO BE\r\n- La forme idiomatique de TO HAVE\r\n- Les formes continues : Présent, passé et futur continu\r\n- L\'utilisation de : this, that, these, those\r\n- L\'utilisation de : THERE + BE\r\n\r\n', 2),
(9, 'Introduction', 503, 'WPfq-O0tE7Y', '- Salutations. Présentations et alphabet. Compétences d’orthographie\r\n- Les chiffres. Numéros cardinaux et ordinaux\r\n- Les chiffres. Numéros cardinaux et ordinaux\r\n- Les chiffres. Points décimales, Pourcentages et Fractions. Argent, mesures\r\n- Nom et renseignements personnels\r\n- Ceci, cela, ici, là. Animaux.\r\n- Verbes d\'action\r\n- Adjectifs. Adjectifs comparatifs et superlatifs. Couleurs\r\n- Utilisation des prépositions de base. Prépositions\r\n- Il y a. Noms\r\n- Mots d’interrogation\r\n- Verbes irréguliers\r\n- Adverbes de fréquence.\r\n- Emplois\r\n- Émotions\r\n- Temps continu\r\n- Grammaire essentielle\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 3),
(10, 'Bonus Lecture: Discount for Next Level', 5, 'WPfq-O0tE7Y', '- L\'humeur de la phrase\r\n- Voix active et voix passive\r\n- Thank You\r\n', 3),
(11, 'Leçon 1 - Introduction', 13, 'umicXVGQIAI', '- Comment apprendre ce cours ?\r\n- Qu\'est-ce que la langue chinoise ? Comment l\'apprendre ?\r\n- Il y a combien de mots dans la liste de HSK 1 ?', 4),
(12, 'Leçon 2 - Comprendre le Pinyin', 16, 'umicXVGQIAI', '- Pinyin\r\n- Les voyelles et les initiaux\r\n- Comment prononcer les lettres en Pinyin\r\n- Il y a combien de syllabe pour chaque caractère chinois ?\r\n- les 4 tons chinois\r\n- les 6 voyelles avec les 4 tons\r\n\r\n\r\n', 4),
(13, 'Leçon 3 - Les nombres', 9, 'wkZ7M9RJvIc', '- Compter avec les mains\r\n- Dictée - nombre\r\n- 1-99', 4),
(14, 'Leçon 4 - Comment écrire en chinois?', 21, 'wkZ7M9RJvIc', '- Comment écrire les caractères?\r\n- 1 à 10 en chinois\r\n\r\n', 4),
(15, 'Leçon 6 - Les jours et les mois\r\n', 5, 'wkZ7M9RJvIc', '- Les mois de l\'année\r\n- Les jours\r\n- Les dates\r\n- La semaine\r\n- Le week-end\r\n', 4),
(16, 'Introduction', 16, 'Slcag8GIMhM', '- Introduction\r\n- Présentation du cours\r\n- Objectifs du cours', 5),
(17, 'La Chine ', 6, 'Slcag8GIMhM', '- La Chine', 5),
(18, 'Les connaissances de base', 76, 'Slcag8GIMhM', '- Les tons\r\n- La prononciation\r\n- Les clés et les radicaux\r\n- L\'écriture des caractères\r\n- La grammaire\r\n- Vocabulaire', 5),
(19, 'Cours 1', 21, 'H9LsSvemmzM', '- Pratiquer les tons avec \"ü\"\r\n- Les consonnes : b, p, m, f, d, t, n, l, g, k, h\r\n- Pratiquer les syllabes avec \"b\" et \"p\"\r\n- Pratiquer les syllabes avec \"d\" et \"t\"\r\n- Pratiquer les syllabes avec \"h\"\r\n- Exercice 1.1 - Pratiquer le ton 1\r\n- Exercice 1.2 - Pratiquer le ton 2\r\n- Exercice 1.3 - Pratiquer le ton 3\r\n- Exercice 1.4 - Pratiquer le ton 4\r\n- Exercice 1.5 - Répétition des 4 tons\r\n- Exercice 2 - Trouver les consonnes\r\n- Exercice 3 - Trouver les voyelles\r\n- Exercice 4 - Trouver les tons\r\n- Exercice 5 - Dictée\r\n- Pratiquer la prononciation avec un poème\r\n', 6),
(20, 'Cours 2', 15, 'ETqO8IuiZy8', '- Les voyelles composées : ai, ao, an, ang\r\n- Indication des tons (rappel)\r\n- Pratiquer les tons avec \"ai\"\r\n- Pratiquer les tons avec \"ao\"\r\n- Pratiquer les tons avec \"an\"\r\n- Pratiquer les tons avec \"ang\"\r\n- Les consonnes : s, z, c\r\n- Pratiquer les syllabes avec \"z\"\r\n- Pratiquer les syllabes avec \"c\"\r\n- Pratiquer les syllabes avec \"s\"\r\n- Pratiquer les syllabes avec \"z\", \"c\", \"s\"\r\n- Exercice 1.1 - Pratiquer le ton 1\r\n- Exercice 1.2 - Pratiquer le ton 2\r\n- Exercice 1.3 - Pratiquer le ton 3\r\n- Exercice 1.4 - Pratiquer le ton 4\r\n- Pratiquer la prononciation avec un poème\r\n', 6),
(21, 'Cours 3', 14, 'ETqO8IuiZy8', '- Les voyelles composées : ei, en, eng\r\n- Indication des tons (rappel)\r\n- Pratiquer les tons avec \"ei\" \r\n- Pratiquer les tons avec \"en\"\r\n- Pratiquer les tons avec \"eng\"\r\n- Les consonnes : zh, ch, sh, r\r\n- Pratiquer les syllabes avec \"zh\"\r\n- Pratiquer les syllabes avec \"ch\"\r\n- Pratiquer les syllabes avec \"sh\"\r\n- Pratiquer les syllabes avec \"r\"\r\n- Exercice 1.1 - Pratiquer le ton 1\r\n- Exercice 1.2 - Pratiquer le ton 2\r\n- Exercice 1.3 - Pratiquer le ton 3\r\n- Exercice 1.4 - Pratiquer le ton 4\r\n- Exercice 2 - Trouver les consonnes\r\n- Exercice 3 - Trouver les voyelles\r\n- Exercice 4 - Trouver les tons\r\n- Exercice 5 - Dictée\r\n- Pratiquer la prononciation avec un poème\r\n', 6),
(22, 'Cours 4', 39, 'KwnywlfnZKI', '- Les voyelles composées : ie, iu, in, ing\r\n- Pratiquer les tons avec \"ie\" et \"iu\"\r\n- Pratiquer les tons avec \"in\" et \"ing\"\r\n- Les consonnes : j, q, x\r\n- Pratiquer les syllabes avec \"j\", \"q\", \"x\"\r\n- Exercice 1.1 - Pratiquer les tons 1 et 2\r\n- Exercice 1.2 - Pratiquer les tons 3 et 4\r\n- Exercice 1.3 - Répétition des 4 tons\r\n- Exercice 2 - Trouver les consonnes\r\n- Exercice 3 - Trouver les voyelles\r\n- Exercice 4 - Trouver les tons\r\n- Exercice 5 - Dictée\r\n- Pratiquer la prononciation avec un poème\r\n', 6),
(23, 'Présentation + pratique', 34, 'SjuQIoaiAQo', '- Présentations\r\n- Présentations. Bilan\r\n- Pratique. Synthèse des textes \r\n- Synthèse des textes. Réponse type + intervention\r\n- Quelles fautes dans mon intervention ?\r\n', 7),
(24, 'Introduction', 10, '2sCXhPefmz8', '- Introduction au cours\r\n- Communication', 7),
(25, 'Ecrire comme un PRO', 53, 'NB5F4k4Mv1Q', '- Accents\r\n- Ressources précieuses\r\n- Homonymes. Partie 1\r\n- Homonymes. Partie 2\r\n- Homonymes. Partie 3\r\n- Règles de l\'accord. Partie 1\r\n- Règles de l\'accord. Partie 2\r\n- Accord des participes\r\n- Réviser les règles de l\'accord des participes\r\n\r\n', 7),
(26, 'John apprend le français', 13, 'Y2BNM1Nk8xs', '- John apprend le français\r\n- Les mots\r\n- Tu apprends aussi?\r\n', 8),
(27, 'Les langues', 8, '2o3-plUOV_s\r\n', '- Les langues: le français, l\'allemand...\r\n- Les mots des langues\r\n- Quelle langue est-ce qu\'on parle...', 8),
(28, 'Les verbes', 12, 'NqxVnvIPnZc', '- Les verbes en -er\r\n- Nous répétons les verbes en -er\r\n- Quel verbe?', 8),
(29, 'Le travail', 15, 'NqxVnvIPnZc', '- Je travaille comme...\r\n- Nouveaux mots\r\n- Quel travail est-ce qu\'il fait?\r\n', 8),
(30, 'cours 1', 18, 'spbBNxx4Mn0', '- Bonjour\r\n- Au revoir\r\n- Expression plus famillière\r\n- A plus tard\r\n- Merci', 9),
(31, 'Cours 2', 35, 'rIXseByF5kk', '- Pardon!\r\n- J\'ai compris\r\n- Bonne année!\r\n- Je ne sais pas\r\n- Interdit', 9),
(32, 'Introduction', 9, '9TeS1S4Gi24', 'Introduction du cours', 10),
(33, 'Cours 1: le hangeul, l\'alphabet coréen', 54, 'bzFcReFU1M4', '- Introduction et méthodologie\r\n- Les pronoms personnels\r\n- La construction des phrases\r\n- Le verbe être\r\n- La nationalité\r\n- La particule 씨\r\n- Vocabulaire\r\n', 10),
(34, 'Cours 3', 48, 'tWyjVhuDv9c', '- La conjugaison des verbes au présent\r\n- Verbes irréguliers (1)\r\n- Le verbe faire\r\n- Le verbe avoir / être\r\n- Vocabulaire\r\n', 10),
(35, 'Cours 4', 45, 'tWyjVhuDv9c', '- La particule de thème\r\n- La particule de sujet\r\n- Différence entre particules de sujet et de thème\r\n- La particule d\'objet\r\n- Vocabulaire', 10),
(36, 'Cours 5', 43, '9TeS1S4Gi24', '- Le suffixe de localisation\r\n- La particule de possession\r\n- Les adjectifs possessifs\r\n- Les mots anglais\r\n- Beaucoup / Beaucoup de\r\n', 10),
(37, 'Introduction', 5, 'YIcE4P4dRuQ', 'Introduction', 11),
(38, '11 méthodes pour progresser rapidement en chinois', 6, 'xSSC9rBtQXU', '11 méthodes pour progresser rapidement en chinois', 11),
(39, 'Pratiquer l’expression orale par vous-même\r\n', 12, 'xSSC9rBtQXU', 'Pratiquer l’expression orale par vous-même\r\n', 11),
(40, 'Introduction', 5, 'LT9RkBqBhSE', '- Présentation du cours\r\n- Objectifs du cours\r\n', 12),
(41, 'La Chine', 23, 'rVc-SVa1sQE', '- La Chine\r\n- Géographie\r\n- Histoire\r\n- Culture', 12),
(42, 'Le chinois', 34, 'rVc-SVa1sQE', '- La prononciation\r\n- Les tons\r\n- Les caractères\r\n- Les clés et les radicaux\r\n- La grammaire\r\n- L\'écriture', 12),
(43, 'Cours 1', 230, '0I8yQv1boLY', '- What You Say Matters!\r\n- Alphabet 2\r\n- Alphabet 3\r\n- Alphabet 4\r\n- Alphabet 5\r\n- Now You Can- 01\r\n- Greetings 1\r\n- Greetings 2\r\n- Greetings 3\r\n- Introduction 1\r\n- Introduction 2\r\n- Now You Can- 02\r\n- Emotions 1\r\n- Emotions 2\r\n- Emotions 3\r\n- Pronouns 1\r\n- Pronouns 2\r\n- Directions 1\r\n- Directions 2\r\n- Now You Can- 03\r\n', 13),
(44, 'Cours 2', 453, '6MV6o6RfTQA', '- Verbs 5\r\n- Verbs 6\r\n- Verbs 7\r\n- Body 1\r\n- Body 2\r\n- Months 1\r\n- Verbs 8\r\n- Break 10\r\n- Months 2\r\n- Animals 1\r\n- Animals 2\r\n- Verbs 9\r\n- Now You Can- 10\r\n- Verbs 10\r\n- Shopping 1\r\n- Shopping 2\r\n- Months 3\r\n- Now You Can- 11\r\n- Verbs 11\r\n- Class 1\r\n- Class 2\r\n- Places 1\r\n- Places 2\r\n- Countries 1\r\n- Countries 2\r\n- Verbs 12\r\n', 13),
(45, 'Cours 3', 213, '6MV6o6RfTQA', '- Religion \r\n- Numbers 6\r\n- Numbers 7\r\n- Now You Can- 13\r\n- Verbs 13\r\n- Face 1\r\n- Face 2\r\n- Weather 1\r\n- Weather 2\r\n- Weather 3\r\n- Technology 1\r\n- Technology 2\r\n- Now You Can- 14\r\n- Accessories 1\r\n- Accessories 2\r\n- Tourism 1\r\n- Tourism 2\r\n- Sports 1\r\n- Sports 2\r\n- Sports 3\r\n- Now You Can- 15\r\n', 13),
(46, 'Module 1', 37, 'F1hkOTrAjU8', 'Nous voyons les sons de la langue arabe, les voyelles brèves, longues + Alphabet', 14),
(47, 'Module 2', 43, '7CLccP_tElk', 'On continue l\'Alphabet\r\n', 14),
(48, 'Module 3', 24, '_0YbpNc-vOA', 'Toujours l\'alphabet :)\r\n', 14),
(49, 'Module 4', 12, '_0YbpNc-vOA', 'Les lettres lunaires et solaires...\r\n', 14),
(50, 'Module 5', 49, 'ZICOk4NBuYE', 'Pratique : On lit un texte ensemble !\r\n', 14),
(51, 'Introduction', 12, 'O4_Pse4pWaw', 'Introduction', 15),
(52, 'Module 2', 16, 'O4_Pse4pWaw', 'Démarrer la lecture avec les 3 premières lettres\r\n', 15),
(53, 'Module 3', 20, 'LZNNaWFYDxU', 'Suite de l\'alphabet + lecture + soukoune\r\n', 15),
(54, 'Module 4', 19, 'LZNNaWFYDxU', 'Chadda + suite de la lecture de l’alphabet\r\n', 15),
(55, 'Module 5', 34, 'csr_3Ir5LhU', 'Fin de l\'alphabet +lecture\r\n', 15),
(56, 'Introduction', 10, 'zNzZMCq-ywU', 'Introduction', 16),
(57, 'Cours en une semaine', 33, 'oapCUpFABJ4', '- Jour 1 : Les voyelles composées\r\n- Jour 2 : Les voyelles composées\r\n- Jour 3 : Les consonnes de base\r\n- Jour 4 : Les consonnes doubles\r\n- Jour 5 : le Batchim (consonnes finales)\r\n', 16),
(58, 'Introduction', 13, 'Kr5WnA2i5JI', '- Hangul Introduction\r\n- Syllable Formation\r\n\r\n', 17),
(59, 'Consonants', 65, 'lVvrdH8rhDs', '- Consonant Pronunciation Guide\r\n- Consonant 1 - ㄱ, ㄴ\r\n- Consonant 2 - ㄷ, ㄹ\r\n- Consonant 3 - ㅁ, ㅂ\r\n- Consonant Review 1\r\n- Consonant 5 - ㅈ, ㅊ\r\n- Consonant 7 - ㅍ, ㅎ\r\n- Consonant Review 2\r\n', 17),
(60, 'Vowels', 53, 'slObVGXWFmU', '- Vowel 1 - ㅏ, ㅑ\r\n- Vowel Review 1\r\n- Vowel 3 - ㅗ, ㅛ\r\n- Vowel 4 - ㅜ, ㅠ\r\n- Vowel Review 2\r\n- Vowel 5 - ㅡ, ㅣ, ㅢ\r\n- Vowel 6 - ㅔ, ㅐ & ㅖ, ㅒ\r\n', 17),
(61, 'Korean Sentence Structure', 73, 'slObVGXWFmU', '- Honorific Language\r\n- Particles 2\r\n- Particles 3\r\n- Particles Review\r\n- The be-verb 이다\r\n- The be-verb 입니다\r\n- The be-verb 아니다\r\n- The be-verb 아닙니다\r\n- 이다, 아니다 Review Lesson\r\n', 17),
(62, 'Préparation', 2, 'o22o2URXJAM', '- Avant de poursuivre ce cours', 18),
(63, 'La géographie du Japon', 5, 'o22o2URXJAM', 'La géographie du Japon', 18),
(64, 'かきくけこ', 35, 'AabMQobuuV8', '- かきくけこ introduction\r\n- かきくけこ　prononciation\r\n- かきくけこ écriture\r\n- かきくけこ vocabulaire\r\n- かきくけこ quiz\r\n- 5 questions\r\n- Révision かきくけこ\r\n', 18),
(65, 'はひふへほ', 43, 'U0JWZ3Ksj4A', '- はひふへほ prononciation\r\n- はひふへほ écriture\r\n- はひふへほ vocabulaire\r\n- はひふへほ quiz\r\n', 18),
(66, 'Les Hiragana', 75, 's6q0IlCnG-Y', '- Apprentissage des Hiragana\r\n- Ligne des A\r\n- Ligne des I\r\n- Ligne des U\r\n- Ligne des E\r\n- Ligne des O\r\n- Les digrammes hiragana\r\n- Les règles d\'écriture et de lecture des hiragana\r\n- Fiches de jeux de mots\r\n', 19),
(67, 'Les Katakana', 67, 'AccomkXANBA', '- Apprentissage des Katakana\r\n- Ligne des A\r\n- Ligne des I\r\n- Ligne des U\r\n- Ligne des E\r\n- Ligne des O\r\n- Les digrammes katakana\r\n- Les règles d\'écriture et de lecture des katakana\r\n', 19),
(68, 'Grammaire module', 64, 'AccomkXANBA', '- Leçon 1\r\n- Leçon 2\r\n- Leçon 3\r\n- Leçon 4\r\n- Leçon 5', 19),
(69, 'Leçon 1', 10, 'olTylTAGGSw', '- Partie 1 : Poser des questions et y répondre\r\n- Partir 2 : Hiraganas ligne A\r\n', 20),
(70, 'Leçon 2', 15, '7J6YxVRJcfA', '- Partie 1 : Chiffres (1-12), l\'heure\r\n- Partie 2 : C\'est\r\n- Partie 3 : Hiraganas ligne K\r\n', 20),
(71, 'Leçon 3', 19, 'YKT-L_ErIGo', '- Partie 1 : Heure + NI, se lever, se coucher, travailler, KARA et MADE\r\n- Partie 2 : Particule O (COD), verbes de bases (manger, boire etc), le passé\r\n- Partie 3 : Hiraganas ligne S\r\n', 20),
(72, 'Leçon 4', 15, 'yTbbcU9YsM0', '- Partie 1 : Quelques plats japonais, commander dans un restaurant\r\n- Partie 2 : Aimer\r\n- Partie 3 : Hiraganas ligne T\r\n', 20),
(73, 'Leçon 5', 29, 'yTbbcU9YsM0', '- Partie 1 : Révisions (particules et verbes etc)\r\n- Partie 2 : Révisions (vocabulaire etc)\r\n- Partie 3 : Hiraganas ligne N\r\n', 20),
(74, 'Chapiter 1', 432, '5MveNR8uPNw', '- Manners\r\n- Numbers\r\n- Colors\r\n- Food\r\n- The Alphabet\r\n- Animals & Verbs\r\n- Present Tense Verbs pt. 1\r\n- Present Tense Verbs pt. 2\r\n- Present Tense Verbs pt. 3\r\n- Practice and Build Part 1\r\n- Practice and Build Part 2\r\n- Practice and Build Part 3\r\n- Practice and Build Part 4\r\n- Practice and Build Part 5\r\n- Practice and Build Part 6\r\n- Practice and Build Part 7\r\n- The Date\r\n- Telling the Time\r\n- To Be vs. To Stay\r\n- Questions\r\n', 21),
(75, 'Chapiter 2', 549, 'cd9tVgCe8mk', '- Past Tenses Verbs Pt. 1\r\n- Past Tenses Verbs Pt. 2\r\n- Past Tense Questions\r\n- Past Tenses Verbs Pt. 3\r\n- Past Tense Sentences\r\n- Practice and Build\r\n- Weather in the Past\r\n- Shopping in the Past\r\n- Sports in the Past\r\n- Injuries\r\n- To Meet Up With Friends\r\n- Practice & Build\r\n- Travels\r\n- Appointments\r\n- Love Pt. 1\r\n- Jobs\r\n- Practice and Build\r\n- Translation\r\n- Let’s Put it All Together!\r\n- Comparative\r\n- Superlative\r\n- Music\r\n', 21),
(76, 'Chapiter 3', 643, 'zexrhwBBqRE', '- Hobbies\r\n- Movies & Books\r\n- Pets\r\n- The Future Tense Pt. 1\r\n- The Future Tense Pt. 2\r\n- The Future Tense Pt. 3\r\n- Practice & Build\r\n- Future Goals\r\n- Tomorrow’s Weather\r\n- Future Plans\r\n- Taking a Trip\r\n- COVID-19\r\n- Healthcare\r\n- Practice & Build\r\n- Upper Body Parts Pt. 1\r\n- Upper Body Parts Pt. 2\r\n- Lower Body Parts\r\n- Working from Home\r\n- Put it all together\r\n- Cardinal Numbers\r\n- TV\r\n- Adverbs of Place\r\n- Drinks\r\n- Accessories\r\n- Inside a Woman’s Purse\r\n- Translation Practice\r\n- The Present Continuous\r\n- The Past Continuous\r\n- Kitchen Items\r\n- Living Room Items\r\n', 21),
(77, 'Benvenuto a pronto!', 3, '0ycD2wan19c', '- Meeet your teacher Bianca\r\n- Meet your teacher, Sara!\r\n', 22),
(78, 'Complete Italian course: Learn Italian from levels A1 to B2', 135, '0ycD2wan19c', '- The pronunciation of the -C and new words\r\n- The pronunciation of the -G and new vocabulary\r\n- The pronunciation of the -Q and new vocabulary\r\n- The pronunciation of the -S and new words\r\n- The pronunciation of the Z, double consonants and new words\r\n- Practice the pronunciation with the teacher\r\n- Exercises to complete regarding the pronunciation: read and repeat\r\n- Practice you Italian pronunciation by reading out loud\r\n- Listen to a text about the 20 regions of Italy and fun facts about the cities\r\n- How to greet and say goodbye\r\n- The numbers in Italian and new verbs to learn\r\n- Practice your pronunciation regarding the rules of the -C and the -G', 22),
(79, 'Greetings in Italian', 43, '0ycD2wan19c', '- How to greet and say goodbye in different moments of the day\r\n- Dialogues and text with new vocabulary\r\n- The accent in Italian', 22),
(80, 'Lesson 1', 105, 'iB7MGxJrG4w', '- MIND MAPS ( THE ALPHABET )\r\n- THE ALPHABET\r\n- THE PRONOUNS\r\n- MIND MAPS ( THE PRONOUNS )\r\n- Demonstration Video\r\n- Demonstration Video\r\n- THE PRONOUNS\r\n- THE ARTICLES\r\n- MIND MAPS ( THE ARTICLES )\r\n- THE ARTICLES\r\n', 23),
(81, 'Lesson 2', 66, '0Cvcv2fQUOk', '- Lesson 2 Topic 1 ( The Italian Demonstrative Adjectives )\r\n- MIND MAPS ( THE DEMONSTRATIVE ADJECTIVES )\r\n- Demonstration Video\r\n- Demonstration Video\r\n- Demonstration Video\r\n- Demonstration Video\r\n- THE DEMONSTRATIVE ADJECTIVES\r\n- Lesson 2 Topic 2 ( The Italian AND & BUT )\r\n- MIND MAPS ( AND & BUT )\r\n- THE ITALIAN \"AND\" & \"BUT\"\r\n- Lesson 2 Topic 3 ( How to say in Italian There is, There are, Where, Here and )\r\n- MIND MAPS ( How to say in Italian There is, There are, Where, Here and )\r\n', 23),
(82, 'Leçon 3', 105, 'HxiFIIDD1nQ\r\n', '- Lesson 3 Topic 1 ( The Modal Verb \"Can\" ) Part. 1\r\n- Lesson 3 Topic 1 ( The Modal Verb \"Can\" ) Part. 2\r\n- MIND MAPS ( THE MODAL VERB CAN )\r\n- Demonstration Video\r\n- Demonstration Video\r\n- THE MODAL VERB \"CAN\"\r\n- Lesson 3 Topic 2 ( The Colors )\r\n- MIND MAPS ( THE COLORS )\r\n- THE ITALIAN COLORS\r\n- Lesson 3 Topic 3 ( The Numers from 0 to 20 )\r\n- MIND MAPS ( NUMBERS FROM 0 - 20 )', 23),
(83, 'Module 1', 47, '_6jib5EVf9w', '- Alphabet. Prononciation. II\r\n- Alphabet. Prononciation.\r\n- Pronom personnel. Sexe et nombre. Ser. I\r\n- Pronom personnel. Sexe et nombre. Ser. II\r\n- Pronom personnel. Sexe et nombre.\r\n20 questions\r\n- Vocabulaire pour décrire l\'espace. Numéros de 1 à 30. II\r\n- Vocabulaire pour décrire l\'espace. Numéros de 1 à 30.\r\n- Temps présent. Les articles.\r\n- Utilisation du verbe Tener 1. I\r\n- Temps présent. Les articles. \r\n- Utilisation du verbe Tener 1. II\r\n', 24),
(84, 'Module 2', 65, 'LKB-M-zdnN4', '- L\'heure. Les heures de la journée. Calendrier. La fréquence. I\r\n- L\'heure. Les heures de la journée. Calendrier. La fréquence. II\r\n- L\'heure. Les heures de la journée. Calendrier. La fréquence.\r\n- La question et l\'exclamation. Résumer. I\r\n- La question et l\'exclamation. Résumer. II\r\n- La question et l\'exclamation. Résumer.\r\n- La météo. Mois et saisons. Hace et dentro de. I\r\n- La météo. Mois et saisons. Hace et dentro de. II\r\n- La météo. Mois et saisons. Hace et dentro de.\r\n', 24),
(85, 'Module 3', 90, '2oxOpieMdKw', '- Présent irrégulier. Échange de voyelle. I\r\n- Présent irrégulier. Échange de voyelle. II\r\n- Présent irrégulier. Échange de voyelle.\r\n- Présent irrégulier. Première personne irrégulière. I\r\n- Présent irrégulier. Première personne irrégulière. II\r\n- Présent irrégulier. Première personne irrégulière.\r\n- Verbes irréguliers avec y; irréguliers; avec deux irrégularités. I\r\n- Verbes irréguliers avec y; irréguliers; avec deux irrégularités. II\r\n- Verbes irréguliers avec y; irréguliers; avec deux irrégularités.\r\n', 24),
(86, 'Module 4', 78, '2oxOpieMdKw', '- Prépositions. I\r\n- Prépositions. II\r\n- Prépositions.\r\n- Nombres. Résumer. I\r\n- Nombres. Résumer. II\r\n- Nombres. Résumer.\r\n- Verbes pronominaux. Verbes réciproques. I\r\n- Verbes pronominaux. Verbes réciproques. II\r\n- Verbes pronominaux. Verbes réciproques.\r\n- Hygiène personnelle et vêtements I\r\n- Hygiène personnelle et vêtements II\r\n', 24),
(87, 'Module 1', 98, 'Zz3F7QSRxL0', '- Les pronoms\r\n- Les verbes pronominaux\r\n- Ser vs estar\r\n- Le pluriel\r\n- Le passé-simple\r\n', 25),
(88, 'Module 2', 65, '-w3JxBfq1vg', '- Les verbes modaux\r\n- Les prépositions\r\n- Le passé-composé\r\n- Le passé-simple VS le passé-composé\r\n- Comment construire une question\r\n- Les adjectifs démonstratifs\r\n', 25),
(89, 'Module 3', 60, 'XEOY_6mFjog', '- L\'imparfait\r\n- L\'utilisation de l\'imparfait\r\n- Tener vs Haber\r\n- Les adjectifs\r\n- Le plus-que-parfait\r\n- Quel est la différence entre \"Muy\" et \"Mucho\"\r\n', 25),
(90, 'Module 4', 65, 'XEOY_6mFjog', '- Le futur proche\r\n- Le futur simple\r\n- Les confusions\r\n- Deber vs Tener que\r\n- Le gérondif\r\n- L\'infinitif', 25),
(91, 'Module 5', 67, 'xW17i13IEVA', '- Le futur antérieur\r\n- Le comparatif\r\n- Le superlatif\r\n- Le conditionnel présent\r\n- Le conditionnel passé\r\n- Les adverbes\r\n', 25),
(92, 'Présentation de l\'espagnol', 23, 'xW17i13IEVA', '- Les chiffres et les nombres\r\n- Les pays et les langues\r\n- Les verbes pouvoir, parler et faire\r\n- Les occupations et les centres d\'intérêt\r\n- Les couleurs\r\n- Exercice: Se présenter de façon basique\r\n', 26),
(93, 'Les mots de base', 34, 'TWgODUFCRX8', '- Bonjour, excusez-moi, merci, au revoir\r\n- Les verbes aller, vouloir, savoir, marcher\r\n- Exercice - Demander son chemin\r\n- Si situer: L\'espace et les endroits\r\n- Le temps\r\n- Exercice - Quelle heure est-il?\r\n- Les personnes\r\n- Les accents en espagnol\r\n- Les adjectifs + Exercice - Présenter sa famille\r\n', 26),
(94, 'Les verbes, les temps et les connecteurs', 67, '9U8k_FfZ3LA', '- Les autres verbes irréguliers\r\n- Rappel: Etre, Avoir, Aller, Vouloir, Savoir, Marcher\r\n- Les connecteurs de base\r\n- Les verbes et les connecteurs\r\n- Phrases complexes\r\n- Le passé et le futur\r\n- Exercice - Dire ce que l’on fait\r\n', 26),
(95, 'Approfondissement', 54, '04vKlp7niJk', '- Vocabulaire: La nature\r\n- Vocabulaire: La ville\r\n- La fréquence et la manière\r\n- Conversations avancées + Exercice - Questions\r\n- Attention! Quelques faux amis\r\n- Quelques détails importants\r\n- Les contractions, COD ET COI\r\n- L’impératif et le subjonctif\r\n- Sujets de conservations\r\n- Structurer son discours + Les derniers conseils\r\n', 26),
(102, 'Chapitre 1', 43, 'uOB5JE4rPuE', 'Alphabet, numéros, jours et mois', 27),
(103, 'Chapitre 2', 38, 'uOB5JE4rPuE', 'Saisons, couleurs, l\'heure', 27),
(104, 'Chapitre 3', 65, 'uOB5JE4rPuE', 'Les pronoms', 27),
(105, 'Chapitre 4', 56, 'IDXla9SqVwM', 'Se présenter, des formules de politesse', 27),
(106, 'Chapitre 5', 58, 'TWgODUFCRX8', 'Exprimer l\'incompréhension, l\'accord, l\'opinion, l\'habilité, l\'obligation,...', 27),
(107, 'Chapitre 6', 87, 'CbrnsgTTPhg', 'Décrire une personne et comparer', 27),
(108, 'Lesson 1', 37, 'dZnZehrzHOc', '- Introducing Yourself - Parler de soi\r\n- Introducing Yourself - Présentez-vous\r\n- False Friend - Mini Lesson 1 - Faux amis\r\n- Describing Your Job - Décrire votre travail\r\n- Business English Skills - Practice Describing Work Tasks', 28),
(109, 'Lesson 2', 14, 'HPaotXJP0Qc', '- Instructions: Comment réussir l\'activité de compréhension orale\r\n- PART 1: Listening Exercise: Talking About Routines - Parler des routines\r\n- PART 2: Listening Exercise: [QUIZ]\r\n- Essential Business Vocabulary Study\r\n', 28),
(110, 'Lesson 3', 47, 'nOSICz1S9tM', '- Phrasal Verbs - Mini Lesson 1 - Expression utile pour le travail\r\n- Numbers Pronunciation - Comment prononcer des chiffres\r\n- False Friend - Mini Lesson 2 - Faux amis\r\n- Expressions With the Verb MAKE - Phrases utiles avec le verb \"make\"\r\n- Expressions With the Verb DO - Phrases utiles avec le verb \"do\"\r\n- Avoid Errors With the Verb \"Faire\" - Éviter des erreurs avec', 28),
(111, 'Lesson 4', 43, 'p6lWOPUhd9w\r\n', '- Meetings Vocabulary - Vocabulaire pour des réunions\r\n- Prepare for your Meeting - Préparer pour votre réunion\r\n- Making Suggestions - Faire des suggestions\r\n- Asking Questions at Meetings - Demander des questions\r\n- Taking Action - Passer à l’action', 28),
(112, 'Introduction', 58, 'MR-aitie3iA', '- Proverbes\r\n- Proverbes (suite)\r\n- Clichés (lieux communs ou poncifs)\r\n- Comparaisons (\"similes\" en anglais)\r\n- Formules de langue ou langage formulaïque\r\n', 29),
(113, 'Méthodologie d\'utilisation du dictionnaire bilingue\r\n', 29, 'OKYcWqFwgzI', '- Les dictionnaires utiles et \"dictionaries of idioms\"\r\n- Degré de transparence\r\n- Expressions transparentes\r\n- Expressions semi-transparentes\r\n- Expressions opaques\r\n- Inférences propres à une communauté linguistique\r\n- Interculturalité et biculturalité', 29),
(114, 'Vie courante\r\n', 16, 'kQlbNpQpBEk', '- Entreprise ou milieu des affaires\r\n- Journalisme\r\n- Publicité\r\n- Communiqués de presse\r\n- Économie\r\n- Politique\r\n', 29),
(115, 'Traduction des expressions idiomatiques de l\'anglais américain', 45, 'kQlbNpQpBEk', '- Big fish in a small pond\r\n- Bite the bullet\r\n- Cold feet (to have/get)\r\n- Cost an arm and a leg\r\n- Cutting corners\r\n- Elvis has left the building\r\n- Food for thought\r\n- Gut feeling\r\n- Head over heels\r\n', 29),
(116, 'Cours 1', 78, 'UHF3-rRntqw', '- Salutations. Présentations et alphabet. Compétences d’orthographie\r\n- Les chiffres. Numéros cardinaux et ordinaux\r\n- Les chiffres. Numéros cardinaux et ordinaux\r\n', 30),
(117, 'Cours 2', 34, 'hvMG4m7icEE', '- Les chiffres. Points décimales, Pourcentages et Fractions. Argent, mesures.\r\n- Nom et renseignements personnels.\r\n- Nom et renseignements personnels.\r\n', 30),
(118, 'Cours 3', 39, 'AQ6yEINNZMs', '- Présent du verbe \'être\'.\r\n- Verbes d\'action.\r\n- Verbes d\'action.\r\n- Adjectifs. Adjectifs comparatifs et superlatifs. Couleurs.\r\n- Adjectifs. Adjectifs comparatifs et superlatifs. Couleurs.\r\n', 30),
(119, 'Cours 4', 32, '', '- Il y a. Noms\r\n- Il y a. Noms\r\n- Quelques-uns, beaucoup.\r\n- Quelques-uns, beaucoup.\r\n- Mots d’interrogation.\r\n- Mots d’interrogation.\r\n', 30),
(120, 'Introduction générale', 14, 'NIfhX0LYLHU', '- Introduction générale\r\n- Présention de la formation\r\n- Les temps en français', 31),
(121, 'Les temps Partie 1', 65, 'sgx_pYO38w4', '- Le cours : Le Preterit\r\n- L\'entraînement : Le Preterit\r\n- Le corrigé de l\'exercice sur le Preterit\r\n- Le cours : Le Present Perfect\r\n- L\'entraînement : Le Present Perfect\r\n- Le corrigé de l\'exercice sur le Present Perfect\r\n- Le cours : Le Plu Perfect\r\n- L\'entraînement : Le Plu Perfect\r\n', 31),
(122, 'Les temps Partie 2', 50, 'KUn20wWZsnA', 'Le corrigé de l\'exercice sur le Futur Be + V -Ing\r\n03:34\r\nL\'entraînement : Le Futur Proche Be + V-Ing\r\n00:03\r\n- Le corrigé de l\'exercice sur le Futur proche Be + V-ing\r\n- L\'entraînement : Le Conditionnel Be + V-Ing\r\n- Le corrigé de l\'exercice sur le Conditionnel Be + V-Ing\r\n- L\'entraînement : Le Conditionnel Passé Be + V-Ing\r\n- Le corrigé de l\'exercice sur le Conditionnel Passé Be + V-Ing\r\n', 31),
(123, 'Aller au restaurant', 6, 'g5JSKHHoHWQ', '- C\'est partie\r\n- Vidéo\r\n- Questions', 32),
(124, 'Hobbies et famille', 8, 'qA9U8zNXzNQ', '- C\'est partie\r\n- Vidéo\r\n- Questions', 32),
(125, 'Voyage en avion', 12, 'PXqGKWErYAI', '- C\'est partie\r\n- Vidéo\r\n- Questions', 32),
(126, 'Faire les courses', 9, 'SDclP_43O0I', '- C\'est partie\r\n- Vidéo\r\n- Questions', 32),
(127, 'Le matin', 8, 'z17G2i0u22U', '- C\'est partie\r\n- Vidéo\r\n- Questions', 32),
(128, 'Les nombres', 12, 'z17G2i0u22U', '- C\'est partie\r\n- Vidéo\r\n- Questions', 32),
(129, 'Caractériser un lieu', 53, 'cZmlKMjo4QI', '- Table de matières\r\n- Thème 1 : Caractériser un lieu / une ville\r\n- Vocabulaire : les activités\r\n- Grammaire : La place des adjectifs\r\n- Grammaire : Le pronom Y\r\n- Vocabulaire : Localiser + les prépositions de lieu + les prépositions\r\n- Comparer des villes\r\n- Grammaire : Le comparatif et le superlatif\r\n', 33),
(130, 'Dire le temps qu\'il faut', 24, 'cZmlKMjo4QI', '- Dire le temps qu\'il fait\r\n- Grammaire : Le futur simple (rappel)\r\n- Vocabulaire : Parler de la météo + il fait / il y a\r\n- Compréhension orale + expression écrite', 33),
(131, 'Décrire une tenue vestimentaire', 34, 'tN1MeakH_Wc', '- Décrire une tenue vestimentaire\r\n- Vocabulaire : les vêtements et les accessoires\r\n- Exprimer une appréciation sur un vêtement\r\n- Grammaire : Les pronoms COD\r\n- Grammaire : Les pronoms démonstratifs\r\n- Communication\r\n', 33),
(132, 'Décrire un logement', 35, 'tN1MeakH_Wc', '- Décrire un logement\r\n- Vocabulaire : Le type de logement\r\n- Vocabulaire : Les pièces de la maison\r\n- Communication\r\n- Compréhension orale\r\n- Compréhension écrite + expression écrite\r\n', 33),
(133, 'Introduction', 3, 'tN1MeakH_Wc', 'Introduction', 34),
(134, 'Dossier 1', 56, 'OD-R36veTLI', '- Leçon 1A\r\n- Leçon 1B\r\n- Leçon 1C\r\n- Leçon 1D\r\n- Leçon 1E\r\n- Leçon 1F\r\n', 34),
(135, 'Dossier 2', 69, 'OD-R36veTLI', '- Leçon 2A\r\n- Leçon 2B\r\n- Leçon 2C\r\n- Leçon 2D\r\n- Leçon 2E\r\n- Leçon 2F', 34),
(136, 'Dossier 3', 57, 'DmqpDmZ_Wm8', '- Leçon 3A\r\n- Leçon 3B\r\n- Leçon 3C\r\n- Leçon 3D\r\n- Leçon 3E\r\n- Leçon 3F', 34),
(137, 'Dossier 4', 55, 'wDkEzbLCgKM', '- Leçon 5A\r\n- Leçon 5B\r\n- Leçon 5C\r\n- Leçon 5D\r\n- Leçon 5E\r\n- Leçon 5F', 34),
(138, 'Module 1', 5, 'FSvuNY-QaX4', '- Introduction', 35),
(139, 'Module 2', 89, 'ChOy9f5t0Og', '- Le temps\r\n- Les vocabulaires', 35),
(140, 'Module 1', 18, 'ChOy9f5t0Og', '- Rencontre \r\n- Je suis de Sofia \r\n- Bienvenue \r\n- Au bureau \r\n- Quelle heure est-il ? \r\n', 36),
(141, 'Module 2', 39, 'Sos_O4Vj5SU', '- Un voleur endormi \r\n- La légende de Sofia \r\n- Malade du cœur \r\n- Révision', 35),
(142, 'Module 3', 54, 'Sos_O4Vj5SU', '- Des gourmands \r\n- Un jour de congé \r\n- Observons la loi !\r\n- Révision \r\n- Leçon de politesse\r\n- La main tendue ', 35),
(143, 'Module 1', 63, 'khLEX51swU4', '- Bankia : à la source de la santé\r\n- Joyeux anniversaire ! \r\n- Bon appétit, mes amis !\r\n- Au Rila \r\n- À une exposition \r\n- Fais attention, le soleil est trompeur !', 36),
(144, 'Module 2', 16, 'khLEX51swU4', '- À l’étranger \r\n- Deux beaux yeux \r\n- Révision\r\n- Le paisible Danube blanc\r\n- Au revoir ! ', 36),
(145, 'Introduction', 4, 'Hs8oR3xDokA', 'Introduction', 37),
(146, 'Leçon 1: Se présenter', 10, 'Hs8oR3xDokA', '- Conversation\r\n- Les points grammaires', 37),
(147, 'Leçon 2: Commander un café', 12, 'Hs8oR3xDokA', '- Conversation\r\n- Les points grammaires', 37),
(148, 'Leçon 3: A la poste', 16, 'Hs8oR3xDokA', '- Conversation\r\n- Les points grammaires', 37),
(149, 'Leçon 4', 29, '2v_CM-uEmmU', '- Conversation\r\n- Les points grammaires', 37),
(150, 'Introduction', 5, 'Et1-mSY8vDg', 'Introduction', 38),
(151, 'Niveau 1', 46, 'Awmi74cMCEE', '- Niveau 1 - Lezione 2 - Allora siamo vicini.\r\n- Niveau 1 - Lezione 3 - Romana come me.\r\n- Niveau 1 - Lezione 4 - Signora, come sta?\r\n- Niveau 1 - Lezione 5 - Prenotazioni volo Roma-Tokyo\r\n', 38),
(152, 'Niveau 2', 53, 'Awmi74cMCEE', '- Lezione 6 - Di che colore?\r\n- Lezione 7 - Vuole una casa o un appartamento?\r\n- Lezione 8 - Cosa devo prendere?\r\n- Lezione 9 - Mi presento, Mario Rossi.\r\n- Lezione 10 - Ecco i miei figli\r\n', 38),
(153, 'Niveau 3', 41, 'iB7MGxJrG4w', '- Lezione 11 - Il mio cane si chiama Dik\r\n- Lezione 12 - No, non è Giacomo.\r\n- Lezione 13 - Sono i loro genitori\r\n- Lezione 14 - Si sdrai sul lettino\r\n- Lezione 15 - Ho un appuntamento da voi.', 38),
(154, 'Niveau 4', 45, 'iB7MGxJrG4w', '- Lezione 16 - Paolo non sta bene.\r\n- Lezione 18 - La settimana di Gabriele\r\n- Lezione 19 - Non so che mettermi\r\n- Lezione 20 - È un po\' complicato, può ripetere per favore?\r\n', 38);

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id_course` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `level_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `lang_id` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `cover_img_url` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `video_url` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `date_online` date NOT NULL,
  PRIMARY KEY (`id_course`),
  UNIQUE KEY `course_name` (`course_name`),
  KEY `level_id` (`level_id`),
  KEY `lang_id` (`lang_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id_course`, `course_name`, `level_id`, `teacher_id`, `lang_id`, `description`, `cover_img_url`, `video_url`, `date_online`) VALUES
(1, 'Apprendre l\'anglais de A à Z', 1, 26, 1, 'Tout ce que vous devez savoir pour parler couramment anglais en partant de 0 ou d\'un niveau débutant/intermédiaire', 'https://img.freepik.com/photos-gratuite/femme-enseignant-aux-etudiants-lecon-anglais-ligne_23-2148962972.jpg?size=626&ext=jpg', '0vsTGO1GPm0', '2016-10-08'),
(2, 'Apprendre et parler anglais couramment en 30 jours', 2, 30, 1, 'Phonétique et prononciation, présentation personnelle, Dialogue, grammaire, construction des phrases et argumentation', 'https://img.freepik.com/photos-gratuite/livre-anglais-reposant-table-espace-travail_23-2149429594.jpg?size=626&ext=jpg', '8nXX1WOuvrk', '2023-01-17'),
(3, 'Apprendre l\'anglais : Vocabulaire', 1, 29, 1, 'Tout le vocabulaire que vous devez connaître pour parler anglais', 'https://img.freepik.com/photos-gratuite/femme-au-casque-apprentissage-langue-ligne_1163-3829.jpg?w=826&t=st=1698867178~exp=1698867778~hmac=735e546a1331894444c9ac0c0ecc898c5d8e743b3dee27238e442b07348a0532', 'CbPy_CjJR90', '2021-10-06'),
(4, 'Chinois débutant - HSK 1', 1, 33, 2, 'Chaque culture a une langue différente. En chinois, on ne parle pas de la même façon qu\'en français.\r\n\r\nDans ce cours, je vous explique comment comprendre la langue et la culture chinoise.\r\n\r\nNormalement, vous allez parler chinois très rapidement dès que vous commencerez ce cours.\r\n\r\nJe vous invite également dans mon groupe Skype et mon groupe Facebook pour vous entraîner.\r\n\r\nJe vous souhaite un bon cours !', 'https://img.freepik.com/photos-gratuite/gros-plan-personnes-qui-etudient-langue_23-2149300723.jpg?size=626&ext=jpg', 'CbPy_CjJR90', '2019-06-04'),
(5, 'Faire du business avec la Chine', 3, 31, 2, 'Le cours \"Faire du business avec la Chine\" se destine aux leaders et aux cadres supérieurs souhaitant naviguer avec succès dans le paysage complexe des affaires chinoises.\r\n\r\nCet apprentissage transcende la simple stratégie commerciale, abordant également les défis culturels inhérents à la diversité. Il explore la création de relations durables entre individus et organisations de cultures divergentes, favorisant une compréhension mutuelle et une valorisation de cette diversité.\r\n\r\nLe cours, dirigé par Isabelle Fernandez, se penche sur douze questions clés telles que la préparation stratégique, l\'adaptation aux codes de communication chinois, et les spécificités de la négociation en Chine.\r\n\r\nIsabelle Fernandez, experte reconnue, vous immergera dans l\'environnement chinois en vous fournissant des outils concrets pour établir des partenariats fructueux. Cette formation vous guidera à travers les subtilités du marché chinois, tout en renforçant vos compétences en matière de communication interculturelle et de négociation.\r\n\r\nRejoignez-nous pour une expérience d\'apprentissage inestimable, élargissez vos horizons et élevez vos compétences en matière de gestion internationale. Une immersion éclairée dans le monde des affaires chinois, sous la tutelle d\'experts, pour des résultats encore meilleurs.', 'https://img.freepik.com/photos-gratuite/plan-moyen-femme-presentant-lecon_23-2148888877.jpg?size=626&ext=jpg', 'i8Iryg6Qzco', '2021-08-10'),
(6, 'Prononciation du chinois', 1, 32, 2, 'Le chinois est une langue tonale qui donne souvent des difficultés aux Français. Beaucoup d’élèves ont du mal à le prononcer correctement. Cette série de cours a été conçue pour aider les débutants à bien prononcer dès le début. Si vous n’êtes pas débutant mais que vous avez des difficultés à vous faire comprendre des autres, ce cours vous sera également bénéfique.', 'https://img.freepik.com/photos-gratuite/jeune-femme-frequentant-cours-ligne_23-2148854935.jpg?size=626&ext=jpg', '1kbUsDe4_48', '2022-06-17'),
(7, 'Comprendre et s\'exprimer librement en français-Cours B1-B2+', 2, 4, 3, 'Ce cours est la suite de \" French for you \" publié il y a plus de trois ans sur Udemy avec à ce jour (début juin 2023) 1.985 abonnés et 443 commentaires. Le cours maintient la ligne didactique du premier, mais avec un niveau carrément plus élevé tant dans le contenu des dialogues, qui traitent de sujets d\'actualité où il est facile de se reconnaître, que dans les éléments grammaticaux présentés.\r\nLe cours est entièrement dispensé en français, mais il est accompagné de sous-titres que je vous conseille vivement d\'éviter, sauf nécessité absolue. Dans la vie réelle, et c\'est ce qui nous intéresse, il n\'y a pas de sous-titres ou d\'autres aides, il n\'y a que votre capacité à comprendre et à vous exprimer et c\'est cette capacité que le cours vise à optimiser.\r\nLe cours est réparti en 15 dossiers pour un total de 90 leçons vidéo ; la sixième leçon de chaque dossier est consacrée à un point de grammaire.', 'https://img.freepik.com/photos-gratuite/apprendre-concept-education-ligne-francais_53876-133943.jpg?size=626&ext=jpg', '2sCXhPefmz8', '2022-06-04'),
(8, 'Français PRO (français des affaires + grammaire avancée)', 3, 4, 3, 'English version (Description en français est en bas de cette version)\r\nA practice-based course of advanced French for intermediate level students. The course is divided into several sections.', 'https://img.freepik.com/photos-gratuite/salle-classe-virtuelle-espace-etude_23-2149178632.jpg?size=626&ext=jpg', 'G90N8wK0sS0', '2021-03-29'),
(9, 'Apprendre le bulgare pour débutants', 1, 22, 9, 'Si vous voulez apprendre le bulgare, alors vous devriez écouter et parler aussi souvent que vous le pouvez dans une routine quotidienne. Nous vous montrerons la meilleure façon d’apprendre le bulgare pour les débutants : nos vidéos vous aideront à améliorer vos compétences en bulgare et votre capacité d’écoute.\r\n\r\nÉcoutez notre longue liste de phrases bulgares, de conversations et de questions avec des réponses - écoutez et répétez après l’orateur professionnel. Nous avons beaucoup de vidéos différentes pour apprendre le bulgare, adapté à votre niveau. Voir les liens ci-dessous! Vous améliorerez votre capacité d’expression et serez en mesure d’entendre les nuances de ce langage complexe.', 'https://img.freepik.com/photos-gratuite/vue-laterale-homme-classe_23-2150312806.jpg?size=626&ext=jpg', 'rIXseByF5kk', '2020-08-23'),
(10, 'Apprentissage lent et facile de le coréen', 1, 9, 7, 'Pour de meilleurs résultats, entraînez-vous à dire les mots et les phrases en coréen en même temps que la vidéo et vous ferez certainement des progrès! \r\nRappelez-vous que \"la répétition est la clé de l\'apprentissage\". Entraînez-vous à dire les mots en coréen plusieurs fois correctement et vous gagnerez en fluidité. N\'hésitez pas à regarder et à écouter les mots et les phrases en coréen plusieurs fois. ', 'https://img.freepik.com/photos-gratuite/amis-acclamations-coupe-du-monde-drapeau-peint_53876-40984.jpg?size=626&ext=jpg', 'sddWpwSHyWY', '2018-07-10'),
(11, 'Vocabulaire avancé en chinois avec des phrases et de la grammaire', 3, 32, 2, 'Découvrez le monde riche et nuancé de la langue chinoise grâce à notre cours \'Vocabulaire avancé en chinois avec des phrases et de la grammaire.\' Explorez des termes et des structures linguistiques sophistiqués tout en renforçant vos compétences en communication. Ce cours vous offre un aperçu approfondi de la langue chinoise, avec des phrases et des exemples de grammaire pour vous aider à maîtriser cette langue captivante.', 'https://img.freepik.com/photos-gratuite/filles-recherchant-diagrammes-table_23-2147764696.jpg?size=626&ext=jpg', 'Tz7YLJ_gsuk', '2022-08-23'),
(12, 'Apprendre le mandarin à partir de films', 3, 31, 2, 'Plongez dans l\'apprentissage du mandarin d\'une manière immersive et passionnante en explorant le monde du cinéma chinois. Notre cours vous invite à découvrir la langue et la culture mandarines à travers des films captivants. Vous acquerrez des compétences linguistiques tout en vous imprégnant de l\'authenticité des dialogues et des scénarios de films. Rejoignez-nous pour une expérience d\'apprentissage unique et divertissante qui vous rapprochera de la maîtrise du mandarin.', 'https://img.freepik.com/photos-gratuite/etudiant-posant-pendant-session-etude-groupe-collegues_23-2149211073.jpg?size=626&ext=jpg', 'AiEVTr51NdY', '2022-05-09'),
(13, 'L\'alphabet Arabe - Apprendre à Lire l\'arabe', 1, 14, 8, 'Découvrez un moyen simple et efficace d\'apprendre à lire l\'arabe grâce à notre cours dédié. Que vous soyez débutant ou que vous souhaitiez renforcer vos compétences en lecture, ce programme vous offre une approche accessible et progressive pour maîtriser l\'alphabet arabe et développer votre capacité à lire couramment. Plongez-vous dans l\'univers de cette belle langue et déverrouillez un nouvel horizon de compréhension en suivant notre cours \'Apprendre à Lire l\'arabe facilement\'.', 'https://img.freepik.com/photos-gratuite/femme-musulmane-moderne-hijab-dans-salle-bureau_285396-10893.jpg?size=626&ext=jpg', 'O4_Pse4pWaw', '2019-01-05'),
(14, 'L’arabe pour comprendre le Coran', 3, 12, 8, 'Ce cours te permettra d’acquérir du vocabulaire en lien avec le Saint Coran, les exégèses, les aHadiths et tout autre discours en lien avec la religion.\r\n\r\nÀ l’issu de cette formation tu auras une connaissance précise des structures linguistiques fréquentes dans le Coran.\r\n\r\nTu seras capable d’identifier la structure d’une phrase, savoir si elle est constituée d’un pronom, de verbes, de noms, de prépositions etc\r\n\r\nTu seras également capable de reconnaître les verbes et savoir à quel temps celui-ci est conjugué et à quelle personne.\r\n\r\nTu pourras identifier le genre et le nombre d’une grande partie des noms du Coran en te basant sur des signes linguistiques distinctifs.\r\n\r\nLes supports utilisés dans cette formation sont des supports authentiques en rapport avec l’Islam.', 'https://img.freepik.com/photos-gratuite/beau-jeune-couple-ecrit-dans-cahier-assis-couck-maison-fille-arabe-portant-hidjab-noir_1157-48421.jpg?size=626&ext=jpg', 'GDhNA9huHsI', '2021-10-08'),
(15, 'Apprendre l\'arabe : Alphabétisation', 1, 13, 8, 'e vous propose le programme le plus complet pour apprendre les bases de la langue arabe.\r\n\r\nQue vous soyez un parfait débutant ou que vous ayez quelques notions de bases, ce programme est fait pour vous.', 'https://img.freepik.com/photos-gratuite/femme-musulmane-porte-casque-aide-ordinateur-portable-parle-ses-collegues-du-rapport-vente-lors-conference-video-tout-travaillant-depuis-bureau-domicile-nuit_7861-3014.jpg?size=626&ext=jpg', 'pKTXJNAWfck', '2019-10-01'),
(16, 'Le Cours Complet de Coréen : Apprenez le Coréen pour Débutants', 1, 8, 7, 'Le cours ultime pour les débutants en coréen qui vous enseignera le coréen plus rapidement que vous ne l\'imaginiez ! Si vous avez déjà rêvé de voyager en Corée et de vous débrouiller dans des situations réelles, d\'être autonome et de communiquer avec les habitants, alors ce cours est fait pour vous !', 'https://img.freepik.com/photos-gratuite/employes-travaillant-ensemble-plan-moyen_23-2150152251.jpg?w=826&t=st=1699524584~exp=1699525184~hmac=1de8cec12034b99be33cea6433c747dcb475f147abc52141059583cd98e1987d', '-_p_rxB03sE', '2022-05-30'),
(17, 'Masterclass sur la Prononciation en Coréen', 2, 10, 7, 'Bienvenue à notre Masterclass sur la Prononciation en Coréen ! Cette classe est spécialement conçue pour vous aider à perfectionner votre prononciation dans cette belle langue. Que vous soyez un débutant cherchant à établir des bases solides ou un apprenant avancé souhaitant affiner votre accent, notre Masterclass vous guidera à travers les subtilités de la prononciation coréenne. Préparez-vous à gagner en confiance et à améliorer votre compréhension orale en explorant les sons, les intonations et les astuces qui feront de vous un maître de la prononciation en coréen. Faisons un voyage passionnant à travers les sons de cette langue fascinante !', 'https://img.freepik.com/photos-gratuite/personnes-travaillant-dans-bureaux-elegants-confortables_23-2149548687.jpg?size=626&ext=jpg', 'Kr5WnA2i5JI', '2016-10-03'),
(18, 'Apprendre la Conversation en Japonais', 2, 6, 5, 'Vous voulez apprendre le japonais ? Apprenez le japonais avec cette pratique de conversation en japonais lente et facile pour les débutants. Si vous êtes un débutant qui vient de commencer à apprendre à parler japonais, cette vidéo sera parfaite pour vous. Toutes les phrases et tous les mots sont utilisés couramment en japonais et vous allez vouloir les apprendre pour bien parler japonais. Les phrases sont dites à une vitesse normale, puis plus lentement, afin que vous puissiez maîtriser la prononciation de le japonais. \r\n', 'https://img.freepik.com/photos-gratuite/parapluie-wagasa-japonais-aide-par-jeune-femme_23-2149576110.jpg?size=626&ext=jpg', 'vFlDwH92nw0', '2020-07-08'),
(19, 'Japonais pour débutants 1: l\'Atelier des hiragana', 1, 11, 5, 'C\'est un cours complet pour apprendre tous les hiragana, l\'alphabet de base japonais. Grâce à des photos, des illustrations animées, une bande-son et des sous-titres en français, vous apprendrez facilement à lire le tableau entier des 46 hiragana, à les prononcer parfaitement et à les écrire dans le bon ordre. Vous ne serez pas ennuyés, car à la fin de chaque section vous pourrez vérifier vos progrès avec des quiz amusants.', 'https://img.freepik.com/photos-gratuite/femme-portant-kimono-traditionnel-japonais-parapluie-pagode-yasaka-rue-sannen-zaka-kyoto-au-japon_335224-146.jpg?size=626&ext=jpg', 'LAPFbI93vtE', '2020-03-21'),
(20, 'Premier cours de japonais : Introduction', 1, 7, 5, 'Presque 100% des japonais peuvent lire et écrire l\'alphabet occidental.\r\nEn japonais, il existe une écriture appelée romaji faite en alphabet occidental.\r\nC\'est-à-dire, pour apprendre le japonais, il n\'est pas indispensable de mémoriser trois types de caractères, qui totalisent environ 2100 caractères.', 'https://img.freepik.com/photos-gratuite/teenage-etudiant-dans-ecouteurs-assis-table-tablette-mains_23-2148166301.jpg?size=626&ext=jpg', '2ATeLSP4j_c', '2017-10-10'),
(21, 'Cours d\'Italien niveau débutants A1/A2', 1, 20, 6, 'Cette formation d\'italien est une excellente opportunité pour tous les francophones qui souhaitent apprendre l’italien du niveau débutant de manière simple, efficace et amusante.\r\n\r\nBonjour tout le monde ! Je m\'appelle Chiara et je suis de langue maternelle italienne.\r\n\r\nJe travaille dans le domaine de la formation depuis 4 ans.\r\n\r\nJ\'ai aidé des centaines de personnes, du jeune étudiant à l\'adulte mature, à atteindre leurs objectifs linguistiques grâce à mes leçons en ligne.\r\n\r\nCe cours vise à vous donner une base solide sur laquelle vous pourrez développer vos compétences en italien dans n\'importe quel but - voyages, affaires, relations, études ou toute autre chose!\r\n\r\nLe cours comprend des vidéos téléchargeables, des supports PDF, des tests pratiques et des évaluations.\r\n\r\nVous pouvez suivre les leçons en ligne à votre rythme et au moment qui vous convient le mieux.', 'https://img.freepik.com/photos-gratuite/jeunes-femmes-elegantes-voyageant-ensemble-europe-vetues-tenue-mode-printaniere-accessoires-souriants-heureux-amis-s-amusant-tenant-carte_285396-10650.jpg?size=626&ext=jpg', '5MveNR8uPNw', '2023-05-09'),
(22, 'Cours d\'italien Niveau intermediaire B1/B2', 2, 23, 6, 'Cette formation niveau intermédiaire (B1/B2) convient à tous ceux qui ont déjà étudié l\'italien et qui maîtrisent les bases de la grammaire au niveau A2.\r\nSi vous êtes débutant, ou si vous avez juste quelques notions, ou encore avez besoin de revoir les bases de la langue italienne, je vous recommande fortement de commencer par mon cours débutant A1/A2. De cette façon, vous serez prêt pour cette formation :)\r\n\r\nDans ce cours, vous étudierez des temps plus complexes comme le subjonctif, ce qui vous permettra d\'améliorer considérablement votre niveau et de parler comme un natif.', 'https://img.freepik.com/photos-gratuite/drapeau-italien-fond-jaune_23-2148293446.jpg?size=626&ext=jpg', 'iB7MGxJrG4w', '2021-10-12'),
(23, 'La Masterclass Complète en Italien avec Maria', 3, 15, 6, ' Cette classe est conçue pour vous emmener du niveau débutant à la maîtrise de la langue italienne. Que vous soyez un novice enthousiaste cherchant à établir des bases solides ou un apprenant plus avancé désireux de perfectionner vos compétences, cette Masterclass vous guidera tout au long de votre voyage linguistique. Vous explorerez la grammaire, le vocabulaire, la culture et bien plus encore, tout en développant une compréhension approfondie de l\'italien. Préparez-vous à être immergé dans la beauté de la langue et de la culture italienne. Commençons ce passionnant voyage d\'apprentissage dès maintenant !', 'https://img.freepik.com/photos-gratuite/lettrage-italien-fond-jaune_23-2148293444.jpg?size=626&ext=jpg', 'X2xTOQrqncs', '2015-07-30'),
(24, 'Cours complet d\'espagnol (Niveau débutant à intermédiaire)', 2, 17, 4, 'Ce cours s\'adresse à toutes les personnes ayant déjà quelques bases d\'espagnol et qui souhaitent approfondir ou revoir les bases de la langue.\r\n\r\nPour commencer vous aurez la possibilité de télécharger (et encore mieux d\'imprimer si c\'est possible) un livret sur toute la conjugaison. Par expérience je sais qu\'une des difficultés pour les apprenants est de mémoriser la conjugaison et surtout les nombreux verbes irréguliers (mais, bon, pensez à ceux qui souhaitent apprendre le français car c\'est encore plus difficile!).\r\n\r\nEnsuite, ce cours se compose de 14 sections et dans chacune vous commencerez par découvrir du vocabulaire de la vie courante (description de personnes ou de son lieu d\'habitation, les activités, communiquer dans une boutique, un restaurant ou chez un médecin...)  Pour le réviser vous aurez accès à une fiche de vocabulaire en annexe ainsi que la possibilité de vous entraîner grâce à une application en ligne.\r\n\r\nAprès le vocabulaire, vous allez revoir des points grammaticaux incontournables et à la fin de chaque fin de chapitre vous aurez le bilan du cours que vous aurez visionné en pdf ainsi que des exercices grammaticaux et la correction et parfois des quizz.\r\n\r\nLes explications seront en français pour faciliter la compréhension des points grammaticaux et évidemment vous ne deviendrez pas bilingue en 8 heures de formation mais vous aurez des bases solides pour comprendre et vous faire comprendre.', 'https://img.freepik.com/photos-gratuite/fille-apprenant-vue-cote-ordinateur-portable_23-2149455151.jpg?size=626&ext=jpg', 'JZ3w348_YNs', '2019-08-02'),
(25, 'Cours d’Espagnol pour Débutants', 1, 16, 4, 'Cours enseigné en espagnol  (méthode d\'immersion totale) avec des sous-titres en francais.\r\n\r\nPendant ce cours nous allons découvrir les sujets suivants : le discours en espagnol, la prononciation, l’écriture, les règles et les structures grammaticales, le vocabulaire, la conversation et les capacités de communication. L’écran interactif va aider les étudiants d’une façon visuelle et la méthode d’immersion utilisée peut accélérer la vitesse d’apprentissage, la compréhension de la langue et la fluidité de votre discours.', 'https://img.freepik.com/photos-gratuite/main-pointant-notes-dans-cahier_23-2147844946.jpg?size=626&ext=jpg', 'EuEMPa_pJq0', '2021-01-20'),
(26, 'Apprendre l\'espagnol : Vocabulaire', 3, 21, 3, 'Pour réussir à parler espagnol, il est très important que tu suives le cours correctement, que tu prennes des notes tout au long des vidéos, que apprennes tous les mots de vocabulaire que je vais t\'apprendre. Dans le cas contraire, tu ne retiendras rien et tu auras du mal à parler espagnol.', 'https://img.freepik.com/photos-gratuite/professeur-smiley-coup-moyen-tableau-blanc_23-2149455206.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/wZkGoa--JNo?si=9mbyGvZUOkYjGzTR', '2017-10-04'),
(27, 'Espagnol : niveau intermédiaire-avancé', 3, 28, 4, 'Ce  cours est primordial si tu souhaites améliorer considérablement ton espagnol. A la fin de ce cours, tu sauras parler couramment espagnol et tu pourras discuter avec un vrai espagnol.\r\n\r\nPour réussir à parler espagnol à la fin de ce cours, il est très important que tu suives le cours correctement, que tu prennes des notes tout au long des vidéos, que tu faces correctement les exercices. Dans le cas contraire, tu ne retiendras rien et tu n\'arriveras jamais à parler espagnol.', 'https://img.freepik.com/photos-gratuite/drapeau-espagne-du-ramadan-fond-islamique_187299-37243.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/MRW2f_UMjKc?si=gcEHzhB8WbxhkQw3', '2019-07-11'),
(28, 'Cours d’anglais pour les professionnels - intermédiaire', 2, 3, 1, 'Ce n’est pas un cours de “Business English” pour tout le monde. C’est un cours pour vous.\r\n\r\nVous êtes confiant et vous êtes un professionnel du monde des affaires - mais quand vous parlez en anglais, vous êtes mal à l’aise. En anglais, vos tâches semblent difficiles et même frustrantes.\r\n\r\nImaginez où vous pourriez aller dans votre travail et à quel point votre travail serait plus efficace si vous pouviez communiquer et effectuer vos tâches en toute confiance en anglais.\r\n\r\nGrâce à ses compétences en français et à son expérience du monde des affaires, Jennifer vous apprendra à éviter les erreurs spécifiques et les points de prononciation avec lesquels les francophones ont des difficultés.', 'https://img.freepik.com/photos-gratuite/livre-anglais-verres-table_23-2149429624.jpg?size=626&ext=jpg', 'https://youtu.be/U_RpnrD3J30?si=C8f2Q96eo7jF4e9U', '2020-02-25'),
(29, 'Parler anglais comme un anglophone – Améliorer son accent', 3, 25, 1, 'L\'accent français est charmant! Mais vous voulez être mieux compris quand vous parlez en anglais, n\'est-ce pas? Voila un cours spécialement conçus pour vous! \r\n\r\nVous allez vraiment reduire votre accent avec de cours, Niveau 2. Ce cours offre un moyen rapide et facile de corriger votre anglais car il est adapté pour votre langue maternelle.\r\n\r\nLes leçons sont en anglais mais certaines explications sont en français pour faciliter la compréhension.', 'https://img.freepik.com/photos-gratuite/livre-anglais-reposant-table-espace-travail_23-2149429592.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/henIVlCPVIY?si=Y5zsjfRd2bREpN5D', '2023-08-20'),
(30, 'Cours d\'anglais - Apprenez l\'anglais avec des animations', 2, 2, 1, 'Bienvenue dans notre cours d\'anglais. Ce cours est principalement axé sur l\'enseignement de l\'anglais couramment et avec une bonne prononciation.\r\n\r\nDans ce cours, vous allez apprendre l\'anglais avec les dialogues enregistrés par des professeurs américains afin que vous puissiez parler anglais comme un natif.\r\n\r\nÊtes-vous ennuyé par les cours et les livres basés sur la grammaire parce que vous ne pouvez pas apprendre la vraie langue? Ce cours en ligne résoudra votre problème.\r\n\r\nIci, dans ce cours, nos personnages d\'animation vous aideront à apprendre l\'anglais conversationnel quotidien. Les dialogues de notre cours ont été choisis dans la vie quotidienne et ordonnés de manière systématique.', 'https://img.freepik.com/photos-gratuite/voyante-coup-girl-etudier-bureau-interieur_23-2148389061.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/erjMgola4fQ?si=MHcWi9QnQ8haa6vr', '2018-07-19'),
(31, 'Bien débuter en traduction anglais/français', 3, 27, 1, 'Ce cours s\'adresse aux personnes qui s\'intéressent à la traduction, qui viennent d\'un parcours technique (formation type BTS, Licence ou ingénieur) mais aussi aux passionnés de langues étrangères.', 'https://img.freepik.com/photos-gratuite/piles-livres-anglais-table-espace-travail_23-2149429580.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/wnUtYlYfS2A?si=VIWJj6vblHvHaq-P', '2023-04-05'),
(32, 'Apprendre et parler Anglais en 14 Jours', 2, 29, 1, 'Ce cours vous enseigne la doctrine ou le système d\'apprentissage des langues. La méthode d\'apprentissage de l\'Anglais reprise dans ce cours vous permet de parler Anglais seulement en 14 JOURS et vous pouvez vous lancer dans l\'apprentissage d\'une autre langue.\r\n\r\nIl suffit de RESPECTER A LA LETTRE tous les principes et toutes les pratiques repris dans le cours et vous verrez les résultats en un temps record (14 Jours)\r\n\r\nCe qui est intéressant avec ce cours, c’est que le formateur parle 6 langues (Français, Anglais, Allemand, Espagnol, Italien et Portugais) qu\'il a apprises seul, sauf pour le Français (Langue Officielle du pays).', 'https://img.freepik.com/photos-gratuite/jeune-professeur-anglais-faisant-son-cours-ligne_23-2149019784.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/6E7i_7Mr_5c?si=ugjp6PkAUnBPiwXa', '2022-08-22'),
(33, 'Tu peux mieux parler français dans 30 jours', 2, 1, 3, 'En 30 jours, nous allons explorer les subtilités de la langue française, travailler sur la prononciation, élargir votre vocabulaire, et vous fournir les outils nécessaires pour vous sentir plus confiant lorsque vous parlez français. Que vous soyez débutant ou que vous souhaitiez simplement perfectionner vos compétences existantes, ce cours a été conçu pour vous aider à atteindre vos objectifs linguistiques de manière rapide et efficace.', 'https://img.freepik.com/photos-gratuite/photo-exterieure-jolie-femme-voyageur-dans-verres-tenant-carte-pont-ville_197531-6836.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/z-TPeI6M8lA?si=ZUH0C0flwAvHW4aK', '2020-03-21'),
(34, 'Parler comme un Français !', 3, 4, 3, 'Ne vous inquiétez pas ! Ce n’est pas une fatalité ! Avec de la pratique, votre prononciation va nettement s’améliorer !\r\n\r\nParlez comme un français ! Cette semaine, je vous ai préparé une leçon de 20 minutes pour que vous puissiez pratiquer chaque son du français. Essayez de reproduire exactement les mots que je prononce.\r\n\r\nN’hésitez pas à articuler, à ouvrir votre bouche pour prononcer chaque son et chaque mot que je prononce.\r\n\r\nC’est ludique mais surtout très EFFICACE !\r\n\r\nCe n’est pas une leçon de vocabulaire, concentrez-vous uniquement sur votre prononciation !', 'https://img.freepik.com/photos-gratuite/femme-optimiste-positive-expression-heureuse-porte-vetements-elegants-petit-sac-dos-jaune-dos-erre-dans-rues-ville_273609-25797.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/kOyEtz6tKG4?si=FMlbW35BE1s-woNt', '2022-06-15'),
(35, 'Apprendre le bulgare: 200 phrases en bulgare', 2, 18, 9, 'Découvrez la beauté et la richesse de la langue bulgare avec notre cours \'Apprendre le bulgare : 200 phrases en bulgare\'. Que vous soyez un voyageur enthousiaste, un amateur de cultures étrangères, ou que vous ayez des liens familiaux avec la Bulgarie, ce cours vous permettra d\'acquérir une base solide en bulgare. Vous apprendrez 200 phrases essentielles qui vous aideront à communiquer couramment dans diverses situations, que ce soit pour le plaisir, les affaires, ou le voyage. Rejoignez-nous pour explorer la langue bulgare et enrichir votre répertoire linguistique grâce à des expressions authentiques et utiles.', 'https://img.freepik.com/photos-gratuite/fille-assise-table-cahiers_23-2147657336.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/khLEX51swU4?si=d4b_c2OtwDakmEXW', '2021-10-12'),
(36, 'Apprenez le bulgare en seulement 7 semaines', 2, 22, 9, 'Aprs seulement 49 jours d’apprentissage, vous prendrez plaisir  pouvoir parler couramment une nouvelle langue.\r\n\r\nTags: apprendre le bulgare en ligne, apprendre le bulgare couramment, apprendre le bulgare vite, cours de bulgare pour dbutants, apprendre le bulgare youtube.', 'https://img.freepik.com/photos-gratuite/personnes-bonne-sante-posent-papiers_23-2147659405.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/qyEo7YzC7jk?si=ejOS5ch3_d3F4LTI', '2020-05-10'),
(37, '230 Phrases en Japonais Pour les Débutants', 1, 5, 5, 'Découvrez notre cours \'230 Phrases en Japonais Pour les Débutants\' et plongez-vous dans l\'univers fascinant de la langue japonaise. Que vous soyez un novice enthousiaste cherchant à établir des bases solides en japonais ou que vous prépariez un voyage au Japon, ce cours a été spécialement conçu pour vous. Vous apprendrez 230 phrases essentielles qui vous permettront de communiquer efficacement dans diverses situations de la vie quotidienne. Avec un mélange d\'expressions courantes, de vocabulaire utile et de conseils sur la prononciation, vous serez bien préparé pour interagir avec les locaux et découvrir la richesse de la culture japonaise. Rejoignez-nous pour commencer votre voyage d\'apprentissage du japonais dès aujourd\'hui !', 'https://img.freepik.com/photos-gratuite/portrait-jeune-femme-asiatique-travaillant-ordinateur-portable-prenant-notes-ecrivant-tout-assistant-reunion-travail-cours-ligne_1258-128155.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/8vfmpIlV7qg?si=nLyLEdEGxlOCS3lM', '2017-10-03'),
(38, 'Conversation en italien - Parle italien avec moi ', 2, 21, 6, 'On se retrouve pour une nouvelle leçon d’italien et, aujourd’hui, nous allons faire une conversation en italien, ce sera une vidéo interactive où j’aurais besoin de votre participation : Parle italien avec moi!\r\n\r\nCette vidéo sera utile pour travailler sur la prononciation des mots, sur l’intonation et surtout pour apprendre certaines expressions courantes dans un contexte informel.', 'https://img.freepik.com/photos-gratuite/apprendre-italien-concept-education-ligne_53876-139711.jpg?size=626&ext=jpg', 'https://www.youtube.com/embed/kSm4XL5w2No?si=8RUCtLgP4Y2bIAoy', '2015-10-11');

-- --------------------------------------------------------

--
-- Structure de la table `course_tag`
--

DROP TABLE IF EXISTS `course_tag`;
CREATE TABLE IF NOT EXISTS `course_tag` (
  `id_tag` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tag_bg_color` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `tag_text_color` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_tag`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `course_tag`
--

INSERT INTO `course_tag` (`id_tag`, `tag_name`, `tag_bg_color`, `tag_text_color`) VALUES
(1, 'Vocabulaire', 'bg-green-100', 'text-green-800'),
(2, 'Grammaire', 'bg-pink-100', 'text-pink-800'),
(3, 'Compréhension orale', 'bg-yellow-100 ', 'text-yellow-800'),
(4, 'Conversation', 'bg-indigo-200  ', 'text-indigo-800'),
(5, 'Compréhension écrite', 'bg-gray-100', 'text-gray-800'),
(6, 'Prononciation', 'bg-yellow-400', 'text-yellow-50'),
(7, 'Voyage', 'bg-green-600', 'text-green-100'),
(8, 'Business', 'bg-gray-400', 'text-gray-100');

-- --------------------------------------------------------

--
-- Structure de la table `course_tag_asso`
--

DROP TABLE IF EXISTS `course_tag_asso`;
CREATE TABLE IF NOT EXISTS `course_tag_asso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `course_tag_asso`
--

INSERT INTO `course_tag_asso` (`id`, `course_id`, `tag_id`) VALUES
(42, 1, 1),
(43, 1, 7),
(44, 1, 4),
(45, 1, 8),
(46, 2, 5),
(47, 2, 6),
(48, 2, 4),
(49, 2, 8),
(50, 3, 4),
(51, 3, 3),
(52, 3, 7),
(53, 3, 8),
(54, 4, 6),
(55, 4, 5),
(56, 4, 3),
(57, 4, 1),
(58, 5, 1),
(59, 5, 5),
(60, 5, 8),
(61, 5, 3),
(62, 6, 5),
(63, 6, 2),
(64, 6, 1),
(65, 6, 3),
(66, 7, 7),
(67, 7, 1),
(68, 7, 4),
(69, 7, 2),
(70, 7, 3),
(71, 8, 6),
(72, 8, 5),
(73, 9, 4),
(74, 9, 2),
(75, 9, 1),
(76, 10, 6),
(77, 10, 1),
(78, 10, 5),
(79, 11, 5),
(80, 11, 6),
(81, 11, 2),
(82, 11, 4),
(83, 11, 8),
(84, 12, 2),
(85, 12, 3),
(86, 12, 7),
(87, 12, 5),
(88, 12, 4),
(89, 12, 1),
(90, 13, 7),
(91, 13, 8),
(92, 13, 1),
(93, 13, 6),
(94, 14, 6),
(95, 14, 7),
(96, 14, 8),
(97, 14, 3),
(98, 15, 5),
(99, 15, 8),
(100, 15, 2),
(101, 16, 3),
(102, 16, 4),
(103, 16, 8),
(104, 16, 5),
(105, 16, 6),
(106, 17, 5),
(107, 17, 6),
(108, 18, 4),
(109, 18, 7),
(110, 18, 6),
(111, 18, 2),
(112, 18, 3),
(113, 19, 7),
(114, 19, 6),
(115, 19, 3),
(116, 19, 8),
(117, 20, 2),
(118, 20, 1),
(119, 20, 7),
(120, 20, 6),
(121, 20, 4),
(122, 20, 5),
(123, 21, 8),
(124, 21, 5),
(125, 21, 6),
(126, 21, 3),
(127, 22, 4),
(128, 22, 2),
(129, 22, 6),
(130, 23, 2),
(131, 23, 4),
(132, 23, 8),
(133, 23, 3),
(134, 24, 4),
(135, 24, 7),
(136, 24, 6),
(137, 24, 5),
(138, 25, 2),
(139, 25, 7),
(140, 26, 3),
(141, 26, 5),
(142, 26, 7),
(143, 26, 2),
(144, 27, 6),
(145, 27, 3),
(146, 27, 5),
(147, 27, 1),
(148, 28, 1),
(149, 28, 3),
(150, 28, 2),
(151, 29, 3),
(152, 29, 7),
(153, 29, 8),
(154, 29, 6),
(155, 29, 2),
(156, 29, 4),
(157, 30, 7),
(158, 30, 1),
(159, 30, 8),
(160, 30, 5),
(161, 31, 7),
(162, 31, 2),
(163, 31, 6),
(164, 31, 5),
(165, 32, 1),
(166, 32, 3),
(167, 32, 7),
(168, 32, 6),
(169, 32, 4),
(170, 33, 6),
(171, 33, 2),
(172, 33, 5),
(173, 33, 3),
(174, 33, 8),
(175, 33, 1),
(176, 34, 4),
(177, 34, 7),
(178, 35, 7),
(179, 35, 4),
(180, 35, 1),
(181, 35, 2),
(182, 36, 8),
(183, 36, 1),
(184, 36, 2),
(185, 37, 5),
(186, 37, 7),
(187, 37, 8),
(188, 37, 2),
(189, 37, 6),
(190, 38, 1),
(191, 38, 7),
(192, 38, 2),
(193, 38, 3);

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id_lang` int NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_lang`),
  UNIQUE KEY `lang_name` (`lang_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id_lang`, `lang_name`) VALUES
(1, 'Anglais'),
(8, 'Arabe'),
(9, 'Bulgare'),
(2, 'Chinois'),
(7, 'Coréen'),
(4, 'Espagnol'),
(3, 'Français'),
(6, 'Italien'),
(5, 'Japonais');

-- --------------------------------------------------------

--
-- Structure de la table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `level_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `level_bg_color` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `level_text_color` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_level`),
  UNIQUE KEY `level_name` (`level_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `level`
--

INSERT INTO `level` (`id_level`, `level_name`, `level_bg_color`, `level_text_color`) VALUES
(1, 'Débutant', 'bg-yellow-400', 'text-red-800'),
(2, 'Intermédiaire', 'bg-purple-400', 'text-white'),
(3, 'Avancé', 'bg-red-600', 'text-red-100');

-- --------------------------------------------------------

--
-- Structure de la table `selection_course`
--

DROP TABLE IF EXISTS `selection_course`;
CREATE TABLE IF NOT EXISTS `selection_course` (
  `id_selection` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id_selection`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `selection_course`
--

INSERT INTO `selection_course` (`id_selection`, `user_id`, `course_id`) VALUES
(1, 15, 2),
(2, 15, 3),
(11, 15, 9),
(12, 15, 5),
(13, 15, 1),
(14, 2, 2),
(15, 3, 3),
(16, 20, 20),
(17, 15, 11),
(18, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id_teacher` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `profile` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `firstname`, `lastname`, `profile`) VALUES
(1, 'Pierre', 'Laurent', 'https://img.freepik.com/photos-gratuite/portrait-belle-blonde-mature-barbu-coiffure-mode-chemise-grise-decontractee-souriant_176420-15741.jpg?w=900&t=st=1698606020~exp=1698606620~hmac=0a4f5a912895bd5d133a989c440f8f4a7e3e01397e426598fb77ec8311b34996'),
(2, 'Alain', 'Dupont', 'https://img.freepik.com/photos-gratuite/portrait-beau-jeune-homme-aux-bras-croises_176420-15569.jpg?w=900&t=st=1698606086~exp=1698606686~hmac=9c5d04d350c9a7f5c85244474621dbe9ef3332cbd29d01eb40e8f7b871db5b04'),
(3, 'Anne', 'Girard', 'https://img.freepik.com/photos-gratuite/portrait-belle-jeune-femme-debout-mur-gris_231208-10760.jpg?t=st=1698606081~exp=1698606681~hmac=c03759ef1bc31ef8498ece06ba58a7b53e81ab845c64f41b59eb80634f440c0d'),
(4, 'Isabelle', 'Roussel', 'https://img.freepik.com/photos-gratuite/jeune-belle-femme-pull-chaud-rose-aspect-naturel-souriant-portrait-isole-cheveux-longs_285396-896.jpg?w=900&t=st=1698606123~exp=1698606723~hmac=d3bfda8a26bc5c64b98ee0d68011666b747a14643688228af7cfdc7a2956df9b'),
(5, 'Aiko', 'Yamamoto', 'https://img.freepik.com/photos-gratuite/femme-souriante-coup-moyen-exterieur_23-2149061661.jpg?w=740&t=st=1698606163~exp=1698606763~hmac=aa1dca653d4605e03a087fb478706d0b732ac94b45727e931ac37a3b5111f512'),
(6, 'Yumi', 'Nakamura', 'https://img.freepik.com/photos-gratuite/jeune-femme-marchant-dans-quartier_23-2149410288.jpg?w=740&t=st=1698606186~exp=1698606786~hmac=077732f6b9a6fee268125ae0005ffcadd9ed1728a315f485e758c77457f68241'),
(7, 'Akira', 'Kato', 'https://img.freepik.com/photos-gratuite/smiley-femme-canape_23-2148542130.jpg?w=996&t=st=1698606205~exp=1698606805~hmac=06feb414d36be6197ff4996c2f6dc3d1348fa5e0473879e25b40f11a7bb1381b'),
(8, 'Jihoon', 'Lee', 'https://img.freepik.com/photos-gratuite/portrait-jeune-homme-japonais-lunettes_23-2148870781.jpg?w=740&t=st=1698606225~exp=1698606825~hmac=807e6c7016b7a171af7972b20e3822ed3cff13da7f83c27681bb3308096f131c'),
(9, 'Seongwoo', 'Kim', 'https://img.freepik.com/photos-gratuite/portrait-beau-jeune-homme-asiatique-debout-backgrou-bleu_1187-4828.jpg?1&w=996&t=st=1698606292~exp=1698606892~hmac=061f702eeab829ab8ee6ddaeddd1074985d7b92dd4b1993f66e8f0fbc36c44c8'),
(10, 'Junseo', 'Choi', 'https://img.freepik.com/photos-gratuite/smiley-femme-debout-bras-croises_23-2148418540.jpg?w=996&t=st=1698606275~exp=1698606875~hmac=ae8c2a1d53185c03ae9d422c2772d813ec5b18d67613601eac7e031ad672d4a3'),
(11, 'Taeyoung', 'Jo', 'https://img.freepik.com/photos-gratuite/homme-souriant-coup-moyen-posant-lunettes_23-2149434881.jpg?w=900&t=st=1698606322~exp=1698606922~hmac=ec683e9cba2c46778953a77d9b76056601342c3ac706a8e7675573dcd7c0f51d'),
(12, 'Mohamed', 'Al-Maqdisi', 'https://img.freepik.com/photos-gratuite/homme-souriant-tir-moyen_23-2149915905.jpg?w=740&t=st=1698606346~exp=1698606946~hmac=bfe11f57d4149e61463928ac29748eff82ac84ad584675aff5ac3b22bd3c6106'),
(13, 'Amina', 'Hassan', 'https://img.freepik.com/photos-gratuite/coup-moyen-femme-portant-halal-exterieur_23-2150701515.jpg?w=900&t=st=1698606377~exp=1698606977~hmac=e993a062850b8dec17d01d76a058de88fbe7f45c3cd4a07c8abfcb329f91498e'),
(14, 'Karim', 'Sharif', 'https://img.freepik.com/photos-gratuite/bel-homme-hispanique-barbe-portant-vetements-decontractes-sourire-heureux-cool-visage-chanceux_839833-31901.jpg?w=900&t=st=1698606397~exp=1698606997~hmac=213949adb30c59a9d1b43599e995b9a468eb636f1710d90b0c0bcf9e'),
(15, 'Maria', 'García', 'https://img.freepik.com/photos-gratuite/fiere-femme-musulmane-confiante-posant-dehors_74855-1577.jpg?w=740&t=st=1698606414~exp=1698607014~hmac=bf610efece8e185071be80acc6c1bb0717762b02114e81ad4e9d3d38fe7bc2ae'),
(16, 'Laura', 'López', 'https://img.freepik.com/photos-gratuite/joyeuse-jeune-femme-positive-aux-cheveux-blonds-habillee-desinvolture-emotions-sentiments-positifs_176420-14971.jpg?w=900&t=st=1698606453~exp=1698607053~hmac=3c2e49f1eb79883bb318408bd04e4213fad640ea880d59ef2d2b'),
(17, 'Carmen', 'Fernández', 'https://img.freepik.com/photos-gratuite/joyeuse-femme-age-moyen-aux-cheveux-boucles_1262-20859.jpg?w=900&t=st=1698606514~exp=1698607114~hmac=7da341572e31632f21a3b84b77601231467f51f3a4f681612945a97aeff44888'),
(18, 'Pedro', 'Sánchez', 'https://img.freepik.com/photos-gratuite/photo-horizontale-bel-homme-joyeux-qui-regarde-joyeusement-loin-sourires-porte-largement-t-shirt-noir-decontracte-isole-fond-blanc-espace-copie-vierge-etant-bonne-humeur-rit-quelque-chose_273609-57699.jpg?w=900'),
(19, 'Marco', 'Russo', 'https://img.freepik.com/photos-gratuite/portrait-jeune-homme-souriant-lunettes_171337-4842.jpg?w=900&t=st=1698606562~exp=1698607162~hmac=dca65746979c55f9407e7f8688e03955f0a0b5dbf8869e7038a326c939cdcda7'),
(20, 'Giovanni', 'Conti', 'https://img.freepik.com/photos-gratuite/homme-affaires-prospere-garde-mains-croisees-expression-satisfaite_273609-16711.jpg?w=900&t=st=1698606586~exp=1698607186~hmac=b265f2bfe65120ee4109cea1d922c72f3ea8382de71490057981f08933d3f998'),
(21, 'Sofia', 'Russo', 'https://img.freepik.com/photos-gratuite/belle-jeune-femme-t-shirt-posant-debout-air-joyeux-vue-face_176474-106658.jpg?w=900&t=st=1698606610~exp=1698607210~hmac=d4d8303a55dc86d1df155ef96871414f1e0e2f6bdba008dc1f6637deb5df9c49'),
(22, 'Ivan', 'Petrov', 'https://img.freepik.com/photos-gratuite/portrait-selfie-pour-appel-video_23-2149186128.jpg?w=900&t=st=1698606644~exp=1698607244~hmac=fa7cb4140d9b8b94b8f0e159ad34ce9a06e43d8cae31251d5de0877f84c574fb'),
(23, 'Georgi', 'Todorov', 'https://img.freepik.com/photos-gratuite/guy-worldface-espagnol-dans-fond-blanc_53876-137665.jpg?w=996&t=st=1698606661~exp=1698607261~hmac=e1a6b3d5535f6b1cc39229903b116b7bcb5863bb8835855b7a565fa21bc442d9'),
(24, 'Nikolay', 'Dimitrov', 'https://img.freepik.com/photos-gratuite/jeune-homme-t-shirt-blanc-regardant-avant-ayant-air-confiant_176474-83677.jpg?w=900&t=st=1698606691~exp=1698607291~hmac=bfa1f05d453bf86f2be609c2457bc8807a869ace3dc12bc65804a08aee893ae0'),
(25, 'David', 'Smith', 'https://img.freepik.com/photos-gratuite/mec-rousse-expressif-chemise-beige_176420-32329.jpg?w=900&t=st=1698606721~exp=1698607321~hmac=8f38a9e227786ea38ebd88e05ddd9fb87ee990804e2ebbae80fa93e4db5c5dfe'),
(26, 'Mary', 'Taylor', 'https://img.freepik.com/photos-gratuite/jeune-belle-femme-pull-chaud-rose-aspect-naturel-souriant-portrait-isole-cheveux-longs_285396-896.jpg?w=900&t=st=1698659822~exp=1698660422~hmac=2220c51c149d874dca42e2a4b278665b0304cc6ed1beaad819fa8a102f4f04af'),
(27, 'James', 'Wilson', 'https://img.freepik.com/photos-gratuite/confiant-beau-mec-posant-contre-mur-blanc_176420-32936.jpg?w=900&t=st=1698659917~exp=1698660517~hmac=8d68d7805be81fc1abac563c16cc51c26a764a49f25971316efd32a518cfc832'),
(28, 'Linda', 'Brown', 'https://img.freepik.com/photos-gratuite/assez-souriant-joyeusement-femme-aux-cheveux-blonds-habille-desinvolture-regardant-satisfaction_176420-15187.jpg?w=900&t=st=1698659847~exp=1698660447~hmac=531ceebc22e8dcac5bc2df0add0271efc25182ccfb5b82c44374574'),
(29, 'Charles', 'Williams', 'https://img.freepik.com/photos-gratuite/artiste-blanc_1368-3546.jpg?w=360&t=st=1698659933~exp=1698660533~hmac=91ca41349e103c5dbf51ece99300ac31921b25d3bebb5a715ed55f56359c3100'),
(30, 'Nancy', 'Evans', 'https://img.freepik.com/photos-gratuite/sourire-confiant-femme-affaires-posant-bras-croises_1262-20950.jpg?w=826&t=st=1698860712~exp=1698861312~hmac=1d9b232449b593126254acdd428dd71e34534bcc6e2f832acd0b15773fcccacd'),
(31, 'Wei', 'Wang', 'https://img.freepik.com/photos-gratuite/mec-asiatique-boites-plats-emporter_1303-26715.jpg?w=360&t=st=1698659999~exp=1698660599~hmac=bd136bc99a498259a8b42cc85ce5cc8c03fc8b36dbd40cec0e2c822e09108e7d'),
(32, 'Jun', 'Zhou', 'https://img.freepik.com/photos-gratuite/dame-aux-yeux-bruns-sourit-mur-rouge_197531-16958.jpg?w=826&t=st=1698656998~exp=1698657598~hmac=8680e3fdf5426a05b414ff7fe4c09741c257e0877940209c5a7d63ddd2f9aa2a'),
(33, 'Hong', 'Wang', 'https://img.freepik.com/photos-premium/homme-vietnamien-sacs-provisions_274689-4074.jpg?w=360'),
(34, 'Jing', 'Zhao', 'https://img.freepik.com/photos-gratuite/belle-jeune-femme-japonaise_23-2148870802.jpg?w=360&t=st=1698659974~exp=1698660574~hmac=9097824271f34e42b10471aff9cd92c0ed6b75aef089c03a1693c1608a442507'),
(35, 'Lei', 'Shi', 'https://img.freepik.com/photos-gratuite/portrait-smiley-jeune-femme_23-2148576761.jpg?w=900&t=st=1698660073~exp=1698660673~hmac=96841d8ad6a056f82a33f12520d2ed8fc91dd21feeb5baa0cfc852b5615a9661'),
(36, 'Seongwoo', 'Kim', 'https://img.freepik.com/photos-gratuite/portrait-beau-jeune-homme-asiatique-debout-backgrou-bleu_1187-4828.jpg?1&w=996&t=st=1698606292~exp=1698606892~hmac=061f702eeab829ab8ee6ddaeddd1074985d7b92dd4b1993f66e8f0fbc36c44c8');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `type_user` int NOT NULL DEFAULT '0',
  `firstname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `date_create` date NOT NULL,
  `tel` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar_url` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `type_user`, `firstname`, `lastname`, `email`, `password`, `birthday`, `date_create`, `tel`, `avatar_url`) VALUES
(1, 0, 'Alice', 'Johnson', 'alice@example.com', '$2y$10$Z2Zzm0VIEEfwK1/RcuI2xO5Cvf8l3zRZVoLUFh3U1uXPH0zbtQdNu', '1990-01-15', '2023-10-24', '1234567890', NULL),
(2, 0, 'Bob', 'Smith', 'bob@example.com', '$2y$10$r.YcWoLJSe7A.WABaC4jL.ZdxVpgszOmHJFP8Is8fviNtZY0ubf2C', '1985-03-20', '2023-10-24', '9876543210', NULL),
(3, 0, 'Eva', 'Lee', 'eva@example.com', '$2y$10$Whq3RuBXKSiXzjPOSiAoqeTKipPsesBUguJQFZWc.2a3I2wdcmw.y', '1995-06-10', '2023-10-24', '5555555555', NULL),
(4, 0, 'David', 'Garcia', 'david@example.com', '$2y$10$/9YYK7AQ0UiSYDgo2n66q.hMu3MAB5owIFgyaS.ifgPzVO03N.YGO', '1987-11-03', '2023-10-24', '1111111111', NULL),
(5, 0, 'Linda', 'Martinez', 'linda@example.com', '$2y$10$xTDj3JoT.8l8lHQgoqDideQwEmr9fqjeI7YSILOnKkBKdgbEfQxXq', '1993-08-25', '2023-10-24', '9999999999', NULL),
(6, 0, 'Michael', 'Brown', 'michael@example.com', '$2y$10$.VY4aH3FsvGvklaIa1piMO8D8xxEr2LpH7LaiFH8d3nfp9T3JirmK', '1980-04-12', '2023-10-24', '7777777777', NULL),
(7, 0, 'Sophia', 'Lopez', 'sophia@example.com', '$2y$10$OdILaVAQ7a5arvAFpEnjfup5JUTxIRpPFerSz5XQi.GnXCpcgxTgO', '1991-02-19', '2023-10-24', '8888888888', NULL),
(8, 0, 'William', 'Miller', 'william@example.com', '$2y$10$0u.wrzrrrAZPWgziB2mZnO2Hd7.XJqTMJD0Eyy46Lsip4n1HPrruK', '1988-07-08', '2023-10-24', '4444444444', NULL),
(9, 0, 'Olivia', 'Wilson', 'olivia@example.com', '$2y$10$.9AQAcpWQ7gyH5ujvqifouhw997n/7Qe2IvqzYCMXTHKrMsgixJ9m', '1992-05-30', '2023-10-24', '6666666666', NULL),
(10, 0, 'James', 'Taylor', 'james@example.com', '$2y$10$37dD9xXRtQwbqOXL8vW6l./gRrm6ZGv2MTkp44rSBP12PAZcFl5/C', '1983-09-22', '2023-10-24', '3333333333', NULL),
(11, 0, 'test', 'test', 'test@hb.com', '$2y$10$xxx613d1qX3Amx9DpMkvL.ke1Zy1X4/6UlFQqQmCYe234x6xLXXuG', '2023-10-03', '2023-10-26', '0999999999', 'avatar.png'),
(12, 0, 'demo', 'demo', 'demo@gmail.com', '$2y$10$45q.315dSbLj2HxVdAM0NO9aGsV0HaH/sheZuLb7WzWRl4Ok23lvG', '2023-10-01', '2023-10-26', '0777777777', 'https://img.freepik.com/vecteurs-libre/illustration-icone-vecteur-dessin-anime-nid-abeille-calin-abeille-miel-mignon-concept-icone-nature-animale-isole_138676-6880.jpg?w=1380&t=st=1699653806~exp=1699654406~hmac=4afe85829941a1f5909fb519c5317f13538d8fb'),
(14, 0, 'aya', 'B', 'aya@gmail.com', '$2y$10$UWD8JIe35boDexBQ0giF6eN1W8SHdsz7D3wlVaN2YNUKfEb6qllge', '2012-06-21', '2023-11-03', '0777777777', 'https://img.freepik.com/vecteurs-libre/lapin-animal-plat-mignon-illustration-parapluie-pour-enfants-personnage-lapin-mignon_69135-1322.jpg?w=1380&t=st=1699653766~exp=1699654366~hmac=7dc63792c07e769141c4dcb964d53c32b87e5d7ef8356de30d7fb06c92a7f2b3'),
(15, 0, 'Hris', 'SS', 'hris@gmail.com', '$2y$10$HoJNFdk4KmNj8.ZucsjNTejAKh.oTTCsUEdNENOePMz9obEfwiMaG', '2017-02-24', '2023-11-04', '0999999999', '4b2b067e77668e244f2c.png'),
(16, 0, 'Lucas', 'De', 'lucas@gmail.com', '$2y$10$UGKLw3Obt7YwcZLSxDcAkejFJh3LhEan6dvYQowEqZBHdGiaaiFn2', '2014-06-05', '2023-11-04', '0990909090', '27b4a53387b596f83cd3.png'),
(19, 0, 'Bonnie', 'F', 'bonnie@gmail.com', '$2y$10$6SEEUluhzLCdC1tpb7lzJOUE1f2103OVERIwG8IgbCLnUMZltqNOa', '2012-02-04', '2023-11-04', '9999999999', 'f12e239ab21931dc5eac.png'),
(20, 1, 'MeiJ', 'Lu', 'meijuan@gmail.com', '123456', '2013-11-01', '2023-11-03', '0666666666', 'https://img.freepik.com/photos-gratuite/adorable-chat-relaxant-interieur_23-2150692816.jpg?size=626&ext=jpg');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chapiter`
--
ALTER TABLE `chapiter`
  ADD CONSTRAINT `chapiter_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id_course`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`id_level`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id_lang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id_teacher`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `course_tag_asso`
--
ALTER TABLE `course_tag_asso`
  ADD CONSTRAINT `course_tag_asso_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id_course`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `course_tag_asso_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `course_tag` (`id_tag`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `selection_course`
--
ALTER TABLE `selection_course`
  ADD CONSTRAINT `selection_course_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id_course`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `selection_course_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

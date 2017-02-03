-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Ven 03 Février 2017 à 08:13
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `simple-quiz`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_num` int(11) unsigned NOT NULL,
  `quiz_id` int(11) unsigned NOT NULL,
  `text` varchar(255) NOT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `answers`
--

INSERT INTO `answers` (`id`, `question_num`, `quiz_id`, `text`, `correct`) VALUES
(1, 1, 12, 'Precis', 1),
(2, 1, 12, 'Vague', 0),
(3, 1, 12, 'Identique', 0),
(4, 2, 12, 'Organise', 0),
(5, 2, 12, 'Prudent', 1),
(6, 2, 12, 'Investi', 0),
(7, 3, 12, 'Genereux', 0),
(8, 3, 12, 'Applique', 0),
(9, 3, 12, 'Talentueux', 1),
(10, 4, 12, 'Ponctuel', 0),
(11, 4, 12, 'Fidele', 1),
(12, 4, 12, 'Courageux', 0),
(13, 5, 12, 'Rigoureux', 1),
(14, 5, 12, 'Severe', 0),
(15, 5, 12, 'Amusant', 0),
(16, 6, 12, 'Orateur', 0),
(17, 6, 12, 'Comprehensif', 1),
(18, 6, 12, 'Habile ', 0),
(19, 1, 13, 'very many', 0),
(20, 1, 13, 'a few', 0),
(21, 1, 13, 'a lot', 1),
(22, 2, 13, 'said', 1),
(23, 2, 13, 'told', 0),
(24, 2, 13, 'spoke', 0),
(25, 3, 13, 'discussing', 0),
(26, 3, 13, 'to discuss', 1),
(27, 3, 13, 'to discuss about', 0),
(28, 4, 13, 'though', 1),
(29, 4, 13, 'as', 0),
(30, 4, 13, 'however', 0),
(31, 1, 14, 'True', 1),
(32, 1, 14, 'False', 0),
(33, 2, 14, 'True', 0),
(34, 2, 14, 'False', 1),
(35, 3, 14, 'True', 0),
(36, 3, 14, 'False', 1),
(37, 4, 14, 'True', 0),
(38, 4, 14, 'False', 1),
(39, 5, 14, 'True', 1),
(40, 5, 14, 'False', 0),
(41, 6, 14, 'True', 1),
(42, 6, 14, 'False', 0);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Vocabulaire', 'Exercices de vocabulaire'),
(2, 'Grammaire', 'Exercices de grammaire'),
(3, 'Comprehension écrite', 'TOIC partie comprehension ecrite'),
(4, 'Comprehension orale', 'TOIC partie comprehension orale');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `quiz_id` int(11) unsigned NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id`, `num`, `quiz_id`, `text`) VALUES
(48, 1, 12, 'Accurate'),
(49, 2, 12, 'Careful'),
(50, 3, 12, 'Gifted'),
(51, 4, 12, 'Faithful'),
(52, 5, 12, 'Rigorous'),
(53, 6, 12, 'Understanding'),
(54, 1, 13, 'It will be ____ fun to go camping with Bob.'),
(55, 2, 13, 'I must go, that''s what John ____'),
(56, 3, 13, 'I don''t want ____ it anymore, you are stubborn.'),
(57, 4, 13, '____ he is over sixty years old, he still looks young.'),
(58, 1, 14, 'This is a science fiction story'),
(59, 2, 14, 'This story starts one morning in a very big American town'),
(60, 3, 14, 'He was quite small ; his hair was white and he had blue eyes.'),
(61, 4, 14, 'He didn''t look very intelligent.'),
(62, 5, 14, 'He didn''t seem very old.'),
(63, 6, 14, 'He was really afraid.');

-- --------------------------------------------------------

--
-- Structure de la table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `category`, `active`, `created`, `updated`) VALUES
(12, 'Preparer Un Entretien D''embauche', 'Trouver la bonne traduction', 1, 1, '2017-02-02 20:49:35', '2017-02-02 21:50:33'),
(13, 'Revision Bac', 'Choisir la bonne reponse', 2, 1, '2017-02-02 21:01:40', '2017-02-02 22:01:40'),
(14, 'My Second Day On Earth', 'Lisez le texte puis repondez aux questions: He was not a man. Yet he was very much like a man. He was six and a half feet tall. His hair was white and his eyes were blue, but his face was a light brown colour. His body was very thin and almost without hai', 3, 1, '2017-02-02 21:11:34', '2017-02-02 22:11:34');

-- --------------------------------------------------------

--
-- Structure de la table `quiz_users`
--

CREATE TABLE `quiz_users` (
  `id` int(10) unsigned NOT NULL,
  `quiz_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `date_submitted` datetime NOT NULL,
  `time_taken` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `quiz_users`
--

INSERT INTO `quiz_users` (`id`, `quiz_id`, `user_id`, `score`, `start_time`, `date_submitted`, `time_taken`) VALUES
(37, 12, 229, 2, '2017-02-02 23:23:14', '2017-02-02 23:23:21', '7'),
(38, 13, 229, 0, '2017-02-03 00:21:32', '2017-02-03 00:21:41', '9'),
(39, 14, 229, 0, '2017-02-03 00:24:54', '2017-02-03 00:25:09', '15');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(32) NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sessions`
--

INSERT INTO `sessions` (`id`, `access`, `data`) VALUES
('1024d50e00c74ae7d9d713230ac911e4', 1486078682, 'slim.flash|a:0:{}user|O:29:"SimpleQuiz\\Utils\\User\\EndUser":7:{s:38:"\0SimpleQuiz\\Utils\\User\\EndUser\0quizzes";N;s:36:"\0SimpleQuiz\\Utils\\User\\EndUser\0score";N;s:32:"\0SimpleQuiz\\Utils\\Base\\User\0name";s:4:"test";s:33:"\0SimpleQuiz\\Utils\\Base\\User\0email";s:13:"test@test.com";s:36:"\0SimpleQuiz\\Utils\\Base\\User\0password";N;s:30:"\0SimpleQuiz\\Utils\\Base\\User\0id";s:3:"229";s:35:"\0SimpleQuiz\\Utils\\Base\\User\0quizzes";N;}quizid|s:2:"12";score|i:0;correct|a:0:{}wrong|a:0:{}finished|s:2:"no";num|i:0;last|N;timetaken|N;starttime|N;nonce|N;'),
('4a13a70ebd63404a1ace96f5f657e7cd', 1486105596, 'slim.flash|a:0:{}user|O:29:"SimpleQuiz\\Utils\\User\\EndUser":7:{s:38:"\0SimpleQuiz\\Utils\\User\\EndUser\0quizzes";N;s:36:"\0SimpleQuiz\\Utils\\User\\EndUser\0score";N;s:32:"\0SimpleQuiz\\Utils\\Base\\User\0name";s:4:"test";s:33:"\0SimpleQuiz\\Utils\\Base\\User\0email";s:13:"test@test.com";s:36:"\0SimpleQuiz\\Utils\\Base\\User\0password";N;s:30:"\0SimpleQuiz\\Utils\\Base\\User\0id";s:3:"229";s:35:"\0SimpleQuiz\\Utils\\Base\\User\0quizzes";N;}'),
('cdaa0a351ca7015198b46bac4bf65840', 1486105591, 'slim.flash|a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `level` int(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `confirmhash` varchar(40) DEFAULT NULL,
  `hashstamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `email`, `level`, `confirmed`, `confirmhash`, `hashstamp`) VALUES
(157, 'Admin', '$2y$10$LK9O0BesGScRkDWPnpVP3uGVcN6JqB/xsuFTq/xQFpNjsx2DvTOl2', 'example@gmail.com', 1, 1, NULL, NULL),
(192, 'user1', '$2y$10$D2tpVb9i6GsPawn1H18tCu2s.2T9uHHWMQY7Osyeh12AzJsJ9Y5VO', 'examples@gmail.com', 0, 0, NULL, NULL),
(193, 'user2', '$2y$10$DOueZ880b4buKA2sm0a67OzZNSfv3ev7DT31tI53Moq1pGA9h/Dx6', 'example2@gmail.com', 0, 0, NULL, NULL),
(194, 'user3', '$2y$10$cUcIj1qyd1rWYE3vQTXW8emBx27Je9ZWcgNMDUnKN3a5n9kCED/S2', 'example@gmail.com1', 0, 0, NULL, NULL),
(195, 'user4', '$2y$10$n1Y3HJSwWxq0toQa8pQzb.kra1mfMySsaCsC/bH0/oE3oMNLM7GmO', 'example@gmail.com432432', 0, 0, NULL, NULL),
(196, 'user6', '$2y$10$B4ufMwQ9BzhGLVfY0CTBseqVIhSbRk1XQB8zu5LmOor9uAeLXeQIa', 'example4@gmail.com', 0, 0, NULL, NULL),
(229, 'test', '$2y$10$/8SnqNPLK03ty1SsOnYXVOKfD1/Bu8qGBlDgnmPOd21X2hywmRS8e', 'test@test.com', 0, 0, NULL, NULL),
(230, 'test2', '$2y$10$/vWgTnnrCJ7reLQi/MzAQOfXHIgGsRdTuphBhE3CiZ66hCUHwJWMy', 'test2@test.com', 0, 0, NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`),
  ADD KEY `id` (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `updated` (`updated`);

--
-- Index pour la table `quiz_users`
--
ALTER TABLE `quiz_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `pass` (`pass`),
  ADD KEY `confirmed` (`confirmed`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `quiz_users`
--
ALTER TABLE `quiz_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `quiz_users`
--
ALTER TABLE `quiz_users`
  ADD CONSTRAINT `quiz_users_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

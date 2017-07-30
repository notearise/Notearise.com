-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2017 at 04:12 PM
-- Server version: 5.7.17
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friday`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL COMMENT 'ID of post comment',
  `body` text COMMENT 'body of post comment',
  `posted_by` varchar(60) DEFAULT NULL COMMENT 'added by this user',
  `posted_to` varchar(60) DEFAULT NULL COMMENT 'posted to this specific user if any',
  `date_added` datetime DEFAULT NULL COMMENT 'date of post',
  `removed` varchar(3) DEFAULT NULL COMMENT 'user account active',
  `post_id` int(11) DEFAULT NULL COMMENT 'is post deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE comments ADD note_id INT DEFAULT NULL COMMENT 'id of note';

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Rosie! You know you&#39;re the one for me.', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(2, 'Rosie! You know you&#39;re the one for me.', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(3, 'Rosie! You know you&#39;re the one for me.', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(4, '20170509130036', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(5, '2017-05-09 13:01:02', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(6, '2017-05-09 13:01:02', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(7, '2017-05-09 13:02:08', NULL, 'none', '2017-05-09 12:56:34', 'no', 101854),
(8, '2017-05-09 13:03:24', 'denny_crane', 'none', '2017-05-09 13:03:28', 'no', 101854),
(9, '@post_body', '@userLoggedIn', '@posted_to', '2017-05-09 13:09:54', 'no', 101854),
(10, '2017-05-09 13:10:49', 'denny_crane', 'none', '2017-05-09 13:10:52', 'no', 101854),
(11, 'Load the posts.', 'al_nolan', 'al_nolan', '2017-05-09 13:40:01', 'no', 100110),
(12, 'In the posts area, things are going to get funky!', 'al_nolan', 'al_nolan', '2017-05-09 13:40:57', 'no', 100855),
(13, 'Wake up!', 'al_nolan', 'al_nolan', '2017-05-09 13:46:28', 'no', 100855),
(14, 'Yes. this is definitely working.', 'al_nolan', 'al_nolan', '2017-05-09 13:46:41', 'no', 100854),
(15, 'I think the issue is experience. Maybe yo don\'t know what you\'re doing.', 'al_nolan', 'al_nolan', '2017-05-09 13:47:00', 'no', 100110),
(16, 'NO! I\'m not going to keep trying, dude! Get it right! Then I\'ll come back! Maybe.', 'al_nolan', 'al_nolan', '2017-05-09 13:47:24', 'no', 100109),
(17, 'Let\'s see how this goes.', 'al_nolan', 'al_nolan', '2017-05-09 14:25:40', 'no', 100110),
(18, 'By golly this shit is actually working.', 'al_nolan', 'al_nolan', '2017-05-09 14:28:24', 'no', 100110),
(19, 'This is really coming together... like a couple of newlyweds...', 'al_nolan', 'al_nolan', '2017-05-09 14:59:29', 'no', 100855),
(20, 'What the hell is going on?', 'al_nolan', 'al_nolan', '2017-05-09 15:06:22', 'no', 100855),
(21, 'fr fr', 'denny_crane', 'denny_crane', '2017-05-09 15:32:46', 'no', 100856),
(22, 'Who you tellin\'?!?!', 'al_nolan', 'denny_crane', '2017-05-09 15:34:18', 'no', 100856),
(23, 'well, well, well...', 'denny_crane', 'denny_crane', '2017-05-09 17:16:50', 'no', 100856),
(24, 'This is really starting to both me.', 'denny_crane', 'denny_crane', '2017-05-10 15:22:17', 'no', 100677),
(25, 'This is really trying my nerves this morning.', 'al_nolan', 'al_nolan', '2017-05-17 11:27:19', 'no', 100857),
(26, 'Love that jam.', 'al_nolan', 'al_nolan', '2017-05-18 15:51:19', 'no', 100882),
(27, 'If there\'s a better song let me know.', 'al_nolan', 'al_nolan', '2017-05-18 15:51:29', 'no', 100881),
(28, 'Man, I\'m tryna told ya...', 'denny_crane', 'al_nolan', '2017-05-18 16:19:03', 'no', 100882),
(29, 'HA! I got you.', 'al_nolan', 'charlize_theron', '2017-05-18 17:20:35', 'no', 100885),
(30, 'And I only found out about this thing a week ago.', 'al_nolan', 'al_nolan', '2017-05-18 17:21:37', 'no', 100886),
(31, 'I see...', 'craig_mack', 'al_nolan', '2017-05-18 17:23:15', 'no', 100887),
(32, 'HAAAAAA!', 'craig_mack', 'charlize_theron', '2017-05-18 17:23:25', 'no', 100885),
(33, 'Girl, yes. You doin\' the side boob thing?', 'vicky_jeudy', 'charlize_theron', '2017-05-19 17:39:39', 'no', 100893),
(34, 'You\'re supposed to just reply to the comment itself, jackass...', 'vicky_jeudy', 'sean_spicer', '2017-05-19 17:48:17', 'no', 100895),
(35, '...and have a safe trip.', 'vicky_jeudy', 'sean_spicer', '2017-05-19 17:48:24', 'no', 100896),
(36, 'lol', 'vicky_jeudy', 'sean_spicer', '2017-05-19 17:48:43', 'no', 100895),
(37, 'Damn right!', 'sean_spicer', 'denny_crane', '2017-05-19 17:49:55', 'no', 100897),
(38, 'I\'m there.', 'denny_crane', 'sean_spicer', '2017-05-19 17:50:35', 'no', 100898),
(39, 'No, it\'s next month. Wait, you\'re there now?', 'sean_spicer', 'sean_spicer', '2017-05-19 17:50:56', 'no', 100898),
(40, 'No, Sean. I\'m not there now. I\'m saying I\'ll... nevermind... smh', 'denny_crane', 'sean_spicer', '2017-05-19 17:51:29', 'no', 100898),
(41, 'U-S-A!', 'sean_spicer', 'sean_spicer', '2017-05-19 17:51:44', 'no', 100898),
(42, 'What y\'all up to?', 'al_nolan', 'john_legend', '2017-05-27 09:13:39', 'no', 100912),
(43, 'No seriously...', 'larry_david', 'larry_david', '2017-05-27 09:39:45', 'no', 100916),
(44, 'I have no clue... It\'s not as good as Facebook or Evernote... Who the hell built this thing?', 'larry_david', 'larry_david', '2017-05-27 09:40:08', 'no', 100916),
(45, 'I\'m going back to sleep.', 'larry_david', 'larry_david', '2017-05-27 09:40:14', 'no', 100916),
(46, 'YO!', 'vicky_jeudy', 'vicky_jeudy', '2017-06-02 02:56:18', 'no', 100922),
(47, 'Try this...', 'al_nolan', 'al_nolan', '2017-06-02 03:35:54', 'no', 100923),
(48, 'No, seriously... Try this!', 'al_nolan', 'al_nolan', '2017-06-02 03:36:50', 'no', 100923),
(49, 'NOOO!?! 1985!!!', 'al_nolan', 'slacker', '2017-06-02 03:37:30', 'no', 100913),
(50, 'WHOA!', 'al_nolan', 'al_nolan', '2017-06-02 03:38:14', 'no', 100923),
(51, 'This language needs to stop!', 'denny_crane', 'al_nolan', '2017-06-02 03:38:53', 'no', 100924),
(52, '...or at least before it\'s too late.', 'denny_crane', 'denny_crane', '2017-06-02 03:39:23', 'no', 100925),
(53, 'try this comment', 'vicky_jeudy', 'al_nolan', '2017-06-02 03:44:04', 'no', 100924),
(54, 'Man, this shit is actually working.', 'al_nolan', 'al_nolan', '2017-06-07 13:33:31', 'no', 100924),
(55, 'Also, check out https://www.crunchbase.com/organization/snips-2#/entity', 'adolphus_nolan', 'adolphus_nolan', '2017-06-07 13:49:12', 'no', 100931),
(56, 'Bet.', 'al_nolan', 'adolphus_nolan', '2017-06-07 13:50:19', 'no', 100931),
(57, 'Hope this works.', 'tika_sumpter', 'tika_sumpter', '2017-06-07 18:05:19', 'no', 100938),
(58, 'What has it been like 25 years...?!?', 'al_nolan', 'al_nolan', '2017-06-07 19:57:07', 'no', 100948),
(59, 'You got the juice.', 'al_nolan', 'al_nolan', '2017-06-07 19:57:18', 'no', 100948),
(60, 'What does covfefe mean?', 'al_nolan', 'al_nolan', '2017-06-09 11:04:41', 'no', 100957);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL COMMENT 'ID of request',
  `user_to` varchar(50) DEFAULT NULL COMMENT 'request recipient',
  `user_from` varchar(50) DEFAULT NULL COMMENT 'request sender'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(3, 'clark_kent', 'denny_crane'),
(7, 'craig_mack', 'john_legend'),
(8, 'charlize_theron', 'john_legend'),
(10, 'craig_mack', 'slacker'),
(11, 'charlize_theron', 'slacker'),
(14, 'charlize_theron', 'reggie_bush'),
(16, 'denny_crane', 'reggie_bush'),
(19, 'denny_crane', 'larry_david'),
(20, 'denny_crane', 'larry_david'),
(21, 'denny_crane', 'vicky_jeudy'),
(22, 'sean_spicer', 'vicky_jeudy'),
(25, 'clark_kent', 'al_nolan'),
(26, 'vicky_jeudy', 'alfonzo_logan'),
(27, 'denny_crane', 'alfonzo_logan'),
(28, 'craig_mack', 'alfonzo_logan'),
(29, 'charlize_theron', 'alfonzo_logan'),
(30, 'reggie_bush', 'alfonzo_logan'),
(31, 'adolphus_nolan', 'jazz_greene'),
(32, 'craig_mack', 'jazz_greene'),
(33, 'vicky_jeudy', 'jazz_greene'),
(34, 'charlize_theron', 'jazz_greene'),
(36, 'jazz_greene', 'toni_morrison'),
(37, 'jazz_greene', 'toni_morrison'),
(38, 'jazz_greene', 'toni_morrison'),
(39, 'craig_mack', 'toni_morrison'),
(40, 'craig_mack', 'toni_morrison'),
(41, 'jazz_greene', 'tika_sumpter'),
(42, 'toni_morrison', 'tika_sumpter'),
(44, 'denny_crane', 'tika_sumpter'),
(45, 'john_legend', 'tika_sumpter'),
(46, 'charlize_theron', 'tika_sumpter'),
(47, 'clark_kent', 'tika_sumpter'),
(48, 'clark_kent', 'tika_sumpter'),
(49, 'alfonzo_logan', 'tika_sumpter'),
(50, 'reggie_bush', 'tika_sumpter'),
(52, 'toni_morrison', 'benjamin_banneker'),
(53, 'denny_crane', 'benjamin_banneker'),
(54, 'larry_david', 'benjamin_banneker'),
(55, 'john_legend', 'benjamin_banneker'),
(58, 'larry_david', 'corey_booker'),
(59, 'toni_morrison', 'charnelle_smoak'),
(61, 'alfonzo_logan', 'charnelle_smoak'),
(62, 'adolphus_nolan', 'charnelle_smoak'),
(63, 'john_legend', 'charnelle_smoak'),
(64, 'charlize_theron', 'charnelle_smoak'),
(65, 'vicky_jeudy', 'charnelle_smoak'),
(66, 'jazz_greene', 'charnelle_smoak'),
(67, 'denny_crane', 'charnelle_smoak'),
(68, 'larry_david', 'charnelle_smoak'),
(69, 'corey_booker', 'charnelle_smoak'),
(70, 'toucan_sam', 'al_nolan'),
(72, 'rep_condoleezza_rice', 'al_nolan'),
(73, 'rep_michael_steele', 'al_nolan');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL COMMENT 'ID of like',
  `username` varchar(60) DEFAULT NULL COMMENT 'username of user posting',
  `post_id` int(11) DEFAULT NULL COMMENT 'id of post'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE likes ADD note_id INT DEFAULT NULL COMMENT 'id of note';

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'denny_crane', 100530),
(2, 'denny_crane', 100678),
(3, 'denny_crane', 100529),
(4, 'denny_crane', 100856),
(5, 'denny_crane', 100855),
(7, 'al_nolan', 100855),
(8, 'al_nolan', 100854),
(9, 'al_nolan', 100110),
(10, 'al_nolan', 100109),
(11, 'al_nolan', 100523),
(12, 'al_nolan', 100434),
(13, 'al_nolan', 100435),
(14, 'al_nolan', 100423),
(15, 'denny_crane', 100854),
(16, 'denny_crane', 100110),
(17, 'denny_crane', 100109),
(18, 'denny_crane', 100108),
(19, 'denny_crane', 100107),
(20, 'denny_crane', 100106),
(21, 'denny_crane', 100104),
(22, 'denny_crane', 100105),
(23, 'denny_crane', 100103),
(24, 'denny_crane', 100101),
(25, 'denny_crane', 83002),
(26, 'denny_crane', 100539),
(27, 'al_nolan', 100421),
(28, 'al_nolan', 100420),
(29, 'al_nolan', 100411),
(30, 'al_nolan', 100407),
(31, 'al_nolan', 100406),
(32, 'denny_crane', 100861),
(33, 'denny_crane', 100860),
(34, 'denny_crane', 100680),
(35, 'denny_crane', 100681),
(36, 'craig_mack', 100864),
(37, 'craig_mack', 100863),
(38, 'craig_mack', 100862),
(39, 'craig_mack', 100861),
(40, 'craig_mack', 100860),
(41, 'craig_mack', 100859),
(42, 'craig_mack', 100682),
(43, 'denny_crane', 100677),
(44, 'al_nolan', 100857),
(48, 'al_nolan', 100514),
(49, 'al_nolan', 100668),
(50, 'al_nolan', 100671),
(51, 'al_nolan', 100519),
(52, 'al_nolan', 100669),
(53, 'al_nolan', 100870),
(54, 'al_nolan', 100869),
(55, 'al_nolan', 100868),
(56, 'al_nolan', 100863),
(57, 'al_nolan', 100879),
(58, 'al_nolan', 100881),
(59, 'denny_crane', 100882),
(60, 'charlize_theron', 100883),
(61, 'charlize_theron', 100885),
(62, 'al_nolan', 100885),
(63, 'al_nolan', 100886),
(64, 'al_nolan', 100883),
(65, 'charlize_theron', 100884),
(66, 'al_nolan', 100884),
(67, 'craig_mack', 100885),
(68, 'charlize_theron', 100887),
(69, 'craig_mack', 100882),
(70, 'vicky_jeudy', 100892),
(71, 'charlize_theron', 100892),
(73, 'vicky_jeudy', 100893),
(74, 'charlize_theron', 100893),
(75, 'sean_spicer', 100894),
(76, 'al_nolan', 100895),
(77, 'al_nolan', 100894),
(78, 'sean_spicer', 100896),
(79, 'sean_spicer', 100895),
(80, 'sean_spicer', 100887),
(81, 'sean_spicer', 100886),
(82, 'sean_spicer', 100882),
(83, 'sean_spicer', 100881),
(84, 'sean_spicer', 100879),
(85, 'sean_spicer', 100857),
(86, 'sean_spicer', 100855),
(87, 'sean_spicer', 100854),
(88, 'sean_spicer', 100110),
(89, 'sean_spicer', 100109),
(90, 'sean_spicer', 100107),
(91, 'sean_spicer', 100104),
(92, 'sean_spicer', 100105),
(93, 'sean_spicer', 100103),
(94, 'sean_spicer', 100102),
(95, 'sean_spicer', 83006),
(96, 'sean_spicer', 100101),
(97, 'sean_spicer', 83005),
(98, 'sean_spicer', 100110),
(99, 'sean_spicer', 100109),
(100, 'sean_spicer', 100107),
(101, 'sean_spicer', 100105),
(102, 'sean_spicer', 100104),
(103, 'vicky_jeudy', 100896),
(105, 'denny_crane', 100896),
(106, 'denny_crane', 100895),
(107, 'denny_crane', 100897),
(108, 'sean_spicer', 100897),
(109, 'denny_crane', 100898),
(110, 'vicky_jeudy', 100903),
(111, 'vicky_jeudy', 100884),
(112, 'al_nolan', 100905),
(113, 'denny_crane', 100905),
(114, 'john_legend', 100909),
(115, 'al_nolan', 100913),
(116, 'al_nolan', 100912),
(117, 'larry_david', 100916),
(118, 'larry_david', 100918),
(119, 'vicky_jeudy', 100905),
(121, 'al_nolan', 100923),
(122, 'denny_crane', 100924),
(123, 'denny_crane', 100925),
(124, 'al_nolan', 100925),
(125, 'al_nolan', 100924),
(126, 'al_nolan', 100922),
(127, 'vicky_jeudy', 100924),
(128, 'al_nolan', 100926),
(129, 'al_nolan', 100917),
(130, 'al_nolan', 100915),
(131, 'al_nolan', 100929),
(132, 'al_nolan', 100921),
(133, 'al_nolan', 100920),
(134, 'adolphus_nolan', 100926),
(135, 'al_nolan', 100931),
(136, 'al_nolan', 100932),
(137, 'toni_morrison', 100934),
(138, 'al_nolan', 100948);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `opened` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--
--
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `opened` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
--
-- Dumping data for table `notifications`
--

-- --------------------------------------------------------

--
-- Table structure for table `php_auto_hashtag`
--

--
-- Dumping data for table `php_auto_hashtag`
--


-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL COMMENT 'ID of post',
  `body` text COMMENT 'body of post',
  `added_by` varchar(60) DEFAULT NULL COMMENT 'added by this user',
  `user_to` varchar(60) DEFAULT NULL COMMENT 'posted to this specific user if any',
  `date_added` datetime DEFAULT NULL COMMENT 'date of post',
  `user_closed` varchar(3) DEFAULT NULL COMMENT 'user account active',
  `deleted` varchar(3) DEFAULT NULL COMMENT 'is post deleted',
  `likes` int(255) DEFAULT NULL COMMENT 'has this post been liked'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `notes` (
  `id` int(11) NOT NULL COMMENT 'ID of note',
  `body` text COMMENT 'body of note',
  `added_by` varchar(60) DEFAULT NULL COMMENT 'added by this user',
  `user_to` varchar(60) DEFAULT NULL COMMENT 'posted to this specific user if any',
  `date_added` datetime DEFAULT NULL COMMENT 'date of note',
  `user_closed` varchar(3) DEFAULT NULL COMMENT 'user account active',
  `deleted` varchar(3) DEFAULT NULL COMMENT 'is note deleted',
  `likes` int(255) DEFAULT NULL COMMENT 'has this note been liked'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trends`
--

SELECT * FROM users;
SELECT * FROM notes;
SELECT * FROM posts;
SELECT * FROM likes;
SELECT * FROM notifications;
DESCRIBE notes;
SELECT * FROM users WHERE username = 'al_nolan';
SELECT * FROM likes WHERE username = 'adolphus_nolan' AND post_id = 100963;
INSERT INTO likes VALUES (NULL,'al_nolan','100963')

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'ID for user',
  `first_name` varchar(25) DEFAULT NULL COMMENT 'first name of user',
  `last_name` varchar(25) DEFAULT NULL COMMENT 'last name of user',
  `username` varchar(100) DEFAULT NULL COMMENT 'username of user',
  `email` varchar(100) DEFAULT NULL COMMENT 'email of user',
  `password` varchar(255) DEFAULT NULL COMMENT 'password of user',
  `signup_date` date DEFAULT NULL COMMENT 'date user signed up',
  `profile_pic` varchar(255) DEFAULT NULL COMMENT 'URL of the pic user has for their profile',
  `num_posts` int(11) DEFAULT NULL COMMENT 'cool # of posts stat for users',
  `num_likes` int(11) DEFAULT NULL COMMENT 'cool # of likes stat far users',
  `user_closed` varchar(3) DEFAULT NULL COMMENT 'literally a yes or a no on if the account is active',
  `friend_array` text COMMENT 'friends user has',
  `location` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE users ADD num_notes INT(11) DEFAULT NULL COMMENT 'cool # of notes stat for users';

--
-- Dumping data for table `users`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `php_auto_hashtag`
--
ALTER TABLE `php_auto_hashtag`
  ADD UNIQUE KEY `term_text` (`term_text`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of post comment', AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of request', AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of like', AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of post', AUTO_INCREMENT=100958;
--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for user', AUTO_INCREMENT=102;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT * FROM users;
SELECT * FROM likes;
SELECT * FROM posts;
SELECT * FROM notes;

UPDATE notes SET user_to = 'none' WHERE id = 83;

SELECT * FROM notes WHERE added_by = 'al_nolan' ORDER BY date_added DESC;
SELECT * FROM notes WHERE added_by = 'al_nolan' ORDER BY date_added DESC;

ALTER TABLE notes ADD altitude decimal(2,0);
ALTER TABLE notes ADD longitude float(10,7);
ALTER TABLE notes ADD latitude float(10,7);
ALTER TABLE notes ADD place varchar(140);
ALTER TABLE notes ADD location varchar(140);
ALTER TABLE notes ADD address varchar(300);

SELECT * FROM notes;

INSERT INTO notes (id,body,altitude,longitude,latitude,place,location,address,added_by) VALUES (NULL,'Try this!',42,38.1,-74.5,'Notearise','GreenDesk','155 Water ST','al_nolan');

INT(11) DEFAULT NULL COMMENT 'cool # of notes stat for users';

  `nz_blob` text NOT NULL,
  `nz_altitude`,
  `nz_longitude`  NOT NULL,
  `nz_latitude`  NOT NULL,
  `nz_place`  NOT NULL,
  `nz_location`  NOT NULL,
  `nz_user` varchar(30) NOT NULL,
  `nz_address`  NOT NULL,
  `nz_ID` int(30) NOT NULL,
  `nz_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE notes ADD 


INSERT INTO `notes` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES ('89', 'We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.', 'al_nolan', 'none', '2017-06-16 02:00:00', 'no', 'no', '22');
INSERT INTO `notes` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES ('90', 'But, in a larger sense, we can not dedicate -- we can not consecrate -- we can not hallow -- this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract.', 'al_nolan', 'none', '2017-06-16 03:00:00', 'no', 'no', '34');
INSERT INTO `notes` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES ('91', 'The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced.', 'al_nolan', 'none', '2017-06-16 04:00:00', 'no', 'no', '21');
INSERT INTO `notes` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES ('92', 'It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion -- that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth.', 'al_nolan', 'none', '2017-06-16 05:00:00', 'no', 'no', '19');

SELECT * FROM users WHERE username = 'al_nolan';
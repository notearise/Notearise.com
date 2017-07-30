CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `hashtag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

SELECT * FROM messages;
SELECT opened FROM messages WHERE user_to = 'al_nolan' AND user_from = 'al_nolan' ORDER BY id DESC;
SELECT * FROM messages WHERE viewed = 'no' AND user_to = 'vicky_jeudy';
SELECT * FROM messages WHERE user_to = 'al_nolan';
SELECT * FROM messages WHERE user_to = 'vicky_jeudy';

UPDATE messages SET opened = 'no';
UPDATE messages SET viewed = 'no';

TRUNCATE messages;
DROP TABLE IF EXISTS messages;

SELECT *
	FROM users
	WHERE
		(first_name LIKE '%crai%'
			AND last_name LIKE '%mac%')
		AND user_closed = 'no' LIMIT 8;
		
SELECT *
	FROM users
	WHERE
		(first_name LIKE '%c%'
			OR last_name LIKE '%c%')
		AND user_closed = 'no' LIMIT 8;
		
SELECT * FROM users WHERE username LIKE 'cra%' AND user_closed = 'no' LIMIT 8;


CREATE TABLE IF NOT EXISTS `messages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_to` VARCHAR(50),
  `user_from` VARCHAR(50),
  `body` TEXT,
  `date` DATETIME,
  `opened` VARCHAR(3),
  `viewed` VARCHAR(3),
  `delete` VARCHAR(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

UPDATE messages SET opened = 'no';
UPDATE messages SET viewed = 'no';


UPDATE messages SET body = 'Hey, you...' WHERE user_to = 'al_nolan' AND user_from = 'vicky_jeudy';

SELECT * FROM messages;
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'Hey, stranger...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'Well, well, well...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'Want to try (us) again?',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'You don#&39; have to answer now... just... answer.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'You know where my head is.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'al_nolan', 'I do.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'al_nolan', 'vicky_jeudy', 'Then...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'denny_crane', 'vicky_jeudy', 'Mmm mmm mmm',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'denny_crane', '...ick...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'denny_crane', 'vicky_jeudy', 'Ick is right... I#&39;m quite nasty.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'charlize_theron', 'You know who just hit my up, right??',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'vicky_jeudy', 'No...',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'vicky_jeudy', 'Wait, NO!?!?',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'charlize_theron', '*sad face*',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'vicky_jeudy', 'charlize_theron', 'This can&#39;t go well.',NOW(), 'no', 'no', 'no');

INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'al_nolan', 'Al, I&#39;m so glad you reached out to me... first. I didn&#39;t know how to say anything to you.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'al_nolan', 'Been kinda thinking about you ever since Aruba.',NOW(), 'no', 'no', 'no');
INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES (NULL, 'charlize_theron', 'al_nolan', 'No one told me you were so kind and gorgeous and smart. I could not get enough of you out there.',NOW(), 'no', 'no', 'no');


UPDATE messages SET opened = 'yes' WHERE user_to = 'al_nolan' AND user_from = 'vicky_jeudy';
UPDATE messages SET opened = 'no' WHERE user_to = 'al_nolan' AND user_from = 'vicky_jeudy';
SELECT * FROM messages WHERE (user_to = 'al_nolan' AND user_from = 'vicky_jeudy') OR (user_from = 'vicky_jeudy' AND user_to = 'denny_crane');


SELECT user_to, user_from FROM messages WHERE user_to = 'al_nolan' OR user_from = 'al_nolan' ORDER BY id DESC LIMIT 1;

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

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

SELECT * FROM messages;
TRUNCATE messages;

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(83, 'al_nolan', 'vicky_jeudy', 'Hey, stranger...', '2017-05-22 14:41:41', 'no', 'no', 'no'),
(84, 'vicky_jeudy', 'al_nolan', 'Well, well, well...', '2017-05-22 14:41:44', 'yes', 'no', 'no'),
(3, 'al_nolan', 'vicky_jeudy', 'Want to try (us) again?', '2017-05-22 14:41:47', 'no', 'no', 'no'),
(4, 'al_nolan', 'vicky_jeudy', 'You don&#39; have to answer now... just... answer.', '2017-05-22 14:41:50', 'no', 'no', 'no'),
(5, 'vicky_jeudy', 'al_nolan', 'You know where my head is.', '2017-05-22 14:41:52', 'yes', 'no', 'no'),
(6, 'al_nolan', 'vicky_jeudy', 'I do.', '2017-05-22 14:41:54', 'no', 'no', 'no'),
(7, 'vicky_jeudy', 'al_nolan', 'Then...', '2017-05-22 14:41:57', 'yes', 'no', 'no'),
(8, 'vicky_jeudy', 'denny_crane', 'Mmm mmm mmm', '2017-05-22 14:41:59', 'yes', 'no', 'no'),
(9, 'denny_crane', 'vicky_jeudy', '...ick...', '2017-05-22 14:42:02', 'yes', 'no', 'no'),
(10, 'vicky_jeudy', 'denny_crane', 'Ick is right... I&#39;m quite nasty.', '2017-05-22 14:42:04', 'yes', 'no', 'no'),
(11, 'charlize_theron', 'vicky_jeudy', 'You know who just hit my up, right??', '2017-05-22 14:42:06', 'no', 'no', 'no'),
(12, 'vicky_jeudy', 'charlize_theron', 'No...', '2017-05-22 14:42:09', 'yes', 'no', 'no'),
(13, 'vicky_jeudy', 'charlize_theron', 'Wait, NO!?!?', '2017-05-22 14:42:11', 'yes', 'no', 'no'),
(14, 'charlize_theron', 'vicky_jeudy', '*sad face*', '2017-05-22 14:42:14', 'no', 'no', 'no'),
(15, 'charlize_theron', 'vicky_jeudy', 'This can&#39;t go well.', '2017-05-22 14:42:17', 'no', 'no', 'no'),
(16, 'al_nolan', 'vicky_jeudy', 'Then I don&#39;t know what to say.', '2017-05-22 14:45:34', 'no', 'no', 'no'),
(17, 'al_nolan', 'vicky_jeudy', 'I mean, this may be it for us.', '2017-05-22 14:45:47', 'no', 'no', 'no'),
(18, 'al_nolan', 'vicky_jeudy', 'And you&#39;re missing out.', '2017-05-22 14:45:53', 'no', 'no', 'no'),
(19, 'al_nolan', 'vicky_jeudy', 'Are you still there?', '2017-05-22 14:49:36', 'no', 'no', 'no'),
(20, 'al_nolan', 'vicky_jeudy', 'Al?', '2017-05-22 14:49:46', 'no', 'no', 'no'),
(21, 'al_nolan', 'vicky_jeudy', 'My script isn&#39;t loading at the bottom.', '2017-05-22 14:51:02', 'no', 'no', 'no'),
(22, 'al_nolan', 'vicky_jeudy', 'It&#39;s loading at the top. Well, it&#39;s loading at the bottom but it shows me the top when the page reloads.', '2017-05-22 14:51:32', 'no', 'no', 'no'),
(23, 'al_nolan', 'vicky_jeudy', 'We&#39;ll give this an ID.', '2017-05-22 14:52:19', 'no', 'no', 'no'),
(24, 'al_nolan', 'vicky_jeudy', 'Nice!', '2017-05-22 14:52:25', 'no', 'no', 'no'),
(25, 'vicky_jeudy', 'denny_crane', 'Still there...', '2017-05-22 14:52:55', 'yes', 'no', 'no'),
(26, 'denny_crane', 'vicky_jeudy', 'Bro, you straight disrespecting the game right now.', '2017-05-22 14:53:34', 'yes', 'no', 'no'),
(27, 'vicky_jeudy', 'denny_crane', 'fr fr?', '2017-05-22 14:53:42', 'no', 'no', 'no');

INSERT INTO messages (id,user_from,user_to,body,date,opened,viewed,deleted) VALUES
(NULL, 'vicky_jeudy', 'al_nolan', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'al_nolan', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'al_nolan', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'al_nolan', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'al_nolan', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'al_nolan', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'al_nolan', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'denny_crane', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'denny_crane', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'denny_crane', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'charlize_theron', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'charlize_theron', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'charlize_theron', 'vicky_jeudy', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'charlize_theron', 'Testing 123',NOW(), 'no', 'no', 'no'),
(NULL, 'vicky_jeudy', 'charlize_theron', 'Testing 123',NOW(), 'no', 'no', 'no');

-- users --

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



SELECT * FROM users;
SELECT * FROM users WHERE username = 'tieler_giles';
TRUNCATE users;
DROP TABLE IF EXISTS users;
SELECT email FROM users WHERE email = 'thisisal@gmail.com';
INSERT INTO users VALUES (NULL,'Al','Nolan','al_nolan','thisisal@gmail.com','Passw0rd','2017-04-30','assets/images/profiles/al_nolan.jpg','1','1','no','');
INSERT INTO users VALUES (NULL,'Adolphus','Nolan','adolphus_nolan','adolphusnolan@gmail.com','Passw0rd','2017-04-30','assets/images/profiles/al_nolan.jpg','1','1','no','');
INSERT INTO users VALUES (NULL, 'Alfonzo', 'Logan', 'alfonzo_logan', 'alfonzologan@gmail.com', 'Passw0rd!', '2017-04-30', 'assets/images/profiles/al_nolan.jpg', '1', '1', 'no', ',');

INSERT INTO users	(id,	first_name,	last_name,	username,		email,				password,							signup_date,	profile_pic,							num_posts,	num_likes,	user_closed,	friend_array,	location)
VALUES 				('84',	'Sean',		'Spicer',	'sean_spicer',	'spicy@gmail.com',	'd41e98d1eafa6d6011d3a70f1a5b92f0',	'2017-05-19',	'assets/images/profile_pics/yo.jpg',	'0',		'0',		'no',			',',			'DC');

INSERT INTO users	(id,	first_name,	last_name,	username,		email,				password,							signup_date,	profile_pic,							num_posts,	num_likes,	user_closed,	friend_array,	location)
VALUES 				('85',	'Marty',		'McFly',	'slacker',	'mf@hillside.com',	'd41e98d1eafa6d6011d3a70f1a5b92f0',	'1985-12-15',	'assets/images/profile_pics/McFLY.jpg',	'0',		'0',		'no',			',',			'Hillside, California');

INSERT INTO users	(id,	first_name,		last_name,	username,		email,						password,							signup_date,	profile_pic,							num_posts,	num_likes,	user_closed,	friend_array,	location)
VALUES 				(NULL,	'Geoff',		'Cooke',	'geoff_cooke',	'gcooke@resumeedge.com',	'd41e98d1eafa6d6011d3a70f1a5b92f0',	'2017-05-19',	'assets/images/profile_pics/cookey.jpg',	'0',		'0',		'no',			',',			NULL);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for user', AUTO_INCREMENT=16;COMMIT;


INSERT INTO users (id,first_name,last_name,username,email,password,signup_date,profile_pic,num_posts,num_likes,user_closed,friend_array,location) VALUES
('83003','JW','Williams','jwwiii','jwwashingtoniii@yahoo.com','$2y$10$9V70ngDO8GbkteYF3t92UefrTFTGcy/o0PiacVCQKONj5SkIDd4z2','2017-04-27','assets/images/profile_pics/defaults/head_deep_blue.png','0','0','no',',','Dallas'),
('83004','Larry','Mullins','lmullins','rentrabar@hotmail.com','$2y$10$pUNu6NkDl2ykwy3uCxmEc.n1NbbozIhnejRhPcnyaUsUMZnnxWaZq','2017-04-27','assets/images/profile_pics/defaults/head_emerald.png','0','0','no',',',NULL),
('83005','Andrea','Tiles','atgiles','tielerg@gmail.com','$2y$10$lDrrBPa0dhKnp3JSFsDmAezk4N9AyGFUBBvpOpeOXmvNiO9P/1/Ka','2017-04-27','assets/images/profile_pics/defaults/head_deep_blue.png','0','0','no',',',NULL),
('83006','Notearise','Notearise','notearise','notearise@gmail.com','$2y$10$5YaU/aSHzqBCzatM.1wmLenCuA2o./xa7oXUMTtY9nlmQM4vlzLm2','2017-04-27','assets/images/profile_pics/defaults/head_emerald.png','0','0','no',',',NULL),
('83007','Dayron','Miles','dayronj','dayron.miles@gmail.com','$2y$10$N/aYNxuP.uGCakwxJtsHo.NQMRHBYYtIkW8PQBHnKSvqxK12DwwZq','2017-04-30','assets/images/profile_pics/defaults/head_deep_blue.png','0','0','no',',','Dallas '),
('83008','Haris','Fazlani','harisfazlani','haris.fazlani@gmail.com','$2y$10$cEN.4ZO2k0COw59gJI0rtuaLo1pclcUje7s4Zp.8BrYMAspNsK8ii','2017-04-30','assets/images/profile_pics/defaults/head_emerald.png','0','0','no',',',NULL);

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`, `location`) VALUES
(1, 'Al', 'Nolan', 'al_nolan', 'thisisal@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-04-30', 'assets/images/profile_pics/defaults/al_nolan.jpg', 0, 0, 'no', ',al_nolan,', NULL),
(2, 'Adolphus', 'Nolan', 'adolphus_nolan', 'adolphusnolan@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-04-30', 'assets/images/profile_pics/defaults/adolphus_nolan.jpg', 0, 0, 'no', ',adolphus_nolan,', NULL),
(6, 'Alfonzo', 'Logan', 'alfonzo_logan', 'alfonzologan@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',adolphus_nolan,', NULL),
(7, 'Craig', 'Mac', 'craig_mac', 'newflavor@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',adolphus_nolan,', NULL),
(8, 'Clark', 'Kent', 'clark_kent', 'djkalel@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 0, 'no', ',alfonzo_logan,adolphus_nolan,al_nolan,', NULL),
(9, 'John', 'Legend', 'john_legend', 'ordinary@people.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',adolphus_nolan,', NULL),
(10, 'Corey', 'Booker', 'corey_booker', 'cbook@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
(11, 'Reggie', 'Bush', 'reggie_bush', 'rbush@kimk.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
(12, 'Charlese', 'Theron', 'charlese_theron', 'ctheron@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',adolphus_nolan,', NULL),
(13, 'Buck', 'Rodgers', 'buck_rodgers', 'brodgers@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
(14, 'Tucam', 'Sam', 'tucam_sam', 'tsam@gmail.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-01', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',alfonzo_logan,adolphus_nolan,', NULL),
(15, 'Denny', 'Crane', 'denny_crane', 'dc@cpslaw.com', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '2017-05-05', 'assets/images/profile_pics/defaults/denny_crane.png', 296, 0, 'no', ',al_nolan,', NULL);


/* 147 */

SET @query = 'al_nolan';
SET @name0 = 'al';
SET @name1 = 'nolan';

SELECT * FROM users;
SELECT * FROM users WHERE username = 'al_nolan';
SELECT * FROM users WHERE username LIKE @query AND user_closed = 'no' LIMIT 8;
SELECT * FROM users WHERE (first_name LIKE 'c%' AND last_name LIKE '%') AND user_closed = 'no' LIMIT 8;
SELECT * FROM users WHERE (first_name LIKE @name0% AND last_name LIKE @name0%) AND user_closed = 'no' LIMIT 8;

SELECT @user_to;
SELECT @userLoggedIn;
SELECT @message;
SELECT @link;
SELECT @date_time;

/*  */

INSERT INTO users (id,first_name,last_name,username,email,password,signup_date,profile_pic,num_posts,num_likes,user_closed,friend_array,location) VALUES 
(NULL,'Donald','Trump','rep_donald_trump','donaldtrump@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_donald_trump.jpg','0','0','no',',',NULL),
(NULL,'Mitch','McConnell','rep_mitch_mcconnell','mitchmcconnell@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_mitch_mcconnell.jpg','0','0','no',',',NULL),
(NULL,'Michael','Steele','rep_michael_steele','michaelsteele@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_michael_steele.jpg','0','0','no',',',NULL),
(NULL,'Sarah','Palin','rep_sarah_palin','sarahpalin@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_sarah_palin.jpg','0','0','no',',',NULL),
(NULL,'Ted','Cruz','rep_ted_cruz','tedcruz@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_ted_cruz.jpg','0','0','no',',',NULL),
(NULL,'Karl','Rove','rep_karl_rove','karlrove@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_karl_rove.jpg','0','0','no',',',NULL),
(NULL,'John','Boehner','rep_john_boehner','johnboehner@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_john_boehner.jpg','0','0','no',',',NULL),
(NULL,'Condoleezza','Rice','rep_condoleezza_rice','condoleezzarice@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_condoleezza_rice.jpg','0','0','no',',',NULL),
(NULL,'Carly','Fiorina','rep_carly_fiorina','carlyfiorina@gmail.com','d41e98d1eafa6d6011d3a70f1a5b92f0','2017-06-07','assets/images/profile_pics/rep_carly_fiorina.jpg','0','0','no',',',NULL)
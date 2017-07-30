CREATE TABLE `groups` (
  `id` int(11) NOT NULL COMMENT 'ID for group',
  `title` varchar(25) DEFAULT NULL COMMENT 'first name of user',
  `description` varchar(25) DEFAULT NULL COMMENT 'last name of user',
  `group_pic` varchar(255) DEFAULT NULL COMMENT 'URL of the pic user has for their profile',
  `creator` varchar(100) DEFAULT NULL COMMENT 'username of user',
  `administrators_array` text COMMENT 'administrators associated with the each group',
  `member_array` text COMMENT 'members associated with the each group',
  `signup_date` date DEFAULT NULL COMMENT 'date group was created',
  `active` int(2) DEFAULT NULL COMMENT 'is group active',
  `privacy` int(2) DEFAULT NULL COMMENT 'is group public or private'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

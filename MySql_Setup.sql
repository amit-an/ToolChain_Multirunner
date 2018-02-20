-- login with root to create user, DB and table and provide grants
 
create user 'pankaj'@'localhost' identified by 'pankaj123';

grant all on *.* to 'pankaj'@'localhost' identified by 'pankaj123';

create database UserDB;

use UserDB;

CREATE TABLE `Users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT 'USA',
  `password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

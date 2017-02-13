CREATE TABLE `site5` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `CustomerName` varchar(255),
  `ContactName` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PostalCode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `site5` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Posuere Institute","September Doyle","Ap #491-7304 Facilisis Road","54802","Antigua and Barbuda");
INSERT INTO `site5` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Eu Company","Ian Yang","Ap #195-6206 Ligula St.","57-875","Bosnia and Herzegovina");
INSERT INTO `site5` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("In Faucibus LLP","Aristotle Russell","Ap #304-9241 Mollis Av.","5891","Bouvet Island");
INSERT INTO `site5` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Adipiscing Ligula Aenean LLC","Lunea Casey","6925 Dui, Rd.","09847-985","Afghanistan");
INSERT INTO `site5` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Morbi Sit Corp.","Delilah Silva","807-3541 Eu Road","3999","San Marino");

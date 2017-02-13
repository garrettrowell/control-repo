CREATE TABLE `site3` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `CustomerName` varchar(255),
  `ContactName` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PostalCode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `site3` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Mollis Company","Yael Hester","620-6639 Mauris Ave","8011","Finland");
INSERT INTO `site3` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Nisl Quisque Fringilla Limited","India Byrd","P.O. Box 408, 4035 Etiam Street","97-352","Guyana");
INSERT INTO `site3` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Tempus Scelerisque LLP","Darrel Colon","9643 Sapien. St.","11947","Mozambique");
INSERT INTO `site3` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Ut Mi Duis LLP","Maryam Chase","751-7416 Pede. Avenue","14536","Cyprus");
INSERT INTO `site3` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Scelerisque Dui PC","Kirby Leblanc","209-5112 Placerat Road","47151","Dominica");

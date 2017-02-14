CREATE TABLE `site1` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `CustomerName` varchar(255),
  `ContactName` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PostalCode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `site1` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Sit Foundation","Victor Barker","1184 Maecenas St.","YN0V 2TV","Norway");
INSERT INTO `site1` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Sit Ltd","Regina Nash","3599 Sagittis St.","243455","Mongolia");
INSERT INTO `site1` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Lacus Nulla Associates","Ariana Grant","P.O. Box 407, 7360 Est Rd.","5192","Falkland Islands");
INSERT INTO `site1` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Amet Incorporated","Quon Bryant","310 Est Avenue","80386","Lebanon");
INSERT INTO `site1` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Elit Dictum Eu Foundation","Dylan Herman","9529 Pellentesque Av.","9223","Rwanda");

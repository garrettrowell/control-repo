CREATE TABLE `site2` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `CustomerName` varchar(255),
  `ContactName` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PostalCode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `site2` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Dapibus Rutrum Inc.","Kareem Barrera","6912 Maecenas Rd.","07258","Saint Vincent and The Grenadines");
INSERT INTO `site2` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Erat Semper Corporation","Patrick Gamble","P.O. Box 118, 1875 Lobortis Av.","7507","Italy");
INSERT INTO `site2` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Sed Consulting","Bruce Beard","3784 Vulputate, Road","1587VY","Colombia");
INSERT INTO `site2` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Tincidunt Dui Inc.","Nora Burns","3742 Curae; Road","2551","Estonia");
INSERT INTO `site2` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Gravida Sagittis Duis Consulting","Nyssa Reid","453-698 Molestie Street","7286","Virgin Islands, United States");

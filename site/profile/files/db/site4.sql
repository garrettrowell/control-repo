CREATE TABLE `site4` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `CustomerName` varchar(255),
  `ContactName` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PostalCode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `site4` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Dolor Dapibus Ltd","Martin Reilly","P.O. Box 996, 215 Ornare St.","V4R 9P3","Lebanon");
INSERT INTO `site4` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Ac Corporation","Rigel Wiley","140-9988 Mauris St.","48273","Haiti");
INSERT INTO `site4` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Turpis Limited","Hayden Hall","P.O. Box 340, 6377 Blandit Street","98888","Myanmar");
INSERT INTO `site4` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Dolor Elit Pellentesque Consulting","Micah Allison","5701 Et Avenue","498713","Cape Verde");
INSERT INTO `site4` (`CustomerName`,`ContactName`,`Address`,`PostalCode`,`Country`) VALUES ("Vitae Orci Phasellus LLC","Medge Kidd","691-6583 Tellus Rd.","73422","Maldives");

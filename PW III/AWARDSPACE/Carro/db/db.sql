CREATE TABLE `Carro` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `placa` CHAR(8) NOT NULL,
  `ano` YEAR(4) NOT NULL,
  `ipvaPago` TINYINT(1) NOT NULL,
  `ipvaData` DATETIME NOT NULL,
  `ipvaValor` FLOAT(8,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `carro` (
  `Id` int(11) NOT NULL,
  `placa` char(8) NOT NULL,
  `ano` year(4) NOT NULL,
  `ipvaPago` tinyint(1) NOT NULL,
  `ipvaData` datetime NOT NULL,
  `ipvaValor` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
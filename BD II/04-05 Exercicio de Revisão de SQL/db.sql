CREATE DATABASE concessionaria;
USE concessionaria;

# CRIANDO TABELAS, PKs e FKs
CREATE TABLE cliente (
    cpf INTEGER NOT NULL,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(120) NOT NULL,
    cidade VARCHAR(60),
    telefone VARCHAR(15) NOT NULL,
    PRIMARY KEY (cpf)
);

CREATE TABLE carro (
    id INTEGER NOT NULL AUTO_INCREMENT,
    placa VARCHAR(8) NOT NULL,
    cor VARCHAR(15) NOT NULL,
    modelo VARCHAR(20) NOT NULL,
    ano INTEGER NOT NULL,
    cpf_cliente INTEGER,
    PRIMARY KEY (id),
    CONSTRAINT fk_cpf_cliente
		FOREIGN KEY (cpf_cliente)
        REFERENCES cliente (cpf)
);

CREATE TABLE manutencao (
    id INTEGER NOT NULL AUTO_INCREMENT,
    data_manutencao DATE NOT NULL,
    valor FLOAT NOT NULL,
    id_carro INTEGER,
	PRIMARY KEY (id),
    CONSTRAINT fk_id_carro
		FOREIGN KEY (id_carro)
        REFERENCES carro (id)
);
 
# INCERINDO DADOS
INSERT INTO cliente (cpf, nome, endereco, cidade, telefone) 
	VALUES (12345678901, "Solange Almeida", "R. 7 de setembro, 100", NULL, "15999999999"),
		   (98765432123, "Taís Araújo", "R. 31 de março, 400", "Votorantim", "15999999991"),
           (22233344455, "Marcos Palmeira", "R. Itavuvu, 1000", NULL, "15999999992"),
           (12312312312, "Junior Moraes", "R. Avarenga Dantas, 1", "Mairinque", "11999999993"),
           (44455566677, "Cristiane Torloni", "R. Marcio de Sá, 2", "São Roque", "15999999994"),
           (88877766655, "Maria do Bairro", "R. Ubirajara, 2", NULL, "15999999995");
           
SELECT * FROM cliente;

INSERT INTO carro (placa, cor, modelo, ano, cpf_cliente) 
	VALUES ("ABC1010", "Branca", "Corsa", 2007, 12345678901),
		   ("ABY1111", "Preta", "Uno", 2018, 98765432123),
		   ("VBN6543", "Prata", "Ka", 1900, 22233344455),
		   ("XAQ123", "Azul", "Corola", 1900, 12312312312),
		   ("XZA222", "Marrom", "Corola", 2001, 88877766655),
		   ("OPK8765", "Branca", "Gol ", 2010, 88877766655),
		   ("PPP3434", "Amarelo", "Palio", 2010, 44455566677),
		   ("BBB4561", "Prata", "Civic", 2017, 44455566677),
		   ("XXC1111", "Prata", "Civic", 2016, 12345678901);
	 
SELECT * FROM carro;

#DROP DATABASE concessionaria;

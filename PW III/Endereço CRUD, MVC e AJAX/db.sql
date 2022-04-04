CREATE TABLE endereco (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    rua VARCHAR(100) NOT NULL,
    numero INT(6) NOT NULL,
    bairro VARCHAR(50),
    complemento VARCHAR(100),
    cep INT(8) NOT NULL,
    cidade VARCHAR(60) NOT NULL,
    estado VARCHAR(60) NOT NULL,
    pais VARCHAR(40) NOT NULL
)
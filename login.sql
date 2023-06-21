CREATE DATABASE login;

USE login;

CREATE TABLE IF NOT EXISTS usuarios(
    'id' INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    'nome' VARCHAR(50) NOT NULL,
    'usuarios' VARCHAR(25) NOT NULL,
    'senha' VARCHAR(40) NOT NULL,
    'email' VARCHAR(100) NOT NULL,
    'nivel' INT(1) UNSIGNED NOT NULL DEFAULT '1',
    'ativo' BOOL NOT NULL,
    PRIMARY KEY ('id'),
    UNIQUE KEY 'usuario' ('usuario'),
    KEY 'nivel' ('nivel')
)ENGINE=MyISAM;

INSERT INTO 'usuarios' VALUES
    (NULL, 'Usuário Teste', 'demo', SHA1('demo'), 'usuario@demo.com.br', 1, 1, NOW()),
    (NULL, 'Administrador Teste', 'admin', SHA1('demo'), 'admin@demo.com.br', 2, 1, NOW());


create database BancoDeSangre;
use BancoDeSangre;

CREATE TABLE tipoDeSangre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL
);

INSERT INTO tipoDeSangre (tipo) VALUES
('A positivo (A +)'),
('A negativo (A-)'),
('B positivo (B +)'),
('B negativo (B-)'),
('AB positivo (AB+)'),
('AB negativo (AB-)'),
('O positivo (O+)'),
('O negativo (O-)');

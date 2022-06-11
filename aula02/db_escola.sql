CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_professor (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE tb_aluno (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL,
    matricula VARCHAR(10) NOT NULL
);

INSERT INTO tb_professor (nome, email, cpf)
VALUES (
    'Alessandro', 'ale@email.com', '11111111111'
);

INSERT INTO tb_professor (nome, email, cpf)
VALUES (
    'Bruno', 'bruno@email.com', '22222222222'
);

INSERT INTO tb_aluno (nome, email, cpf, matricula)
VALUES (
    'Amanda', 'amanda@email.com', '33333333333', '1'
);

INSERT INTO tb_aluno (nome, email, cpf, matricula)
VALUES (
    'Diogo', 'diogo@email.com', '44444444444', '2'
);
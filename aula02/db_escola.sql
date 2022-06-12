-- AULA 02 E AULA 03 --

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

SELECT * FROM tb_professor;

INSERT INTO tb_aluno (nome, email, cpf, matricula)
VALUES (
    'Amanda', 'amanda@email.com', '33333333333', '1'
);

INSERT INTO tb_aluno (nome, email, cpf, matricula)
VALUES (
    'Diogo', 'diogo@email.com', '44444444444', '2'
);

SELECT * FROM tb_aluno;

-- AULA 04 --

DROP TABLE tb_professor;

CREATE TABLE tb_professor (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO tb_professor (nome, email, cpf)
VALUES (
    'Alessandro', 'ale@email.com', '11111111111'
);

INSERT INTO tb_professor (nome, email, cpf)
VALUES (
    'Bruno', 'bruno@email.com', '22222222222'
);

DROP TABLE tb_aluno;

CREATE TABLE tb_aluno (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL
);

INSERT INTO tb_aluno (nome, email, cpf, matricula)
VALUES (
    'Amanda', 'amanda@email.com', '33333333333', '1'
);

INSERT INTO tb_aluno (nome, email, cpf, matricula)
VALUES (
    'Diogo', 'diogo@email.com', '44444444444', '2'
);

CREATE TABLE tb_curso (
    nome VARCHAR(200) UNIQUE NOT NULL,
    cargaHoraria INT NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_curso (nome, cargaHoraria, descricao)
VALUES (
    'PHP', 200, 'Curso de PHP Básico'
);

CREATE TABLE tb_disciplina (
    nome VARCHAR(200) UNIQUE NOT NULL,
    cargaHoraria INT NOT NULL,
    professor VARCHAR(100) NOT NULL
);

INSERT INTO tb_disciplina (nome, cargaHoraria, professor)
VALUES (
    'PHP - Banco de Dados', 20, 'Alessandro'
);

-- AULA 05 --
CREATE TABLE tb_professor (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE tb_curso (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) UNIQUE NOT NULL,
    cargaHoraria INT NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_disciplina (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) UNIQUE NOT NULL,
    cargaHoraria INT NOT NULL,
    professor VARCHAR(100) NOT NULL
);
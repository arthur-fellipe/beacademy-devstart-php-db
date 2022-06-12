USE db_escola

INSERT INTO tb_professor (nome, email, cpf)
VALUES
('Alessandro', 'ale@email.com', '11111111111'),
('Bruno', 'bruno@email.com', '22222222222');

-- EXCLUIR TODOS OS REGISTROS --
DELETE FROM tb_professor;

-- EXCLUIR 1 REGISTRO --
DELETE FROM tb_professor WHERE id='1';

-- EDITAR DADOS DE TODOS OS REGISTROS --
UPDATE tb_professor SET nome= 'Bruna';

-- EDITAR DADOS DE 1 REGISTRO --
UPDATE tb_professor SET nome= 'Bruna' WHERE id='2';
UPDATE tb_professor SET email= 'bruna@email.com' WHERE id='2';

-- SELECIONAR TODOS OS DADOS DE TODOS OS PROFESSORES--
SELECT * FROM tb_professor;

-- SELECIONAR TODOS OS DADOS DE DETERMINADO PROFESSOR--
SELECT * FROM tb_professor WHERE id='2';

-- SELECIONAR ALGUNS DADOS DE TODOS OS PROFESSORES--
SELECT nome, cpf FROM tb_professor;

-- SELECIONAR ALGUNS DADOS DE DETERMINADO PROFESSOR--
SELECT nome, cpf FROM tb_professor WHERE id='2';
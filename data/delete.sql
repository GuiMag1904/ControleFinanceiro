-- CRUD (Create - Read - Update - Delete)
-- Delete: Excluir

-- Exclui toda a Tabela do Banco de Dados.

DROP TABLE tb_exemplo;

-- Exclui todo o Banco de Dados.
DROP DATABASE db_exemplo;

DELETE FROM tb_usuario WHERE id_usuario = 3;

DELETE FROM tb_categoria WHERE id_categoria = 1;

DELETE FROM tb_movimento WHERE id_movimento in (1, 2, 3, 4);
-- CRUD (Create - Read - Update - Delete)
-- Read: Consultar

SELECT * FROM tb_usuario;

SELECT * FROM tb_categoria;

SELECT * FROM tb_empresa;

SELECT * FROM tb_conta;

SELECT * FROM tb_movimento;

SELECT nome_usuario,
		email_usuario,
		senha_usuario,
        data_cadastro,
        nome_empresa,
        telefone_empresa,
        endereco_empresa,
        banco_conta,
        agencia_conta,
        numero_conta,
        saldo_conta,
        tipo_movimento,
        data_movimento,
        valor_movimento,
        obs_movimento
	FROM tb_usuario
INNER JOIN tb_categoria
	ON tb_categoria.id_usuario = tb_usuario.id_usuario
INNER JOIN tb_empresa
	ON tb_empresa.id_usuario = tb_usuario.id_usuario
INNER JOIN tb_conta
	ON tb_conta.id_usuario = tb_usuario.id_usuario
INNER JOIN tb_movimento
	ON tb_movimento.id_usuario = tb_usuario.id_usuario;
    
SELECT * FROM tb_usuario, tb_categoria, tb_empresa, tb_conta, tb_movimento;
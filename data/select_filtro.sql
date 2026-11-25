SELECT nome_usuario, data_cadastro
	FROM tb_usuario
    WHERE nome_usuario like '%o%';
    
SELECT nome_usuario, data_cadastro
	FROM tb_usuario
    WHERE data_cadastro BETWEEN '2024-11-10' AND '2024-11-20';
    
SELECT banco_conta, agencia_conta, saldo_conta
    FROM tb_conta
    WHERE id_usuario = 4;
    
SELECT tipo_movimento,
		data_movimento,
        valor_movimento,
        nome_categoria,
        nome_empresa,
        nome_usuario,
        banco_conta
	FROM tb_movimento
    INNER JOIN tb_categoria
    ON tb_categoria.id_categoria = tb_movimento.id_categoria
    INNER JOIN tb_empresa
    ON tb_empresa.id_empresa = tb_movimento.id_empresa
    INNER JOIN tb_usuario
    ON tb_usuario.id_usuario = tb_movimento.id_usuario
    INNER JOIN tb_conta
    ON tb_conta.id_conta = tb_movimento.id_conta
    WHERE tb_movimento.tipo_movimento = 1 is not null;
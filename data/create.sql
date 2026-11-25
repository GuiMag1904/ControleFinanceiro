-- CRUD (Create - Read - Update - Delete)
-- Create: Cadastrar

INSERT INTO tb_usuario
(nome_usuario, email_usuario, senha_usuario, data_cadastro)
VALUES
('Ana Maria', 'ana_maria@hotmail.com', 'ana321', '2024-11-12');

INSERT INTO tb_usuario
(nome_usuario, email_usuario, senha_usuario, data_cadastro)
VALUES
('Paulo Roberto', 'paulo.roberto@gmail.com', 'plo213', '2024-11-12');

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Faculdade', 1);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Trabalho CLT', 1);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Trabalho CLT', 2);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Internet', 2);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Alimentação', 7);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Farmácia', 7);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Roupas', 7);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Vendas', 7);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Alimentação', 4);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Farmácia', 4);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Roupas', 4);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Vendas', 4);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Alimentação', 5);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Farmácia', 5);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Roupas', 5);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('OLX', '5532320101', 'Rua Serra Formosa', 3);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Web Motors', '5534562301', 'Rua São Paulo', 2);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Burger king', '5530304040', 'Av. Higienópolis', 3);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Riachuelo', '553989-7788', 'Rod. Celso Garcia', 3);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('OLX', '5532320101', 'Rua Serra Formosa', 4);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Mercado Livre', '5531310000', 'São Paulo Capital', 4);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Mc Donalds', '553213-4411', 'Av. Tiradentes', 4);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Farmácia Vale Verde', '5532322121', 'Av. JK', 4);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Venda Pessoal', '5530001111', 'Londres', 5);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('Sabor Caseiro', '5533334444', 'Av. Arthur Thomas', 5);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('C&A', '5538794321', 'Rod. Celso Garcia', 5);

INSERT INTO tb_empresa
(nome_empresa, telefone_empresa, endereco_empresa, id_usuario)
VALUES
('OLX', '5532320101', 'Rua Serra Formosa', 5);

INSERT INTO tb_conta
(banco_conta, agencia_conta, numero_conta, saldo_conta, id_usuario)
VALUES
('Santander', '1111', '12345', 2500.00, 3);

INSERT INTO tb_conta
(banco_conta, agencia_conta, numero_conta, saldo_conta, id_usuario)
VALUES
('Banco do Brasil', '2222', '23456', 0, 3);

INSERT INTO tb_conta
(banco_conta, agencia_conta, numero_conta, saldo_conta, id_usuario)
VALUES
('Banco do Brasil', '2222', '891011', 1200.32, 4);

INSERT INTO tb_conta
(banco_conta, agencia_conta, numero_conta, saldo_conta, id_usuario)
VALUES
('Sicredi', '2424', '81234', 7000.00, 4);

INSERT INTO tb_conta
(banco_conta, agencia_conta, numero_conta, saldo_conta, id_usuario)
VALUES
('Gringotes', '0011', '91234', 325500.00, 5);

INSERT INTO tb_conta
(banco_conta, agencia_conta, numero_conta, saldo_conta, id_usuario)
VALUES
('NuBank', '0212', '9900', 3712.30, 5);

INSERT INTO tb_movimento
(tipo_movimento, data_movimento, valor_movimento, obs_movimento, id_categoria, id_empresa, id_conta, id_usuario)
values
(1, '2024-06-26', 1000.00, null, 1, 1, 2, 1);

INSERT INTO tb_movimento
(tipo_movimento, data_movimento, valor_movimento, obs_movimento, id_categoria, id_empresa, id_conta, id_usuario)
values
(1, '2024-11-19', 1600, null, 20, 11, 6, 5);

INSERT INTO tb_movimento
(tipo_movimento, data_movimento, valor_movimento, obs_movimento, id_categoria, id_empresa, id_conta, id_usuario)
values
(1, '2024-11-19', 1600, null, 20, 50, 6, 5);

INSERT INTO tb_movimento
(tipo_movimento, data_movimento, valor_movimento, obs_movimento, id_categoria, id_empresa, id_conta, id_usuario)
values
(2, '2024-11-19', 100, 'Comida', 17, 10, 6, 5);
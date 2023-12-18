-- -----------     << Trabalho Final - Tema 1 >>     -------------------
-- 
--                    SCRIPT DE POPULA
-- 
-- Data Criacao ...........: 15/12/2023
-- Autor(es) ..............: Caio Santos, Débora Moreira, Gabriel Freitas Balbino e Hugo Aragao de Oliveira
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ...: TF_1C_caiosantos
-- 
-- Data Ultima Alteracao ..: 
--
-- PROJETO => 01 Base de Dados
--         => 30 Tabelas
-- 
-- -----------------------------------------------------------------

-- SCRIPT DE POPULAÇÃO
USE TF_1C_caiosantos;

-- TELEFONE
INSERT INTO TELEFONE (telefone) VALUES
('1234567890'),
('9876543210'),
('1112223333'),
('5555555555'),
('9998887777'),
('6199213657'),
('6199213658'),
('6199213659'),
('6199213651'),
('6199213652');

-- CATEGORIATERCEIRIZADO
INSERT INTO CATEGORIATERCEIRIZADO (nome) VALUES
('Categoria A'),
('Categoria B'),
('Categoria C'),
('Categoria D'),
('Categoria E'),
('Categoria V'),
('Categoria W'),
('Categoria X'),
('Categoria Y'),
('Categoria Z');

-- TIPOORIGEM
INSERT INTO TIPOORIGEM (nome) VALUES
('Origem 1'),
('Origem 2'),
('Origem 3'),
('Origem 4'),
('Origem 5'),
('Origem 6'),
('Origem 7'),
('Origem 8'),
('Origem 9'),
('Origem 10');

-- TERCEIRIZADO
INSERT INTO TERCEIRIZADO (idCategoriaTerceirizado, contato, nome) VALUES
(1, '62998989898', 'Nome Terceirizado 1'),
(2, '62998989898', 'Nome Terceirizado 2'),
(3, '62998989898', 'Nome Terceirizado 3'),
(4, '62998989898', 'Nome Terceirizado 4'),
(5, '62998989898', 'Nome Terceirizado 5'),
(6, '62998989898', 'Nome Terceirizado 6'),
(1, '62998989898', 'Nome Terceirizado 7'),
(7, '62998989898', 'Nome Terceirizado 8'),
(2, '62998989898', 'Nome Terceirizado 9'),
(5, '62998989898', 'Nome Terceirizado 10');

-- LEADE
INSERT INTO LEADE (dataNascimento, telefone_PK, email, usuarioInstagram, idTipoOrigem) VALUES
('1990-01-01', 1, 'lead1@email.com', 'user1', 1),
('1985-02-15', 2, 'lead2@email.com', 'user2', 2),
('1992-03-20', 3, 'lead3@email.com', 'user3', 3),
('1988-04-10', 4, 'lead4@email.com', 'user4', 4),
('1995-05-05', 5, 'lead5@email.com', 'user5', 5),
('1991-01-01', 6, 'lead6@email.com', 'user6', 1),
('1986-02-15', 7, 'lead7@email.com', 'user7', 2),
('1994-03-20', 8, 'lead8@email.com', 'user8', 10),
('1989-04-10', 9, 'lead9@email.com', 'user9', 8),
('1999-05-05', 10, 'lead10@email.com', 'user10', 6);

-- PESSOA
INSERT INTO PESSOA (cpf, numero, logradouro, complemento, bairro, cidade, estado, telefone_PK, dataNascimento, email, nome, genero) VALUES
('12345678901', 123, 'Rua A', 'Apto 101', 'Bairro A', 'Cidade A', 'Estado A', 1, '1980-01-01', 'pessoa1@email.com', 'José', 'M'),
('98765432109', 456, 'Rua B', 'Apto 202', 'Bairro B', 'Cidade B', 'Estado B', 2, '1985-02-15', 'pessoa2@email.com', 'Maria', 'F'),
('11122233334', 789, 'Rua C', 'Apto 303', 'Bairro C', 'Cidade C', 'Estado C', 3, '1990-03-20', 'pessoa3@email.com', 'João', 'M'),
('55555555558', 101, 'Rua D', 'Apto 404', 'Bairro D', 'Cidade D', 'Estado D', 4, '1995-04-10', 'pessoa4@email.com', 'Joana', 'F'),
('99988877776', 202, 'Rua E', 'Apto 505', 'Bairro E', 'Cidade E', 'Estado E', 5, '2000-05-05', 'pessoa5@email.com', 'Carlos', 'M'),
('33344455567', 303, 'Rua F', 'Apto 606', 'Bairro F', 'Cidade F', 'Estado F', 6, '1975-06-15', 'pessoa6@email.com', 'Ana', 'F'),
('77777777770', 404, 'Rua G', 'Apto 707', 'Bairro G', 'Cidade G', 'Estado G', 7, '1983-07-20', 'pessoa7@email.com', 'Pedro', 'M'),
('44433322201', 505, 'Rua H', 'Apto 808', 'Bairro H', 'Cidade H', 'Estado H', 8, '1992-08-25', 'pessoa8@email.com', 'Fernanda', 'F'),
('66666666662', 606, 'Rua I', 'Apto 909', 'Bairro I', 'Cidade I', 'Estado I', 9, '1997-09-30', 'pessoa9@email.com', 'Rafael', 'M'),
('22211100009', 707, 'Rua J', 'Apto 1010', 'Bairro J', 'Cidade J', 'Estado J', 10, '1974-10-05', 'pessoa10@email.com', 'Julia', 'F');


-- CLIENTE
INSERT INTO CLIENTE (idLeade, cpf) VALUES
(1, '12345678901'),
(2, '98765432109'),
(3, '11122233334'),
(4, '55555555558'),
(5, '99988877776'),
(null, '33344455567'),
(7, '77777777770'),
(8, '44433322201'),
(9, '66666666662'),
(10, '22211100009');

-- CARGO
INSERT INTO CARGO (nome) VALUES
('Cargo 1'),
('Cargo 2'),
('Cargo 3'),
('Cargo 4'),
('Cargo 5'),
('Cargo 6'),
('Cargo 7'),
('Cargo 8'),
('Cargo 9'),
('Cargo 10');

-- LOJA
INSERT INTO LOJA (bairro, numero, estado, cidade, complemento, logradouro, telefone_PK) VALUES
('Bairro A', 101, 'Estado A', 'Cidade A', 'Complemento A', 'Rua A', 1),
('Bairro B', 202, 'Estado B', 'Cidade B', 'Complemento B', 'Rua B', 2),
('Bairro C', 303, 'Estado C', 'Cidade C', 'Complemento C', 'Rua C', 3),
('Bairro D', 404, 'Estado D', 'Cidade D', 'Complemento D', 'Rua D', 4),
('Bairro E', 505, 'Estado E', 'Cidade E', 'Complemento E', 'Rua E', 5),
('Bairro F', 606, 'Estado F', 'Cidade F', 'Complemento F', 'Rua F', 6),
('Bairro G', 707, 'Estado G', 'Cidade G', 'Complemento G', 'Rua G', 7),
('Bairro H', 808, 'Estado H', 'Cidade H', 'Complemento H', 'Rua H', 8),
('Bairro I', 909, 'Estado I', 'Cidade I', 'Complemento I', 'Rua I', 9),
('Bairro J', 1010, 'Estado J', 'Cidade J', 'Complemento J', 'Rua J', 10);


-- FUNCIONARIO
INSERT INTO FUNCIONARIO (salarioBase, comissao, cpf, idCargo, idLoja, dataContratacao) VALUES
(50000, 10, '12345678901', 1, 1, '2023-01-01 10:00:00'),
(60000, 15, '98765432109', 2, 2, '2023-01-02 10:00:00'),
(70000, 20, '11122233334', 3, 3, '2023-01-03 10:00:00'),
(80000, 25, '55555555558', 4, 4, '2023-01-04 10:00:00'),
(90000, 30, '99988877776', 5, 5, '2023-12-05 10:00:00'),
(50000, 10, '33344455567', 1, 6, '2018-01-01 10:00:00'),
(60000, 15, '77777777770', 2, 7, '2017-01-02 10:00:00'),
(70000, 20, '44433322201', 3, 8, '2016-01-03 10:00:00'),
(80000, 25, '66666666662', 4, 9, '2015-01-04 10:00:00'),
(90000, 30, '22211100009', 5, 10, '2020-12-05 10:00:00');

-- VENDEDOR
INSERT INTO VENDEDOR (idFuncionario) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- VENDA
INSERT INTO VENDA (idCliente, valorTotal, dataVenda, idVendedor) VALUES
(1, 1000.00, '2023-12-01 10:00:00', 1),
(2, 1500.00, '2023-12-02 11:30:00', 2),
(3, 2000.00, '2023-12-03 12:45:00', 3),
(4, 2500.00, '2023-12-04 14:20:00', 4),
(5, 3000.00, '2023-12-05 15:50:00', 5),
(6, 1000.00, '2023-12-06 10:00:00', 6),
(7, 1500.00, '2023-12-07 11:30:00', 7),
(8, 2000.00, '2023-12-08 12:45:00', 8),
(9, 2500.00, '2023-12-09 14:20:00', 9),
(10, 3000.00, '2023-12-10 15:50:00', 10);

-- PESSOAFISICA
INSERT INTO PESSOAFISICA (sexo, estadoCivil, rg, idCliente) VALUES
('F', 'Solteira', '3334444', 6),
('M', 'Casado', '7778888', 7),
('F', 'Divorciada', '4445555', 8),
('M', 'Viúvo', '6667777', 9),
('F', 'Solteira', '2223333', 10);

-- PESSOAJURIDICA
INSERT INTO PESSOAJURIDICA (cnpj, razaoSocial, nomeFantasia, inscricaoEstadual, inscricaoMunicipal, idCliente) VALUES
('12345678901234', 'Empresa 1', 'Fantasia 1', '987654321', '654321987', 1),
('98765432109876', 'Empresa 2', 'Fantasia 2', '123456789', '321987654', 2),
('11122233344455', 'Empresa 3', 'Fantasia 3', '456789012', '789012345', 3),
('55555555555555', 'Empresa 4', 'Fantasia 4', '789012345', '012345678', 4),
('99988877766666', 'Empresa 5', 'Fantasia 5', '234567890', '456789012', 5);

-- CATEGORIAPRODUTO
INSERT INTO CATEGORIAPRODUTO (nome) VALUES
('Categoria Produto 1'),
('Categoria Produto 2'),
('Categoria Produto 3'),
('Categoria Produto 4'),
('Categoria Produto 5'),
('Categoria Produto 6'),
('Categoria Produto 7'),
('Categoria Produto 8'),
('Categoria Produto 9'),
('Categoria Produto 10');

-- PRODUTO
INSERT INTO PRODUTO (descricao, valorPorMetro, FK_CATEGORIAPRODUTO_idCategoriaProduto) VALUES
('Produto 1', 10.00, 1),
('Produto 2', 15.00, 2),
('Produto 3', 20.00, 3),
('Produto 4', 25.00, 4),
('Produto 5', 30.00, 5),
('Produto 6', 35.00, 6),
('Produto 7', 40.00, 7),
('Produto 8', 45.00, 8),
('Produto 9', 50.00, 9),
('Produto 10', 55.00, 10);


-- ESTOQUE
INSERT INTO ESTOQUE (idloja, capacidade) VALUES
(1, 100),
(2, 150),
(3, 200),
(4, 250),
(5, 300),
(6, 100),
(7, 150),
(8, 200),
(9, 250),
(10, 300);

-- ESTOQUE_PRODUTO
INSERT INTO ESTOQUE_PRODUTO (idProduto, quantidade, idEstoque) VALUES
(1, 100, 1),
(2, 50, 2),
(3, 100, 3),
(4, 250, 4),
(5, 300, 5),
(1, 100, 2),
(2, 100, 3),
(8, 100, 6),
(9, 200, 8),
(10, 300, 9);

-- CATEGORIAPRODUTOFORNECEDOR
INSERT INTO CATEGORIAPRODUTOFORNECEDOR (idCategoriaProduto) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- FORNECEDOR
INSERT INTO FORNECEDOR (contato, nomeRepresentante, idCategoriaProduto) VALUES
('Contato 1', 'Representante 1', 1),
('Contato 2', 'Representante 2', 2),
('Contato 3', 'Representante 3', 3),
('Contato 4', 'Representante 4', 4),
('Contato 5', 'Representante 5', 5),
('Contato 6', 'Representante 6', 6),
('Contato 7', 'Representante 7', 7),
('Contato 8', 'Representante 8', 8),
('Contato 9', 'Representante 9', 9),
('Contato 10', 'Representante 10', 10);


-- COMPRA
INSERT INTO COMPRA (idLoja, valorTotal, dataCompra, idFornecedor) VALUES
(1, 1000.00, '2023-12-01 10:00:00', 1),
(2, 1500.00, '2023-12-02 11:30:00', 2),
(3, 2000.00, '2023-12-03 12:45:00', 3),
(4, 2500.00, '2023-12-04 14:20:00', 4),
(5, 3000.00, '2023-12-05 15:50:00', 5),
(6, 1000.00, '2023-12-06 10:00:00', 6),
(7, 1500.00, '2023-12-07 11:30:00', 7),
(8, 2000.00, '2023-12-08 12:45:00', 3),
(9, 2500.00, '2023-12-09 14:20:00', 8),
(10, 3000.00, '2023-12-15 15:50:00', 10);

-- PRODUTOSCOMPRADOS
INSERT INTO PRODUTOSCOMPRADOS (quantidade, idCompra, idEstoque, idProduto, valorProduto) VALUES
(1, 1, 1, 1, 1000.00),
(2, 2, 2, 2, 750.00),
(100, 3, 3, 3, 20.00),
(1, 4, 4, 4, 2500.00),
(1, 5, 5, 5, 3000.00),
(1, 6, 6, 6, 1000.00),
(2, 7, 7, 7, 750.00),
(100, 8, 8, 8, 20.00),
(1, 9, 9, 9, 2500.00),
(1, 10, 10, 10, 3000.00);

-- PRODUTOSVENDIDOS
INSERT INTO PRODUTOSVENDIDOS (quantidade, idEstoque, idProduto, idVenda, valorProduto, descontoAplicado) VALUES
(1, 1, 1, 1, 1000.00, 0),
(2, 2, 2, 2, 750.00, 0),
(100, 3, 3, 3, 20.00, 0),
(1, 4, 4, 4, 2250.00, 10),
(1, 5, 5, 5, 3000, 0),
(1, 6, 6, 6, 1000.00, 5),
(2, 7, 7, 7, 750.00, 0),
(100, 8, 8, 8, 20.00, 15),
(1, 9, 9, 9, 2250.00, 0),
(1, 10, 10, 10, 3000.00, 8);

-- TIPO_GASTO_EXTRA
INSERT INTO TIPO_GASTO_EXTRA (idTipoGasto, descricao) VALUES
(1, 'Tipo 1'),
(2, 'Tipo 2'),
(3, 'Tipo 3'),
(4, 'Tipo 4'),
(5, 'Tipo 5'),
(6, 'Tipo 6'),
(7, 'Tipo 7'),
(8, 'Tipo 8'),
(9, 'Tipo 9'),
(10, 'Tipo 10');

-- GASTO_EXTRA
INSERT INTO GASTO_EXTRA (idGastoExtra, valorGastoExtra, dataGastoExtra, idTipoGasto) VALUES
(1, 1000.00, '2023-12-01 10:00:00', 1),
(2, 1500.00, '2023-12-02 11:30:00', 2),
(3, 2000.00, '2023-12-03 12:45:00', 3),
(4, 2500.00, '2023-12-04 14:20:00', 4),
(5, 3000.00, '2023-12-05 15:50:00', 5),
(6, 1000.00, '2023-12-06 10:00:00', 6),
(7, 1500.00, '2023-12-07 11:30:00', 7),
(8, 2000.00, '2023-12-08 12:45:00', 8),
(9, 2500.00, '2023-12-09 14:20:00', 9),
(10, 3000.00, '2023-12-10 15:50:00', 10);

-- LOJA_GASTO_EXTRA
INSERT INTO LOJA_GASTO_EXTRA (idGastoExtra, idLoja, idLojaGastoExtra) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- VENDEDOR_LEADE
INSERT INTO VENDEDOR_LEADE (idLeade, descricaoAtendimento, idVendedor) VALUES
(1, 'Atendimento 1', 1),
(2, 'Atendimento 2', 2),
(3, 'Atendimento 3', 3),
(4, 'Atendimento 4', 4),
(5, 'Atendimento 5', 5),
(6, 'Atendimento 6', 6),
(7, 'Atendimento 7', 7),
(8, 'Atendimento 8', 8),
(9, 'Atendimento 9', 9),
(10, 'Atendimento 10', 10);


-- VENDEDOR_CLIENTE
INSERT INTO VENDEDOR_CLIENTE (idCliente, descricaoAtendimento, idVendedor) VALUES
(1, 'Atendimento 1', 1),
(2, 'Atendimento 2', 2),
(3, 'Atendimento 3', 3),
(4, 'Atendimento 4', 4),
(5, 'Atendimento 5', 5),
(6, 'Atendimento 6', 6),
(7, 'Atendimento 7', 7),
(8, 'Atendimento 8', 8),
(9, 'Atendimento 9', 9),
(10, 'Atendimento 10', 10);

-- ENTREGA
INSERT INTO ENTREGA (idVenda, dataPrevista, dataRealizada, idTerceirizado, valorEntrega) VALUES
(1, '2023-12-01 12:00:00', '2023-12-01 11:45:00', 1, 50.00),
(2, '2023-12-02 13:30:00', '2023-12-02 13:25:00', 2, 75.00),
(3, '2023-12-03 15:45:00', '2023-12-03 15:40:00', 3, 100.00),
(4, '2023-12-04 17:20:00', '2023-12-04 17:15:00', 4, 125.00),
(5, '2023-12-05 18:50:00', '2023-12-05 18:45:00', 5, 150.00),
(6, '2023-12-06 10:15:00', '2023-12-06 10:10:00', 6, 80.00),
(7, '2023-12-07 14:30:00', '2023-12-07 14:25:00', 7, 90.00),
(8, '2023-12-08 16:45:00', '2023-12-08 16:40:00', 8, 110.00),
(9, '2023-12-09 19:10:00', '2023-12-09 19:05:00', 9, 130.00),
(10, '2023-12-10 20:35:00', '2023-12-10 20:30:00', 10, 160.00);


-- CONTRATA

INSERT INTO CONTRATA (idContrata, idLoja, idTerceirizado, descricaoServico) VALUES
	(1, 1, 1, 'servico de entrega'),
	(2, 5, 3, 'servico de contador'),
	(3, 2,  4, 'servico de instagram'),
	(4, 10, 5, 'servico de entrega'),
	(5, 1, 6, 'servico de entrega'),
	(6, 2, 2, 'servico de contador'),
	(7, 2, 7, 'servico de instagram'),
	(8, 9, 8, 'servico de entrega'),
	(9, 8, 9, 'servico de contador'),
	(10, 7, 10, 'servico de instagram');

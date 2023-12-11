-- -----------     << Trabalho Final - Tema 1 >>     -------------------
-- 
--                    SCRIPT DE POPULA
-- 
-- Data Criacao ...........: 02/12/2023
-- Autor(es) ..............: Caio Santos e Débora Moreira
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: tf1CaioSantosDeboraMoreira
-- 
-- Data Ultima Alteracao ..: 
--
-- PROJETO => 01 Base de Dados
--         => 30 Tabelas
-- 
-- -----------------------------------------------------------------

-- SCRIPT DE POPULAÇÃO

-- TELEFONE
INSERT INTO TELEFONE (telefone) VALUES
('1234567890'),
('9876543210'),
('1112223333'),
('5555555555'),
('9998887777');

-- CATEGORIATERCEIRIZADO
INSERT INTO CATEGORIATERCEIRIZADO (nome) VALUES
('Categoria A'),
('Categoria B'),
('Categoria C'),
('Categoria D'),
('Categoria E');

-- TIPOORIGEM
INSERT INTO TIPOORIGEM (nome) VALUES
('Origem 1'),
('Origem 2'),
('Origem 3'),
('Origem 4'),
('Origem 5');

-- TERCEIRIZADO
INSERT INTO TERCEIRIZADO (idCategoriaTerceirizado, contato, nome) VALUES
(1, '62998989898', 'Nome Terceirizado 1'),
(2, '62998989898', 'Nome Terceirizado 2'),
(3, '62998989898', 'Nome Terceirizado 3'),
(4, '62998989898', 'Nome Terceirizado 4'),
(5, '62998989898', 'Nome Terceirizado 5');

-- LEADE
INSERT INTO LEADE (dataNascimento, telefone_PK, email, usuarioInstagram, idTipoOrigem) VALUES
('1990-01-01', 1, 'lead1@email.com', 'user1', 1),
('1985-02-15', 2, 'lead2@email.com', 'user2', 2),
('1992-03-20', 3, 'lead3@email.com', 'user3', 3),
('1988-04-10', 4, 'lead4@email.com', 'user4', 4),
('1995-05-05', 5, 'lead5@email.com', 'user5', 5);

-- PESSOA
INSERT INTO PESSOA (cpf, numero, logradouro, complemento, bairro, cidade, estado, telefone_PK, dataNascimento, email, nome, genero) VALUES
('12345678901', 123, 'Rua A', 'Apto 101', 'Bairro A', 'Cidade A', 'Estado A', 1, '1980-01-01', 'pessoa1@email.com', 'José', 'M'),
('98765432109', 456, 'Rua B', 'Apto 202', 'Bairro B', 'Cidade B', 'Estado B', 2, '1985-02-15', 'pessoa2@email.com', 'Maria', 'F'),
('11122233334', 789, 'Rua C', 'Apto 303', 'Bairro C', 'Cidade C', 'Estado C', 3, '1990-03-20', 'pessoa3@email.com', 'João', 'M'),
('55555555558', 101, 'Rua D', 'Apto 404', 'Bairro D', 'Cidade D', 'Estado D', 4, '1995-04-10', 'pessoa4@email.com', 'Joana', 'F'),
('99988877776', 202, 'Rua E', 'Apto 505', 'Bairro E', 'Cidade E', 'Estado E', 5, '2000-05-05', 'pessoa5@email.com', 'Carlos', 'M');

-- CLIENTE
INSERT INTO CLIENTE (idLeade, cpf) VALUES
(1, '12345678901'),
(2, '98765432109'),
(3, '11122233334'),
(4, '55555555558'),
(5, '99988877776');

-- CARGO
INSERT INTO CARGO (nome) VALUES
('Cargo 1'),
('Cargo 2'),
('Cargo 3'),
('Cargo 4'),
('Cargo 5');

-- LOJA
INSERT INTO LOJA (bairro, numero, estado, cidade, complemento, logradouro, telefone_PK) VALUES
('Bairro A', 101, 'Estado A', 'Cidade A', 'Complemento A', 'Rua A', 1),
('Bairro B', 202, 'Estado B', 'Cidade B', 'Complemento B', 'Rua B', 2),
('Bairro C', 303, 'Estado C', 'Cidade C', 'Complemento C', 'Rua C', 3),
('Bairro D', 404, 'Estado D', 'Cidade D', 'Complemento D', 'Rua D', 4),
('Bairro E', 505, 'Estado E', 'Cidade E', 'Complemento E', 'Rua E', 5);

-- FUNCIONARIO
INSERT INTO FUNCIONARIO (salarioBase, comissao, cpf, idCargo, idLoja) VALUES
(50000, 10, '12345678901', 1, 1),
(60000, 15, '98765432109', 2, 2),
(70000, 20, '11122233334', 3, 3),
(80000, 25, '55555555558', 4, 4),
(90000, 30, '99988877776', 5, 5);

-- VENDEDOR
INSERT INTO VENDEDOR (idFuncionario) VALUES
(1),
(2),
(3),
(4),
(5);

-- VENDA
INSERT INTO VENDA (idCliente, valorTotal, dataVenda, idVendedor) VALUES
(1, 1000.00, '2023-12-01 10:00:00', 1),
(2, 1500.00, '2023-12-02 11:30:00', 2),
(3, 2000.00, '2023-12-03 12:45:00', 3),
(4, 2500.00, '2023-12-04 14:20:00', 4),
(5, 3000.00, '2023-12-05 15:50:00', 5);


-- PESSOAFISICA
INSERT INTO PESSOAFISICA (sexo, estadoCivil, rg, idCliente) VALUES
('M', 'Solteiro', '1234567', 1),
('F', 'Casado', '9876543', 2),
('M', 'Divorciado', '1112223', 3),
('F', 'Viúvo', '5555555', 4),
('M', 'Solteiro', '9998887', 5);

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
('Categoria Produto 5');

-- PRODUTO
INSERT INTO PRODUTO (descricao, valorPorMetro, FK_CATEGORIAPRODUTO_idCategoriaProduto) VALUES
('Produto 1', 10.00, 1),
('Produto 2', 15.00, 2),
('Produto 3', 20.00, 3),
('Produto 4', 25.00, 4),
('Produto 5', 30.00, 5);


-- ESTOQUE
INSERT INTO ESTOQUE (idloja, capacidade) VALUES
(1, 100),
(2, 150),
(3, 200),
(4, 250),
(5, 300);

-- ESTOQUE_PRODUTO
INSERT INTO ESTOQUE_PRODUTO (idProduto, quantidade, idEstoque) VALUES
(1, 100, 1),
(2, 150, 2),
(3, 200, 3),
(4, 250, 4),
(5, 300, 5);

-- CATEGORIAPRODUTOFORNECEDOR
INSERT INTO CATEGORIAPRODUTOFORNECEDOR (idCategoriaProduto) VALUES
(1),
(2),
(3),
(4),
(5);

-- FORNECEDOR
INSERT INTO FORNECEDOR (contato, nomeRepresentante, idCategoriaProduto) VALUES
('Contato 1', 'Representante 1', 1),
('Contato 2', 'Representante 2', 2),
('Contato 3', 'Representante 3', 3),
('Contato 4', 'Representante 4', 4),
('Contato 5', 'Representante 5', 5);

-- COMPRA
INSERT INTO COMPRA (idLoja, valorTotal, dataCompra, idFornecedor) VALUES
(1, 1000.00, '2023-12-01 10:00:00', 1),
(2, 1500.00, '2023-12-02 11:30:00', 2),
(3, 2000.00, '2023-12-03 12:45:00', 3),
(4, 2500.00, '2023-12-04 14:20:00', 4),
(5, 3000.00, '2023-12-05 15:50:00', 5);

-- PRODUTOSCOMPRADOS
INSERT INTO PRODUTOSCOMPRADOS (quantidade, idCompra, idEstoque, idProduto) VALUES
(50, 1, 1, 1),
(75, 2, 2, 2),
(100, 3, 3, 3),
(125, 4, 4, 4),
(150, 5, 5, 5);

-- PRODUTOSVENDIDOS
INSERT INTO PRODUTOSVENDIDOS (quantidade, idEstoque, idProduto, idVenda) VALUES
(10, 1, 1, 1),
(20, 2, 2, 2),
(30, 3, 3, 3),
(40, 4, 4, 4),
(50, 5, 5, 5);

-- TIPO_GASTO_EXTRA
INSERT INTO TIPO_GASTO_EXTRA (idTipoGasto, descricao) VALUES
(1, 'Tipo 1'),
(2, 'Tipo 2'),
(3, 'Tipo 3'),
(4, 'Tipo 4'),
(5, 'Tipo 5');

-- GASTO_EXTRA
INSERT INTO GASTO_EXTRA (idGastoExtra, valorGastoExtra, dataGastoExtra, idTipoGasto) VALUES
(1, 1000.00, '2023-12-01 10:00:00', 1),
(2, 1500.00, '2023-12-02 11:30:00', 2),
(3, 2000.00, '2023-12-03 12:45:00', 3),
(4, 2500.00, '2023-12-04 14:20:00', 4),
(5, 3000.00, '2023-12-05 15:50:00', 5);

-- LOJA_GASTO_EXTRA
INSERT INTO LOJA_GASTO_EXTRA (idGastoExtra, idLoja, idLojaGastoExtra) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- VENDEDOR_LEADE
INSERT INTO VENDEDOR_LEADE (idLeade, descricaoAtendimento, idVendedor) VALUES
(1, 'Atendimento 1', 1),
(2, 'Atendimento 2', 2),
(3, 'Atendimento 3', 3),
(4, 'Atendimento 4', 4),
(5, 'Atendimento 5', 5);

-- VENDEDOR_CLIENTE
INSERT INTO VENDEDOR_CLIENTE (idCliente, descricaoAtendimento, idVendedor) VALUES
(1, 'Atendimento 1', 1),
(2, 'Atendimento 2', 2),
(3, 'Atendimento 3', 3),
(4, 'Atendimento 4', 4),
(5, 'Atendimento 5', 5);

-- ENTREGA
INSERT INTO ENTREGA (idVenda, dataPrevista, dataRealizada, idTerceirizado, valorEntrega) VALUES
(1, '2023-12-01 12:00:00', '2023-12-01 11:45:00', 1, 50.00),
(2, '2023-12-02 13:30:00', '2023-12-02 13:25:00', 2, 75.00),
(3, '2023-12-03 15:45:00', '2023-12-03 15:40:00', 3, 100.00),
(4, '2023-12-04 17:20:00', '2023-12-04 17:15:00', 4, 125.00),
(5, '2023-12-05 18:50:00', '2023-12-05 18:45:00', 5, 150.00);


-- CONTRATA

INSERT INTO CONTRATA (idContrata, idLoja, idTerceirizado, descricaoServico) VALUES
	(1, 1, 1, 'servico de entrega'),
	(2, 1, 1, 'servico de contador'),
	(3, 1, 1, 'servico de instagram'),
	(4, 1, 1, 'servico de entrega'),
	(5, 1, 1, 'servico de entrega');
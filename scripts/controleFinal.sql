-- -----------     << Trabalho Final - Tema 1 >>     -------------------
-- 
--                    SCRIPT DE CONTROLE
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

CREATE ROLE 'adminDB';

-- Conceder todos os privilégios à base de dados para o perfil 'administrador'
GRANT ALL ON TF_1C_caiosantos TO 'adminDB';

-- Criar usuários para o perfil 'administrador'
CREATE USER 'RicardoRocha' IDENTIFIED BY '123admin';
CREATE USER 'JuliaMacedo' IDENTIFIED BY 'admsuper';

-- Conceder o perfil 'administrador' aos usuários
GRANT 'adminDB' TO 'RicardoRocha', 'JuliaMacedo';


-- Crie a role de RH
CREATE ROLE 'rh_adm';

-- Conceda permissões de SELECT na tabela de cargo, pessoa, funcionario e vendedor
GRANT SELECT ON TF_1C_caiosantos.cargo TO 'rh_adm';
GRANT SELECT ON TF_1C_caiosantos.pessoa TO 'rh_adm';
GRANT SELECT ON TF_1C_caiosantos.funcionario TO 'rh_adm';
GRANT SELECT ON TF_1C_caiosantos.vendedor TO 'rh_adm';

-- Conceda permissões de INSERT na tabela de pessoa, funcionario e vendedor
GRANT INSERT ON TF_1C_caiosantos.pessoa TO 'rh_adm';
GRANT INSERT ON TF_1C_caiosantos.funcionario TO 'rh_adm';
GRANT INSERT ON TF_1C_caiosantos.vendedor TO 'rh_adm';

-- Criar usuários para o perfil 'rh'
CREATE USER 'RogerioJunior' IDENTIFIED BY '123analista';
CREATE USER 'AliceBarros' IDENTIFIED BY '321gerente';

GRANT 'rh_adm' TO 'RogerioJunior', 'AliceBarros' ;

FLUSH PRIVILEGES;

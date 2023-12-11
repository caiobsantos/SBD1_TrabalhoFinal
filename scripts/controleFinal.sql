-- -----------     << Trabalho Final - Tema 1 >>     -------------------
-- 
--                    SCRIPT DE CONTROLE
-- 
-- Data Criacao ...........: 11/12/2023
-- Autor(es) ..............: Caio Santos e Débora Moreira
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ...: TF_1C1_caiosantos
-- 
-- Data Ultima Alteracao ..: 
--
-- PROJETO => 01 Base de Dados
--         => 30 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE ROLE 'dbadmin'@'localhost';

-- Conceder todos os privilégios à base de dados para o perfil 'administrador'
GRANT ALL ON TF_1C1_caiosantos TO 'dbadmin'@'localhost';

-- Criar usuários para o perfil 'administrador'
CREATE USER 'admin'@'localhost' IDENTIFIED BY '123admin';
CREATE USER 'superadm'@'localhost' IDENTIFIED BY 'admsuper';

-- Conceder o perfil 'administrador' aos usuários
GRANT 'dbadmin'@'localhost' TO 'admin'@'localhost', 'superadm'@'localhost';


-- Crie a role de RH
CREATE ROLE 'rh'@'localhost';

-- Conceda permissões de SELECT na tabela de cargo, pessoa, funcionario e vendedor
GRANT SELECT ON TF_1C1_caiosantos.cargo TO 'rh'@'localhost';
GRANT SELECT ON TF_1C1_caiosantos.pessoa TO 'rh'@'localhost';
GRANT SELECT ON TF_1C1_caiosantos.funcionario TO 'rh'@'localhost';
GRANT SELECT ON TF_1C1_caiosantos.vendedor TO 'rh'@'localhost';

-- Conceda permissões de INSERT na tabela de pessoa, funcionario e vendedor
GRANT INSERT ON TF_1C1_caiosantos.pessoa TO 'rh'@'localhost';
GRANT INSERT ON TF_1C1_caiosantos.funcionario TO 'rh'@'localhost';
GRANT INSERT ON TF_1C1_caiosantos.vendedor TO 'rh'@'localhost';

-- Criar usuários para o perfil 'rh'
CREATE USER 'analistarh'@'localhost' IDENTIFIED BY '123analista';
CREATE USER 'gerenterh'@'localhost' IDENTIFIED BY '321gerente';

GRANT 'rh'@'localhost' TO 'analistarh'@'localhost', 'gerenterh'@'localhost' ;

FLUSH PRIVILEGES;

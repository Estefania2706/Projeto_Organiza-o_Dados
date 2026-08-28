-- PROJETO: ORGANIZAÇÃO DE DADOS
-- Ficheiro para o GitHub: seguranca.sql
-- HORA 6: SEGURANÇA E NÍVEIS DE ACESSO (RBAC)

-- 1. Criar Perfis de Acesso
CREATE ROLE leitor_Organizacao;
CREATE ROLE editor_Organizacao;

-- 2. Atribuir Permissões Específicas
GRANT SELECT ON Utilizadores TO leitor_Organizacao; 
GRANT SELECT ON Vendas TO leitor_Organizacao;
GRANT SELECT, INSERT, UPDATE ON Produtos TO editor_Organizacao;

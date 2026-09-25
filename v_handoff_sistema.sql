-- =========================================================
-- UFCD 10797 - HORA 50: VISTA DE PASSAGEM DE TESTEMUNHO
-- FICHEIRO: v_handoff_sistema.sql
-- =========================================================

-- 1. Criar a vista com o protocolo de entrega e acessos do sistema
CREATE OR REPLACE VIEW v_handoff_sistema AS 
SELECT  
    'Consola Principal' AS recurso, 
    'https://console.neon.tech (Projeto da Organização)' AS localizacao, 
    'Acesso atribuído aos administradores via e-mail corporativo.' AS procedimento 
UNION ALL 
SELECT  
    'Manual Operacional', 
    'Saved Query: 00_INSTRUCOES / View: v_instrucoes_equipa', 
    'Consulta direta no SQL Editor para resolução autónoma de dúvidas.' 
UNION ALL 
SELECT  
    'Recuperação por Ponto no Tempo (PITR)', 
    'Neon Console -> Menu Branches -> Select Time', 
    'Permite reverter a base de dados para qualquer minuto em caso de erro crítico.' 
UNION ALL 
SELECT  
    'Relatórios de Negócio', 
    'Microsoft Power BI / Excel via SSL (sslmode=require)', 
    'Ligação encriptada com o papel leitor_relatorios.';

-- 2. Conceder permissão de leitura a todos os perfis do sistema (RBAC)
GRANT SELECT ON v_handoff_sistema TO PUBLIC;

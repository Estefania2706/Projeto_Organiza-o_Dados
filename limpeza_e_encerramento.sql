-- =========================================================
-- UFCD 10797 - HORA 50: LIMPEZA E ENCERRAMENTO GLOBAL
-- FICHEIRO: limpeza_e_encerramento.sql
-- =========================================================

-- 1. Eliminar eventuais tabelas temporárias ou rascunhos de testes
DROP TABLE IF EXISTS tb_teste_resiliencia_temp; 
DROP TABLE IF EXISTS tb_vendas_rascunho;

-- 2. Garantir que a tabela de histórico existe (Evita erros de execução)
CREATE TABLE IF NOT EXISTS tb_historico_melhorias (
    id_melhoria SERIAL PRIMARY KEY,
    data_registo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    categoria VARCHAR(100),
    descricao_melhoria TEXT,
    autor VARCHAR(100)
);

-- 3. Registar o ato formal de passagem de testemunho e conclusão das 50 horas
INSERT INTO tb_historico_melhorias (categoria, descricao_melhoria, autor) 
VALUES ( 
    'Passagem de Testemunho', 
    'Conclusão da UFCD 10797: Sistema totalmente documentado, autossuficiente, com vistas de handoff ativas e permissões delegadas.', 
    'Engenheiro de Dados' 
);

-- 4. Confirmar o histórico final atualizado
SELECT * FROM tb_historico_melhorias ORDER BY id_melhoria DESC;

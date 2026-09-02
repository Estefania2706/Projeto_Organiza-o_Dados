SELECT  
    v.data::DATE AS data_referencia, 
    COUNT(v.id) AS total_transacoes, 
    SUM(v.quantidade * p.preco) AS faturacao_total, 
    CASE  
        WHEN SUM(v.quantidade * p.preco) > 1000 THEN 'SUCESSO: Meta Atingida' 
        ELSE 'ATENCAO: Faturacao Baixa' 
    END AS estado_desempenho 
FROM Vendas_Hora20 v 
JOIN Produtos_Hora20 p ON v.produto_id = p.id 
WHERE v.data::DATE = CURRENT_DATE - INTERVAL '1 day' 
GROUP BY v.data::DATE;

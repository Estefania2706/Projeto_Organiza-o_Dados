Este é o repositório oficial do sistema de gestão da Organização. Aqui guardaremos toda a estrutura da nossa base de dados.
# Projeto Organização de Dados - v1.0

## O que o Sistema Faz (Roteiro da Vitória)

1. **Dashboard de Gestão (BI):** Disponibiliza a `VIEW Relatorio_Vendas_Mensal` que consolida as faturas automaticamente por mês, permitindo à Direção atualizar relatórios no Excel com um único clique.
2. **Semáforo de Alerta:** Filtro automatizado de stock crítico (`stock < 5`) para prevenção ativa de ruturas de stock.
3. **Auditoria de Segurança:** Um porteiro automático (*Trigger*) vigia a tabela de produtos e grava todas as alterações de preços na tabela `Auditoria_Precos_Nova` com data e hora exatas.

## Compromisso do Engenheiro (Juramento Final)
*Prometo que, a partir de hoje, não farei nenhuma alteração 'de improviso' na base de dados. Prometo que cuidarei dos dados dos nossos clientes como se fossem os meus. Prometo que documentarei o meu trabalho para que quem venha a seguir não sofra como eu sofri a aprender.*

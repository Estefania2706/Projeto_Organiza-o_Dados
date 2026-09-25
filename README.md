# Portefólio Final: Infraestrutura Cloud & Engenharia de Dados

Este repositório contém toda a documentação, arquitetura e scripts desenvolvidos para a Organização, assinalando o encerramento formal do percurso prático de 50 horas do módulo **UFCD 10797**.

---

# 1. Arquitetura Geral da Infraestrutura (Neon Cloud)
O ecossistema foi totalmente migrado do ambiente físico local para o **Neon PostgreSQL Cloud**, assentando em três pilares fundamentais:
* **Segurança e Auditoria (Hora 15):** Monitorização automática via *Trigger* (`schema.sql`) que grava alterações de preços sem intervenção manual.
* **Business Intelligence (Hora 20):** `VIEW Relatorio_Vendas_Mensal` integrada para extração de dashboards analíticos em tempo real no Excel e controlo de stock crítico.
* **Resiliência SLA (Hora 44):** Tabela `tb_log_incidentes` para diário de bordo técnico e execução do comando de otimização `VACUUM ANALYZE`.

---

# 2. Protocolo de Transição e Handoff (Hora 50)
Para que o sistema opere de forma autónoma e sem dependência pessoal técnica, foram implementados os seguintes protocolos na nuvem:

# O "Teste de Férias"
A equipa operacional foi capacitada para trabalhar em total autossuficiência. Em caso de ausência técnica, qualquer colaborador autorizado pode aceder à consola do Neon, abrir o SQL Editor e executar a consulta de entrega:
```sql
SELECT * FROM v_handoff_sistema;
```

# Controlo de Acessos (RBAC) e Segurança
* A partilha de palavras-passe mestras em envelopes foi abolida. Os acessos são atribuídos de forma cirúrgica através de papéis específicos de utilizador (ex.: `leitor_relatorios`), garantindo ligações encriptadas obrigatórias via SSL (`sslmode=require`).

# Plano de Salvaguarda e Recuperação (PITR)
* Em caso de erro humano grave ou eliminação acidental de dados, a infraestrutura permite a recuperação por ponto no tempo (**Point-in-Time Recovery**). Através do menu *Branches* no Neon Console, a base de dados pode ser revertida com precisão cirúrgica para qualquer minuto anterior.

---
# Artefactos de Autonomia Operacional Integrados
* `v_handoff_sistema.sql` - Painel unificado de acessos corporativos.
* `limpeza_e_encerramento.sql` - Purga de tabelas temporárias e registo formal de conclusão.
* `CALENDARIO_OPERACIONAL.txt` - Rotinas fixas semanais e mensais de manutenção de storage.
* `PROTOCOLO_SLA.txt` - Guião de comunicação transparente com a Direção Geral.

**Projeto Concluído com Sucesso — v2.0 Estável — UFCD 10797**

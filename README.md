# Projeto Organização de Dados - Conclusão Final

Este repositório contém toda a infraestrutura de Engenharia de Dados desenvolvida para a Organização, marcando a conclusão com sucesso do percurso prático do módulo **UFCD 10797**.

# Ecossistema de Dados Implementado
* **Segurança Avançada (Hora 15):** Sistema imutável de auditoria automática de preços via *Trigger* (`schema.sql`).
* **Business Intelligence (Hora 20):** `VIEW Relatorio_Vendas_Mensal` integrada para dashboards analíticos automatizados e alertas de stock crítico (`stock < 5`).
* **Plano de Resiliência (Hora 28):** Protocolo de Disaster Recovery "3-2-1" com ficheiros autónomos de restauro rápido (`schema.sql` e `data.sql`).
* **Comunicação Executiva (Hora 32):** Scripts de extração diária otimizada e documentação analítica cirúrgica em `GUIOES_COMUNICACAO.md`.

# Artefactos de Autonomia Operacional (Hora 36)
Para garantir a continuidade do negócio sem dependência técnica direta:
1. **`COMO_FUNCIONA.txt`:** Guia prático de utilizador para atualizações no Excel e procedimentos de erro.
2. **`O_QUE_FIZEMOS.txt`:** Relatório quantitativo de otimizações e poupança de tempo para a Gestão.
3. **`FUTURO_ORGANIZAÇÃO.txt`:** Roadmap e visão estratégica de automação tecnológica para 2027.

---
*Projeto concluído com sucesso e versionado sob a Tag estável v2.0.*


# Gestão de Incidentes e Continuidade Cloud (Hora 44)
* **Controlo de Incidentes:** Criação da tabela `tb_log_incidentes` para registar e auditar erros diretamente no sistema.
* **Calendário Fixo:** Rotinas de diagnóstico à segunda-feira e manutenção mensal por `VACUUM ANALYZE`.
* **Protocolo SLA:** Definição de guiões de comunicação transparentes para a gestão executiva face a falhas de serviço.


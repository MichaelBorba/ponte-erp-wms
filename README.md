# Ponte ERP ↔ WMS: análise de sincronização com SQL

Projeto de estudo que simula o dia a dia de um analista de suporte técnico
em ambiente com ERP e WMS integrados.

## Problema
ERP e WMS precisam manter o mesmo estoque. Quando dessincronizam, é preciso
descobrir onde está a divergência e por quê.

## O que o projeto faz (fase atual)
- Simula dois sistemas em PostgreSQL (schemas `erp` e `wms`)
- Planta divergências de propósito nos dados de teste
- Usa SQL (JOIN, LEFT JOIN, IS NULL) para detectar:
  - Itens que existem no ERP e faltam no WMS
  - Itens com saldo diferente entre os sistemas
  - Itens que existem no WMS e faltam no ERP

## Como rodar
1. Criar um banco no PostgreSQL chamado `ponte_erp_wms`
2. Executar, nesta ordem, os arquivos de `sql/`: 01, 02 e 03

## Resultados
![Análise A](docs/prints/analise_a.png)

## Próximas fases
- [ ] API do WMS em Python (FastAPI)
- [ ] Integração ERP → WMS com tabela de log
- [ ] Incidentes simulados e relatórios (sintoma → causa → correção)
- [ ] Painel de monitoramento

## Tecnologias
PostgreSQL, pgAdmin, SQL

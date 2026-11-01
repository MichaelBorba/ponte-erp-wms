-- Cria os dois "sistemas" simulados dentro do mesmo banco
CREATE SCHEMA erp;
CREATE SCHEMA wms;

CREATE TABLE erp.produtos (
  sku   VARCHAR(20) PRIMARY KEY,
  nome  VARCHAR(100),
  saldo INT
);

CREATE TABLE wms.saldo (
  sku      VARCHAR(20) PRIMARY KEY,
  endereco VARCHAR(20),
  saldo    INT
);

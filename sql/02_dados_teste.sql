-- ANÁLISE A: itens que existem no ERP e NÃO existem no WMS
-- Leitura: parte do ERP, tenta achar cada SKU no WMS, fica com os não achados.
-- Resultado esperado: SKU012 a SKU015
SELECT e.sku, e.nome
FROM erp.produtos e
LEFT JOIN wms.saldo w ON w.sku = e.sku
WHERE w.sku IS NULL;

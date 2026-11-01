-- ANÁLISE B: itens que existem nos dois, mas com saldo diferente
-- JOIN comum: só dá para comparar saldo se o item existe nos dois lados.
-- Resultado esperado: SKU002 (diferença 2) e SKU006 (diferença 5)
SELECT e.sku, e.saldo AS saldo_erp, w.saldo AS saldo_wms,
       e.saldo - w.saldo AS diferenca
FROM erp.produtos e
JOIN wms.saldo w ON w.sku = e.sku
WHERE e.saldo <> w.saldo;

-- ANÁLISE C: itens que existem no WMS e NÃO existem no ERP
-- Resultado esperado: SKU099
SELECT w.sku
FROM wms.saldo w
LEFT JOIN erp.produtos e ON e.sku = w.sku
WHERE e.sku IS NULL;

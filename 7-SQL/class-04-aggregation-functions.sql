SELECT * FROM orders;

SELECT DISTINCT pais FROM orders ORDER BY pais;

SELECT DISTINCT categoria FROM orders ORDER BY categoria;

SELECT * FROM orders WHERE pais  = 'Brazil';
SELECT DISTINCT regiao FROM orders ORDER BY regiao;

SELECT DISTINCT * FROM orders WHERE regiao  LIKE 'Brai%'; 
SELECT DISTINCT pais FROM orders WHERE regiao  LIKE '%nia'; 
SELECT DISTINCT regiao FROM orders WHERE pais  LIKE '%Ba'; 
SELECT DISTINCT regiao FROM orders WHERE pais  LIKE '__a%';
SELECT lucro FROM orders WHERE prioridade LIKE 'Alto';

SELECT * FROM orders WHERE regiao IN ('Bahia', 'Ceara');

SELECT * FROM orders WHERE quantidade BETWEEN 10 AND 20;

SELECT id_pedido, total_vendas, quantidade, total_vendas / quantidade AS Média FROM orders
WHERE total_vendas <= 2000;

SELECT COUNT() FROM orders;
SELECT COUNT(DISTINCT regiao) FROM orders;
SELECT COUNT(DISTINCT pais) FROM orders;

SELECT 
 COUNT(), 
 total(total_vendas), 
 sum(total_vendas),
 min(total_vendas),
 max(total_vendas),
 avg(total_vendas)
FROM orders WHERE pais = 'Brazil';

SELECT 
 COUNT(), 
 total(lucro), 
 sum(lucro),
 min(lucro),
 max(lucro),
 avg(lucro)
FROM orders WHERE pais = 'Brazil';
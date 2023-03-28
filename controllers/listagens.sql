--Listar todos os produtos com nome, descrição e preço em ordem alfabética crescente:
SELECT nome, descricao, preco FROM produtos ORDER BY nome ASC;

--Listar todas as categorias com nome e número de produtos associados, em ordem alfabética crescente:
SELECT c.nome, COUNT(p.id_produto) as num_produtos 
FROM categorias c 
LEFT JOIN produtos p ON c.id_categoria = p.id_categoria 
GROUP BY c.id_categoria 
ORDER BY c.nome ASC;

--Listar todos os pedidos com data, endereço de entrega e total do pedido (soma dos preços dos itens), em ordem decrescente de data:
SELECT data, endereco_entrega, total FROM pedidos ORDER BY data DESC;

--Listar todos os produtos que já foram vendidos em pelo menos um pedido, com nome, descrição, preço e quantidade total vendida, em ordem decrescente de quantidade total vendida:
SELECT p.nome, p.descricao, p.preco, SUM(ip.quantidade) as qtd_total_vendida 
FROM produtos p 
JOIN itens_pedido ip ON p.id_produto = ip.id_produto 
GROUP BY p.id_produto 
ORDER BY qtd_total_vendida DESC;

--Listar todos os pedidos feitos por um determinado cliente, filtrando-os por um determinado período, em ordem alfabética crescente do nome do cliente e ordem crescente da data do pedido:
SELECT c.nome, p.data, p.endereco_entrega, p.total
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
WHERE c.nome = 'NOME DO CLIENTE' AND p.data BETWEEN 'DATA INICIAL' AND 'DATA FINAL'
ORDER BY c.nome ASC, p.data ASC;

--Listar possíveis produtos com nome replicado e a quantidade de replicações, em ordem decrescente de quantidade de replicações:
SELECT nome, COUNT(*) as qtd_replicacoes 
FROM produtos 
GROUP BY nome 
HAVING COUNT(*) > 1 
ORDER BY qtd_replicacoes DESC;
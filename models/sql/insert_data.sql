DECLARE quantidade_clientes INT := 50;
DECLARE quantidade_categorias INT := 10;
DECLARE quantidade_produtos INT := 100;
DECLARE quantidade_pedidos INT := 25;


INSERT INTO clientes (id_cliente, nome, endereco)
SELECT seq,
       'Cliente_' || seq,
       'Endereco_' || seq
FROM generate_series(1, quantidade_clientes) seq;


INSERT INTO categorias (id_categoria, nome)
SELECT seq,
       'Categoria_' || seq
FROM generate_series(1, quantidade_categorias) seq;


INSERT INTO produtos 
SELECT seq,
       'Produto_' || seq,
       'Descricao_' || seq,
       round(random()::numeric * 1000, 2),
       round(random()::numeric * quantidade_categorias, 0)
FROM generate_series(1, quantidade_produtos) seq;       


INSERT INTO produto_pedido(p_id_pedido, p_id_produto) 
SELECT round(random()::numeric * quantidade_pedidos, 0),
       round(random()::numeric * quantidade_produtos, 0);
INSERT INTO produto_pedido(quantidade)
SELECT round(random()::numeric * 100, 0);


INSERT INTO pedidos(id_pedido, data_pedido, endereco_entrega)
SELECT seq,
       '2022-01-01'::DATE + (random() * (now()::DATE - '2022-01-01'::DATE))::INTEGER,
       'Endereco_' || seq
FROM generate_series(1, quantidade_pedidos) seq;

INSERT INTO pedidos(total)
SELECT SUM(t1.preco * t2.quantidade) as total_unitario
FROM produtos t1
JOIN produto_pedido t2 ON t1.id_produto = t2.p_id_produto
       
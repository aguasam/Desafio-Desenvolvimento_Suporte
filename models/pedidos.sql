CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    data_pedido DATE,
    endereco_entrega VARCHAR(200),
    total DECIMAL(10,2)
);
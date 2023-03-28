CREATE TABLE produto_pedido (
    p_id_pedido INT,
    p_id_produto INT,
    quantidade INT,
    FOREIGN KEY (p_id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (p_id_produto) REFERENCES produtos(id_produto),
    PRIMARY KEY (p_id_pedido, p_id_produto)
);
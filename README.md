# Considerações iniciais 

*Para o desenvolvimento do projeto em questão, primeiramente foi realizada uma análise aprofundada do tema exposto, com o objetivo de compreender melhor a problemática em questão. Foi necessário adquirir conhecimentos prévios sobre o funcionamento do SQL e a criação de banco de dados, visto que eram tecnologias com as quais não possuía experiência anterior, o que acabou por representar uma lacuna em meus estudos de desenvolvimento de software.
Consequentemente, grande parte do tempo dedicado à resolução do caso foi destinado ao estudo e compreensão dessas tecnologias, bem como a busca por soluções para a problemática apresentada. Todo o material utilizado durante o processo de aprendizado, bem como os cursos realizados para a conclusão do projeto, serão disponibilizados.
Após a assimilação dos conceitos essenciais, foi possível iniciar o desenvolvimento do projeto, o qual se iniciou com a criação do diagrama de entidade-relacionamento que correspondesse ao esquema criado. Em seguida, foi dado prosseguimento ao processo de criação das tabelas e das listagens solicitadas no projeto.
Durante a execução deste processo, foram identificadas algumas dificuldades, uma vez que esta foi a primeira vez que desenvolvi um banco de dados do zero. No entanto, foi possível superar esses obstáculos e continuar o projeto, avançando para a criação de scripts para a inserção de dados nas tabelas. Foi possível, também, compreender melhor as relações entre as tabelas e desenvolver suposições acerca do funcionamento dos relacionamentos entre os dados, apoiando-me no diagrama de entidade-relacionamento previamente elaborado.
Porém, não foi possível desenvolver uma maneira satisfatória para a inserção automática de dados nas tabelas, o que acabou por impedir a finalização do projeto e, consequentemente, a etapa de backup dos dados. Mesmo assim, considero que o projeto foi extremamente proveitoso, agregando muito conhecimento e colaborando para o meu desenvolvimento na área de software.
Por fim, pretendo continuar meus estudos nesta área, com o objetivo de aprimorar ainda mais minhas habilidades e conhecimentos. Sem dúvida, este desafio representou um diferencial em meu desenvolvimento e contribuiu significativamente para meus próprios estudos.*


## Introdução

Para o desenvolvimento do exercício, foquei em criar as relações entre as tabelas de modo a incluir os dados essenciais para a solução do problema. Levando em consideração minha limitação de conhecimento nesse assunto, busquei criar soluções que fossem mais simples e também considerei que pudessem ser aplicadas em um contexto real, como por exemplo, considerar que o endereço de entrega do pedido pudesse ser diferente do endereço do cliente. Optei por não criar uma tabela específica para um endereço completo por questões de praticidade. Além disso, desenvolvi a tabela de produto-pedido, que serviu para atender algumas das listagens solicitadas, mas reconheço que poderia ter elaborado uma solução mais eficiente.
Concluo que a criação das tabelas e suas respectivas relações foi satisfatória para a listagem de dados proposta no exercício. No entanto, devido à falta de inserção de dados em algumas das tabelas, tornou-se desafiador realizar testes nessas partes do exercício.

## Descrição do banco de dados

**Tabela 'clientes'**

A tabela 'clientes' contém informações sobre os clientes da loja, incluindo um ID único para cada cliente, o nome do cliente e seu endereço.

Colunas:

* id_cliente: identificador único do cliente

* nome: nome do cliente

* endereco: endereço do cliente


**Tabela 'categorias'**

A tabela 'categorias' contém informações sobre as categorias de produtos que a loja vende, incluindo um ID único para cada categoria e o nome da categoria.

Colunas:

* id_categoria: identificador único da categoria

* nome: nome da categoria


**Tabela 'produtos'**

A tabela 'produtos' contém informações sobre os produtos que a loja vende, incluindo um ID único para cada produto, o nome do produto, a descrição do produto, o preço do produto e o ID da categoria à qual ele pertence.

Colunas:

* id_produto: identificador único do produto

* nome: nome do produto

* descricao: descrição do produto

* preco: preço do produto

* id_categoria: identificador da categoria à qual o produto pertence


**Tabela 'pedidos'**

A tabela 'pedidos' contém informações sobre os pedidos feitos pelos clientes da loja, incluindo um ID único para cada pedido, a data do pedido, o endereço de entrega e o valor total do pedido.

Colunas:

* id_pedido: identificador único do pedido

* data_pedido: data do pedido

* endereco_entrega: endereço de entrega

* total: valor total do pedido


**Tabela 'produto_pedido'**

A tabela 'produto_pedido' contém informações sobre os produtos que foram incluídos em cada pedido, incluindo o ID do pedido, o ID do produto e a quantidade desse produto no pedido.

Colunas:

* p_id_pedido: identificador do pedido

* p_id_produto: identificador do produto

* quantidade: quantidade do produto no pedido


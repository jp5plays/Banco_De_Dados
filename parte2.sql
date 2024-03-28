insert into cliente(nome,endereco,email,celular,nascimento) values ( "Cleiton d Silva","Rua Thomas Locomtina N15","cleitingameplays@gmail.com","11 95566-6321","2007-09-27" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "Crato d Silva","Rua lindo Locomtina N17","cratongameplays@gmail.com","11 95566-6321","2007-09-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "alexandre fracisco","Rua jornalista bravo N19","alexandregameplays@gmail.com","11 95566-6321","2008-09-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "carol lindaaaa","Rua jornalista trsite N55","carolindagameplays@gmail.com","11 95555-6321","2007-08-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "batista","Rua jornalista bravo N155","batistagameplays@gmail.com","11 95566-6321","2005-08-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "monica sales","Rua encomendador N888","monicagameplays@gmail.com","11 95566-6331","2009-09-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "Reanto Sales","Rua encomendaor N888","RenatoSalesgameplays@gmail.com","11 98696-6321","2002-09-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "Agatha Ribeiro de Sales","Rua Lendas N5","agathagameplays@gmail.com","11 95576-6371","2031-09-17" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "Brenda Silva de Sales","Rua Lendas N5","Brendagameplays@gmail.com","11 95566-6381","2008-01-07" );
insert into cliente (nome,endereco,email,celular,nascimento) values ( "João Pedro Riberio Brito","Rua Lendas N5","Joaopedrogameplays@gmail.com","11 95866-6321","2007-09-27" );

insert into produtos (nome,preco,descricao,quant_estoque) values('curso fitness',200.00,'Curso fines legal','1000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bola Inflavél',600.50,'bola inflável legal','5000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bicicleta',700.50,'bicicleta legal','200');
insert into produtos (nome,preco,descricao,quant_estoque) values('curso fitness',200.00,'Curso fines legal','1000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bola Inflavél',600.50,'bola inflável legal','5000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bicicleta',700.50,'bicicleta legal','200');
insert into produtos (nome,preco,descricao,quant_estoque) values('curso fitness',200.00,'Curso fines legal','1000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bola Inflavél',600.50,'bola inflável legal','5000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bicicleta',700.50,'bicicleta legal','200');
insert into produtos (nome,preco,descricao,quant_estoque) values('curso fitness',200.00,'Curso fines legal','1000');

insert into pedido(n_pedido,dt_compra,valor_t,dt_entrega) values (255,'2024-02-21',500,'2024-02-22'),(265,'2024-02-21',500,'2024-03-22'),(255,'2024-02-21',500,'2024-02-22'),(275,'2024-02-11',500,'2024-02-25'),
(275,'2024-02-21',320,'2024-02-22'),(125,'2023-02-21',200,'2023-03-12'),(275,'2024-02-21',300,'2024-03-22'),(155,'2023-02-21',500,'2023-02-25'),(355,'2024-02-22',400,'2024-02-25');

insert into lista_pedidos(valor_n,valor_t,quant) values (266,300,2),(255,26,2),(266,322,2),(266,100,2),(366,385,2),(566,300,2),(244,80,2),(264,356,2),(266,398,2),(266,50,2);

-----------------------------------------------------------------------------
UPDATE cliente
set nome= 'Agatha Sofia Riebiro de Sales'
where id_cliente=7;


UPDATE produtos
set preco= 500
where id_produtos=5;

UPDATE pedido
set dt_compra= '2024-02-21'
where id_pedidos=8;

UPDATE lista_pedidos
set valor_t= 1000
where id_pedidos=9;
--------------------------------------------------------------------------
DELETE FROM cliente
WHERE id_cliente=5;

DELETE FROM lista_pedidos
WHERE id_lista_pedidos=5;



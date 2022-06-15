create table produtos (
   id serial PRIMARY KEY, 
   nome varchar(200)
)

create table clientes (
   id serial PRIMARY KEY,
   nome varchar (200) NOT NULL
)

create table vendas (
   id serial PRIMARY KEY,
   id_produto integer NOT NULL,
   id_cliente integer NOT NULL
)

ALTER TABLE vendas
ADD CONSTRAINT VdaProd
FOREIGN KEY (id_produto) REFERENCES produtos(id);

ALTER TABLE vendas
ADD CONSTRAINT VdaCLi
FOREIGN KEY (id_cliente) REFERENCES clientes(id);,

insert into produto (nome) values ('carro'),('computador'),('alface'),('pet');
insert into clientes (nome) values ('Hug'),('Zez'),('Lui'),('TioPatinhas');

insert into vendas (id_produto,id_cliente) values
(1,1),(2,2),(2,3),(4,1),(4,2),(4,3),(4,4);

select * from vendas;
--quem comprou o que?

select cli.nome as cliente, prod.nome as produto from vendas as vda

join produtos as prod on prod.id = vda.id_produto

join clientes as cli on cli.id = vda.id_cliente;



-- quero todos produtos mostrando os que foram comprados ou não

select vda.id as venda,prod.nome as produto from vendas as vda

right join produtos as prod on prod.id - vda.id_produto;



select vda.id as venda,prod.nome as porduto from vendas as vda

left join produtos as prod on prod.id - vda.id_produto;
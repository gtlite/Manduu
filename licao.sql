CREATE TABLE livros(
id_livros int PRIMARY KEY,
titulo varchar(150),
autor varchar(150),
)

CREATE TABLE usuarios(
id_usuarios int PRIMARY KEY,
nome varchar(150),
idade varchar(150),
)

CREATE TABLE emprestimos(
id_emprestimos int PRIMARY KEY,
id_livros integer,
id_ usuarios integer,
data_emprestimo date,
)


ALTER table emprestimos
   ADD CONTRAINT fk_livros FOREIGN KEY (id_livros) REFERENCES livros (id_livros);

ALTER table emprestimos
   ADD CONTRAINT fk_usuarios FOREIGN KEY (id_usuarios) REFERENCES usuarios (id_usuarios);




insert into livros (id_livros, titulo, autor)
values(1, 'O Pequeno Príncipe', 'Antoine')

insert into livros (id_livros, titulo, autor)
values(2, 'Harry Potter', 'J.K Rowling')

insert into livros (id_livros, titulo, autor)
values(3, 'Os Sete Pecados Capitais', 'Nakaba Suzuki')

insert into livros (id_livros, titulo, autor)
values(4, 'One Piece', 'Eichiro Oda')

insert into livros (id_livros, titulo, autor)
values(5, 'Percy Jackson', 'Rick Riordan')

insert into livros (id_livros, titulo, autor)
values(6, 'Naruto', 'Masashi Kishimoto')

insert into livros (id_livros, titulo, autor)
values(7, 'Dragon Ball', 'Akira Toriyama')

insert into livros (id_livros, titulo, autor)
values(8, 'Kill la Kill', 'Kazuki Nakashima')

insert into livros (id_livros, titulo, autor)
values(9, 'Your Name', 'Makoto Shinkai')

insert into livros (id_livros, titulo, autor)
values(10, 'Stranger Things', 'Adam Christopher')

select * from livros
where id_livros <=10

insert into usuarios (id_usuarios, nome, idade)
values(1, 'Gustavo', '16')

insert into usuarios (id_usuarios, nome, idade)
values(2, 'Rafaela', '19')

insert into usuarios (id_usuarios, nome, idade)
values(3, 'Irene', '20')

insert into usuarios (id_usuarios, nome, idade)
values(4, 'Gabriela', '13')

insert into usuarios (id_usuarios, nome, idade)
values(5, 'Guilherme', '10')

insert into usuarios (id_usuarios, nome, idade)
values(6, 'Cristiano', '11')

insert into usuarios (id_usuarios, nome, idade)
values(7, 'Nicolas', '20')

insert into usuarios (id_usuarios, nome, idade)
values(8, 'Wilson', '29')

insert into usuarios (id_usuarios, nome, idade)
values(9, 'Alexandre', '60')

insert into usuarios (id_usuarios, nome, idade)
values(10, 'Matheus', '50')



select * from usuarios
where id_usuarios <=10


insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(1,1,1, '11/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(2,2,2, '12/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(3,3,3, '13/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(4,4,4, '14/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(5,5,5, '15/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(6,6,6, '16/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(7,7,7, '17/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(8,8,8, '18/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(9,9,9, '19/05/2022')

insert into emprestimos
(id_emprestimos , id_livros, id_usuarios, data_emprestimo)
values(10,10,1,0 '20/05/2022')



select * from emprestimos
where id_emprestimos <=10


select l.id_livros, l.titulo, u.id_usuarios, u.nome, u.idade, e.data_emprestimo
from esprestimos as e
inner join usuarios as u on u.id_usuarios = e id_emprestimos
inner join livros as l on l.id_livros = e.id_usuarios
where u.idade <18
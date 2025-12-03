create database 0212BD;
use 0212BD;

create table funcionario(
codfuncionario int (11),
nomefuncionario varchar(45),
cargofuncionario varchar(45),
salariofuncionario float,
dataAdimissao date,
cpfuncionario varchar (45),

constraint pkfuncionario primary key (codfuncionario));
show tables;
describe funcionario;
select * from funcionario;

alter table funcionario rename column salariofuncionario to salario;
alter table funcionario add column telefone int(11);
alter table funcionario drop column cpfuncionario;

insert into funcionario(codfuncionario,nomefuncionario,cargofuncionario,salario,dataAdimissao) values (1,'Jasmim','gerente',2.500,'2019-07-23');
insert into funcionario(codfuncionario,nomefuncionario,cargofuncionario,salario,dataAdimissao) values (2,'Lia','advogado',5.235,'2010-03-17');
insert into funcionario(codfuncionario,nomefuncionario,cargofuncionario,salario,dataAdimissao) values (3,'Karol','dentista',1.500,'2010-01-15');
insert into funcionario(codfuncionario,nomefuncionario,cargofuncionario,salario,dataAdimissao) values (4,'Flower','consultora',3.000,'2017-04-28');
insert into funcionario(codfuncionario,nomefuncionario,cargofuncionario,salario,dataAdimissao) values (5,'Simom','segurança',2.700,'2020-11-03');

update funcionario set salario = 3.000 where codfuncionario=1;
update funcionario set cargofuncionario = 'consultor de vendas' where codfuncionario=4;
delete from funcionario where codfuncionario=5;
select * from funcionario order by salario;
select nomefuncionario, salario from funcionario where salario between 2.000 and 3.500;
select nomefuncionario, dataAdimissao from funcionario where dataAdimissao < '2023-01-01';
select nomefuncionario, cargofuncionario from funcionario where cargofuncionario in ('dentista','advogado');
select nomefuncionario, cargofuncionario, telefone from funcionario where nomefuncionario like 'fl%';
select nomefuncionario, cargofuncionario from funcionario where cargofuncionario in ('gerente','consultora') and salario > 4.000;

update funcionario set telefone = 627494932 where codfuncionario =1;
update funcionario set telefone = 826038279 where codfuncionario =2;
update funcionario set telefone = 914830038 where codfuncionario =3;
update funcionario set telefone = 062288352 where codfuncionario =4;


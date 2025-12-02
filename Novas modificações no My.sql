create database 2711BD;
use BD2711;

create table cliente(
codigocliente int not null auto_increment,
nomecliente varchar(45),
bairrocliente varchar(45),

constraint pkcliente primary key (codigocliente));

insert into cliente(codigocliente,nomecliente,bairrocliente) values(1,'Karol','Santana');
insert into cliente(codigocliente,nomecliente,bairrocliente) values(2,'Lia','Santana');
insert into cliente(codigocliente,nomecliente,bairrocliente) values(3,'Ella','Barra');
insert into cliente(codigocliente,nomecliente,bairrocliente) values(4,'Cauã','Centro');
insert into cliente(codigocliente,nomecliente,bairrocliente) values(5,'Nicolas','Porto');
show tables;
describe cliente;

select * from cliente where bairrocliente='Santana';

show tables;
describe Cliente;
select * from Cliente;

select  codigoCliente,nomeCliente from cliente where bairroCliente='Santana';
select  codigoCliente,nomeCliente from cliente where codigoCliente>3;


alter table cliente add column profCliente varchar(45);
alter table cliente add emailCliente varchar(45);


update cliente set emailCliente='karolsilva@gmail.com' where codigocliente=1;
update cliente set emailCliente='Liasantos@gmail.com' where codigocliente=2;
update cliente set emailCliente='Ellaalves@gmail.com' where codigocliente=3;
update cliente set emailCliente='Cauãlima@gmail.com' where codigocliente=4;
update cliente set emailCliente='Nicolasalmeida@gmail.com' where codigocliente=5;



update cliente set profCliente='Dentista' where codigocliente=1;
update cliente set profCliente='Adevogada' where codigocliente=2;
update cliente set profCliente='Bombeira' where codigocliente=3;
update cliente set profCliente='Professor' where codigocliente=4;
update cliente set profCliente='Eletricista' where codigocliente=5;


DELETE FROM Cliente WHERE nomeCliente = 'Karolaynne' AND codigoCliente = 1;
update cliente set nomeCliente = 'Karol' where codigoCliente=1;
delete from cliente where codigoCliente=4;

alter table cliente add column cpfCliente int;
alter table cliente add column datanascCliente date;
alter table cliente drop datanascCliente;

select * from Cliente;

update cliente set cpfCliente=1234755678 where codigocliente=1;
update cliente set cpfCliente=67589893627 where codigocliente=2;
update cliente set cpfCliente= 547657543 where codigocliente=3;
update cliente set cpfCliente=456743245 where codigocliente=4;
update cliente set cpfCliente=564738904 where codigocliente=5;



update cliente set datanascCliente='1967-05-30' where codigocliente=1;
update cliente set datanascCliente='2000-12-21' where codigocliente=2;
update cliente set datanascCliente='2007-04-15' where codigocliente=3;
update cliente set datanascCliente='2008-08-08' where codigocliente=4;
update cliente set datanascCliente='1965-03-11' where codigocliente=5;

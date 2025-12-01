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
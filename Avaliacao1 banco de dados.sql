create database avaliacao1;
use avaliacao1;

create table cliente(
codigo int not null auto_increment,
nome varchar (45),
cpf int (11),
telefone int (11),
endereco varchar (45),
cep int (11),

constraint pkcodigo primary key (codigo));
show tables;
describe cliente;

create table quarto(
codigo int not null auto_increment,
tipo varchar (45),
preco float (11),
statusq varchar (45),

constraint pkcodigo primary key (codigo));
show tables;
describe quarto;

create table servico(
codigo int not null auto_increment,
nome varchar (45),
preco float (11),

constraint pkcodigo primary key (codigo));
show tables;
describe quarto;

create table reservas(
codigo int not null auto_increment,
datadecheckin date,
datadecheckout date,
valortotal float (11),
  
constraint pkcodigo primary key (codigo));
show tables;
describe reservas;

create table consumodeservico(
codigo int not null auto_increment,
servicosutilizados varchar (45),
codigocliente int not null,
codigoreservas int not null,
codigoservico int not null,

constraint pkcodigo primary key (codigo),
constraint fkcodigocliente foreign key (codigocliente) references cliente (codigo),
constraint fkcodigoreserva foreign key (codigoreservas) references reservas (codigo),
constraint fkcodigoservico foreign key (codigoservico) references servico (codigo));
show tables;
describe consumodeservico;

insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (1,'Samara',4445-556604,5876-549063,'Rua Jurandi 55 - Napoleão - Muriaé - MG', 062892682); 
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (2,'Suéli',638764-8643,5876-4367,'Rua Hermes 81 - Barra - Muriaé - MG', 592702701);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (3,'Mia',457684-6432,7134-54431,'Rua Cachoeiras 49 - Macacu - Distrito - RJ', 657492682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (4,'Bruno',532765-473,587654-9063,'Rua Principal 65 - Vermelho - Muriaé - MG', 03642682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (5,'Mary',777660-8636,727259-6825,'Rua João dornelas 58 - Dornelas- Muriaé - MG', 057422682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (6,'Matheo',999555-9876,876345-8093,'Rua do Meio 87 - Aeroporto - Muriaé - MG', 867592682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (7,'Simom',988675-0088,99699-5543,'Rua Osvaldo 09 - Centro - Muriaé - MG', 067892682); 
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (8,'Nick',344766-2345,245674-4567,'Rua Valdeir 95 - Napoleão - Muriaé - MG', 674326275);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (9,'Jasmim',888444-0504,777111-2233,'Rua Jurandi 32 - Napoleão - Muriaé - MG', 062892682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (10,'Luna',090453-8622,587654-9537,'Rua Principal 180 - Vermelho - Muriaé - MG', 062892682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (11,'Ambar',835782-6604,589654-9063,'Rua Hermes 756 - Barra - Muriaé - MG', 592702701);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (12,'Cauã',444222-1144,234654-3456,'Rua João Dornelas 76 - Dornelas - Muriaé - MG', 057422682);
insert into cliente(codigo,nome,cpf,telefone,endereco,cep) values (13,'Nicolas',777453-9966,946721-9946,'Rua do Meio 950 - Aeroporto - Muriaé - MG', 867592682);

select * from cliente;

insert into quarto(codigo,tipo,preco,statusq) values (1,'standard', 200.00, 'livre');
insert into quarto(codigo,tipo,preco,statusq) values (2,'deluxe', 600.00, 'ocupado');
insert into quarto(codigo,tipo,preco,statusq) values (3,'suite', 3.000, 'livre');
insert into quarto(codigo,tipo,preco,statusq) values (4,'suite', 5.000, 'ocupado');
insert into quarto(codigo,tipo,preco,statusq) values (5,'standard', 400.00, 'livre');
insert into quarto(codigo,tipo,preco,statusq) values (6,'deluxe', 750.00, 'ocupado');
insert into quarto(codigo,tipo,preco,statusq) values (7,'suite', 24.000, 'ocupado');
insert into quarto(codigo,tipo,preco,statusq) values (8,'standard', 320.00, 'manutenção');
insert into quarto(codigo,tipo,preco,statusq) values (9,'deluxe', 800.00, 'ocupado');
insert into quarto(codigo,tipo,preco,statusq) values (10,'suite', 1.570, 'livre');
insert into quarto(codigo,tipo,preco,statusq) values (11,'deluxe', 490.00, 'livre');
insert into quarto(codigo,tipo,preco,statusq) values (12,'standard', 150.00, 'ocupado');
insert into quarto(codigo,tipo,preco,statusq) values (13,'standard', 330.00, 'livre');
insert into quarto(codigo,tipo,preco,statusq) values (14,'suite', 8.500, 'manutenção');
select * from quarto;

insert into servico(codigo,nome,preco) values (1,'serviço de quarto',120.00);
insert into servico(codigo,nome,preco) values (2,'lavanderia',25.00);
insert into servico(codigo,nome,preco) values (3,'passadoria',15.00);
insert into servico(codigo,nome,preco) values (4,'estacionamento',90.00);
insert into servico(codigo,nome,preco) values (5,'frigobar',30.00);
insert into servico(codigo,nome,preco) values (6,'serviço de quarto',100.00);
insert into servico(codigo,nome,preco) values (7,'lavanderia', 60.00);
insert into servico(codigo,nome,preco) values (8,'passadoria',45.00);
insert into servico(codigo,nome,preco) values (9,'estacionamento',150.00);
insert into servico(codigo,nome,preco) values (10,'frigobar',18.00);
insert into servico(codigo,nome,preco) values (11,'serviço de quarto',240.00);
insert into servico(codigo,nome,preco) values (12,'serviço de quarto',300.00);
select * from servico;

insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (1,'2025-10-03','2025-11-03',12.120);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (2,'2023-05-13','2023-05-14',1.078);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (3,'2018-02-19','2018-02-22',1.948);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (4,'2022-03-15','2022-03-22',6.060);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (5,'2022-08-01','2022-08-03',10.585);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (6,'2019-06-05','2019-07-05',6.306);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (7,'2024-12-24','2024-12-26',4.938);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (8,'2024-11-27','2024-12-01',2.048);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (9,'2020-09-15','2020-09-18',698);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (10,'2018-04-06','2018-04-07',578);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (11,'2019-01-22','2019-02-05',9.306);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (12,'2025-07-02','2025-07-04',48.765);
insert into reservas(codigo,datadecheckin,datadecheckout,valortotal)  values (13,'2021-12-09','2021-12-13',1.158);
select * from reservas;

insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (1,'servico de quarto',9,7,1);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (2,'lavanderia',3,9,7);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (3,'passadaria',7,5,8);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (4,'estacionamento',2,10,9);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (5,'servico de quarto',5,11,12);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (6,'frigobar',10,6,10);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (7,'lavanderia',6,1,2);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (8,'estacionamento',11,8,4);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (9,'servico de quarto',12,4,12);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (10,'frigobar',3,7,5);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (11,'passadaria',1,8,8);
insert into consumodeservico(codigo,servicosutilizados,codigocliente,codigoreservas,codigoservico) values (12,'passadaria',4,1,3);
select * from consumodeservico;
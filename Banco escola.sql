create database db_banco_escola; /*Cração do banco de dados*/
use db_banco_escola; /*Acessar o banco*/
drop database db_banco_escola; /*Apagar fisicamente o banco de dados*/

/*-----------Criação da tabela aluno---------*/
create table Aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(100) not null,
data_nasc date not null, 
genero enum ('f','m','outro') not null,
data_cadastro date not null
);

describe Aluno; /*Exibe a estrutura da tabela*/
select * from Aluno; 

/*-------- Criação da tabela Curso----------*/
create table Curso(
id_curso int auto_increment primary key,
nome_curso varchar(50) not null,
descricao varchar(100) not null,
data_cadastro date not null,
valor_curso decimal(7,2)
);

insert into Aluno(nome_aluno,data_nasc,genero,data_cadastro) values
('Ana Souza','2005-02-21','f','2026-05-18'),
('Maria Oliveira','2001-02-15','f','2026-05-18'),
('Carlos Pereira','1998-11-30','m','2026-05-18'),
('Juliana Santos','2002-07-09','f','2026-05-18'),
('Pedro Almeida','2000-01-25','m','2026-05-18');

select * from Curso;
describe Curso;
insert into Curso(nome_curso,descricao,data_cadastro,valor_curso) values
('SQL Server','Curso voltado para banco de dados','2026-05-20',1200.000),
('JAVA','Curso de linguagem de programação JAVA','2026-05-20',2300.00),
('POO','Curso de orientação à objetos','2026-05-20',500.00),
('Front End','Curso de HTML e CSS','2026-05-20',800.00),
('Angular','Curso de framework','2026-05-20',1000.00);

Alter table aluno
add column email_aluno varchar(50) not null 
default 'sem_email@exemplo.com'; /*Altera a estrutura da tabela*/

Alter table Curso
add column carga_horaria varchar(15) not null
default '0h';

alter table Curso
drop column carga_horaria;

update Curso
set carga_horaria = '10 horas'
where id_curso = 1;

delete from Curso
 where id_curso = 5;
 
 create table Professor(
 id_professor int auto_increment primary key,
 nome_professor varchar(100) not null,
 data_nascimento date not null,
 data_criacao date not null,
 email_professor varchar(50) not null,
 telefone_professor char(11) not null,
 cpf_professor char(14) not null,
 endereco_professor varchar(30) not null,
 turno_professor enum('manha','tarde','noite') not null,
 disciplina_professor varchar(40) not null
 );

 insert into Professor(nome_professor,data_nascimento,data_criacao,email_professor,telefone_professor,cpf_professor,endereco_professor,turno_professor,disciplina_professor) values
('Débora Paixão','1972-12-15','2026-05-15','debspaixao@gmail.com','11987654321','123.456.789-10','Rua Tito,54','manha','Java Orientado a Objetos'),
('Jailson','1972-12-15','2026-05-15','jailsonmendeso@gmail.com','11987654321','123.456.789-10','Rua Tito,54','tarde','Desenvolvimento Web com react'),
('Gabriel Firmino','1972-12-15','2026-05-15','gabrielfirmino@gmail.com','11987654321','123.456.789-10','Rua Tito,54','noite','SQL server'),
('Julio Cesar','1972-12-15','2026-05-15','juliocesar@gmail.com','11987654321','123.456.789-10','Rua Tito,54','manha','Python para Data Science'),
('Aurora Sales','1972-12-15','2026-05-15','aurorasales@gmail.com','11987654321','123.456.789-10','Rua Tito,54','noite','Power BI e dashboards');

 drop table Professor;
 select * from Professor;
 
 alter table Professor
 add column salario_professor decimal(7,2) not null
 default 0.00; 
 
alter table Professor
add column estado_civil enum('casado(a)', 'solteiro(a)', 'divorciado(a)','viuvo(a)');

update Professor
set salario_professor = 99999.99
where id_professor = 1;

update Professor
set salario_professor = salario_professor + 800.00
where id_professor = 2;

select salario_professor from Professor;
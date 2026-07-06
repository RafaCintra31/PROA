create database db_escolaspeak; /*criação de banco de dados*/
use db_escolaspeak;

/*criação da tabela aluno*/
create table tb_aluno(
	id_aluno int auto_increment primary key,
    nome_aluno varchar(100) not null, 
    data_nascimento date not null,
    data_cadastro date not null,
    email_aluno varchar(50) not null,
    telefone  char(11) not null,
    cpf_aluno char(14) not null
);

create table tb_professor(
	id_professor int auto_increment primary key,
    nome_professor varchar(100) not null,
    data_entrada date not null,
    email_professor varchar(50) not null,
    registro_cndb char(11) not null,
    area_atuacao varchar(50) not null,
    telefone char(11) not null,
    cpf_professor char(14) not null
);

create table tb_responsavel(
	id_responsavel int auto_increment primary key,
    nome_responsavel varchar(100) not null,
    email_responsavel varchar(50) not null,
    telefone char(11) not null,
    cpf_responsavel char(14) not null
);

drop table tb_aluno; /*apagar a tabela*/

insert into tb_professor(nome_professor,data_entrada,email_professor,registro_cndb,area_atuacao,telefone,cpf_professor) values
('José da Silva', '2026-05-15','jose@senac.edu','12365478541','Matemática','11985742635','21365478541236'),
('Maniana Carvalho', '2026-05-15','mariana@senac.edu','12547896541','Português','11985742697','87452369874521'),
('Maria Santos', '2026-05-15','maria@senac.edu','85741236997','Ciências','11974859621','78541287596325'),
('Felipe Santos', '2026-05-15','felipe@senac.edu','25874693215','História','11975243692','87596412365874'),
('Gabriela Oliveira', '2026-05-15','gabriela@senac.edu','65987423654','Arte','11925487693','89657423654157');


insert into tb_aluno (nome_aluno,data_nascimento,data_cadastro,email_aluno,telefone,cpf_aluno) values
('João Silva','1980/02/20','2026/05/15','joao@proa.org','11988754122','98745632100555'),
('Maria Souza','2000/01/01','2026/05/15','maria@proa.org','11945678911','12345678910117'),
('Isabella Silva','2001/02/15','2026/05/15','isabella@proa.org','11985746312', '89674585213652'),
('Lidia Oliveira','1966/08/05','2026/05/15','lidia@proa.org','11963587412','12587463987452'),
('Rafaella Cintra','2005/07/31','2026/05/15','rafaella@proa.org','11978548267','89674521463598');

describe tb_aluno; /*descreve a estrutura da tabela*/

select * from tb_aluno; /*mostra os dados da tabela*/
select * from tb_professor;
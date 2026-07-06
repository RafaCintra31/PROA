create database db_escola_de_idiomas;
use db_escola_de_idiomas;

create table Aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(100) not null,
data_nasc date not null, 
genero enum ('f','m','outro') not null,
data_cadastro date not null
);

create table Curso(
id_curso int auto_increment primary key,
nome_curso varchar(50) not null,
descricao varchar(100) not null,
data_cadastro date not null,
valor_curso decimal(7,2)
);

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
 
 
 create table matricula(
id_macricula int auto_increment primary key,
id_aluno int,
id_curso int,
data_matricula date not null,
valor_matricula decimal(7,2) not null,
status_matricula enum ('ativa','concluida','cancelada','trancada') not null,
status_pagamento enum ('pago','pendente','em atraso') not null,
foreign key (id_aluno) references Aluno (id_aluno),
foreign key (id_curso) references Curso (id_curso)
);

create table Turma (
    id_turma int auto_increment primary key,
    id_curso int,
    id_professor int,
    nome_turma varchar(50) not null,
    horario_inicio time not null,
    horario_fim time not null,
    dia_semana varchar(30) not null,      
    data_inicio date not null,
    data_fim date not null,
    vagas_disponiveis int not null,
    foreign key (id_curso) references Curso(id_curso),
    foreign key (id_professor) references Professor(id_professor)
);

create table Aula (
    id_aula int auto_increment primary key,
    id_turma int,
    data_aula date not null,
    conteudo varchar(200) not null,
    status_aula enum('realizada','cancelada','reposicao') not null,
    foreign key (id_turma) references Turma(id_turma)
);
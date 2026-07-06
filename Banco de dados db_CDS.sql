create database db_CDS;
use db_CDS;


create table Artista(
Cod_Art int auto_increment not null primary key,
Nome_Art varchar(100) not null
);

create table Gravadora(
Cod_Grav int auto_increment not null primary key,
Nome_Grav varchar(50) not null
);

create table Categoria(
Cod_Cat int auto_increment not null primary key,
Nome_Cat varchar(50) not null
);

create table Estado(
Sigla_Est char(2) not null primary key,
Nome_Est char(50) not null
);

create table Cidade(
Cod_Cid int auto_increment not null primary key,
Sigla_Est char(2) not null,
nome_Cid varchar(100) not null,
foreign key (Sigla_Est) references Estado (Sigla_Est)
);

create table Cliente(
Cod_Cli int auto_increment not null primary key,
Cod_Cid int not null,
Nome_Cli varchar(100) not null,
End_Cli varchar(200) not null,
Renda_Cli Decimal(10,2) not null check (Renda_Cli >= 0) default 0,
Genero_Cli enum('f','m','outro') not null,
foreign key (Cod_Cid) references Cidade (Cod_Cid)
);


create table Conjuge(
Cod_Cli int auto_increment not null primary key,
Nome_Conj varchar(100)not null,
Renda_Conj decimal(10.2) not null check (Renda_Conj >= 0) default 0,
Genero_Conj enum('f','m','outro') not null,
foreign key (Cod_Cli) references Cliente (Cod_Cli)
);

create table Funcionario(
Cod_Func int auto_increment not null primary key,
Nome_Func varchar(100) not null,
End_Func varchar(200) not null,
Sal_Func decimal(10,2) not null check (Sal_Func >= 0) default 0,
Genero_Func enum('f','m','outro') not null
);

create table Dependente(
Cod_Dep int auto_increment not null primary key,
Cod_Func int not null,
Nome_Dep varchar(100) not null,
Genero_Dep enum('F','M','outro') not null,
foreign key (Cod_Func) references Funcionario (Cod_Func)
);

create table Titulo(
Cod_tit int auto_increment not null primary key,
Cod_Cat int not null,
Cod_Grav int not null,
Nome_CD varchar(100) not null,
Val_CD decimal(10,2) not null check (Val_CD > 0),
Qtd_Estq int not null check (Qtd_Estq >= 0),
foreign key (Cod_Cat) references Categoria (Cod_Cat),
foreign key (Cod_Grav) references Gravadora (Cod_Grav)
);

create table Pedido(
Num_Ped int auto_increment not null primary key,
Cod_Cli int not null,
Cod_Func int not null,
Data_Ped smallint not null,
Val_Ped decimal(10,2) not null check(Val_Ped >=0) default 0,
foreign key (Cod_Cli) references Cliente (Cod_Cli),
foreign key (Cod_Func) references Funcionario (Cod_Func)
); 

create table Titulo_Pedidio(
Num_Ped int not null,
Cod_Tit int not null,
Qtd_CD int not null check (Qtd_CD >= 1),
Val_CD decimal(10,2) not null check (Val_CD > 0),
foreign key  (Num_Ped) references Pedido (Num_Ped),
foreign key (Cod_Tit) references Titulo (Cod_Tit)
);

create table Titulo_Artista(
Cod_Tit int not null,
Cod_Art int not null,
foreign key (Cod_Tit) references Titulo (Cod_Tit),
foreign key (Cod_Art) references Artista (Cod_Art)
);

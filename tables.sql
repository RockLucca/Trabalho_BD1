drop table if exists Prog_Jogo;
drop table if exists DM_Jogo;
drop table if exists DG_Jogo;
drop table if exists Pretendente;
drop table if exists Contratante;
drop table if exists Produtor;
drop table if exists Programador;
drop table if exists Designer_Audio;
drop table if exists Designer_Grafico;
drop table if exists Funcionario;
drop table if exists Jogo_Tem_Plataforma;
drop table if exists DLC;
drop table if exists O_Jogo;
drop table if exists Plataforma;
drop table if exists Estudio;

--------------------------------------------
create table Estudio(
	Id_Estudio integer primary key,
    Nome varchar(100),
    Cidade varchar(200),
    Estado varchar(200),
    Pais varchar(200)
);

--------------------------------------------
create table Plataforma(
    Id integer primary key,
    Nome varchar(100),
    Versao varchar(50),
    Marca varchar(50)
);

--------------------------------------------
create table O_Jogo(
    Id integer primary key,
    Faixa_Etaria integer,
    Nome varchar(100), 
    Edicao varchar(100),
    Genero varchar(20),
    Estudio integer,
    foreign key (Estudio) references Estudio(Id_Estudio) 
);

--------------------------------------------
create table DLC(
    Id_Jogo integer,
    Nome varchar(100),
    Descricao varchar(250),
    foreign key (Id_Jogo) references O_Jogo(Id)
);

--------------------------------------------
create table Jogo_Tem_Plataforma(
	Id_J integer,
    Id_Plat integer,
    primary key (Id_J, Id_Plat),
    foreign key (Id_J) references O_Jogo(Id),
    foreign key (Id_Plat) references Plataforma(Id)
);

--------------------------------------------
create table Funcionario(
    Id integer primary key,
    Idade integer,
    Nome varchar(100),
    Setor varchar(20)
);

--------------------------------------------
create table Designer_Grafico(
    Id integer primary key,
    Especialidade varchar(200),
    Assets varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id)
);

--------------------------------------------
create table Designer_Audio(
    Id integer primary key,
    SoundTrack varchar(100),
    Genero_Jogo varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id)
);

--------------------------------------------
create table Programador(
    Id integer primary key,
    Engine varchar(200),
    Ling_Prog varchar(100),
    Funcao varchar(100),    
    foreign key (Id) references Funcionario(Id)
);

--------------------------------------------
create table Produtor(
    Id integer primary key,
    GDD integer,
    Relatorio varchar(500),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id),
    foreign key (GDD) references O_Jogo(Id) 
);

--------------------------------------------
create table Contratante(
    Id integer primary key,
    foreign key (Id) references Funcionario(Id)
);

--------------------------------------------
create table Pretendente(
    CPF varchar(12) primary key,
    Aval varchar(5),
    Pretencao varchar(100),
    Contratante integer,
    foreign key (Contratante) references Contratante(Id)
);

--------------------------------------------
create table DG_Jogo(
    Id_DG integer,
    Id_Jogo integer,
    foreign key (Id_DG) references Designer_Grafico(Id),
    foreign key (Id_Jogo) references O_Jogo(Id),
    primary key(Id_DG, Id_Jogo)
);

--------------------------------------------
create table DM_Jogo(
    Id_DM integer,
    Id_Jogo integer,
    foreign key (Id_DM) references Designer_Audio(Id),
    foreign key (Id_Jogo) references O_Jogo(Id),
    primary key(Id_DM, Id_Jogo)
);

--------------------------------------------
create table Prog_Jogo(
    Id_Prog integer,
    Id_Jogo integer,
    foreign key (Id_Prog) references Programador(Id),
    foreign key (Id_Jogo) references O_Jogo(Id),
    primary key(Id_Prog, Id_Jogo)
);
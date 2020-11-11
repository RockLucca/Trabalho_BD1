drop table if exists Gerente_Contrata;
drop table if exists Estagiario;
drop table if exists Funcionario_Cria_Jogo;
drop table if exists Gerente;
drop table if exists Programador;
drop table if exists Produtor;
drop table if exists Designer_Audio;
drop table if exists Designer_Grafico;
drop table if exists Funcionario;
drop table if exists Jogo_Tem_Plataforma;
drop table if exists Plataforma;
drop table if exists O_Jogo;
drop table if exists Filial;
drop table if exists Estudio;

create table Estudio(
	Nome varchar(100) primary key,
    Email varchar(100),
    localiz varchar(200)
);

create table Filial(
    Nome varchar(100),
    Email varchar(100),
    localiz varchar(100),
    foreign key (Nome) references Estudio(Nome)
);

create table Plataforma(
    Id integer primary key,
    Nome varchar(100),
    Versao decimal(2,2),
    Marca varchar(100)
);

create table O_Jogo(
    Nome varchar(200) primary key,
    Edicao varchar(100),
    Genero varchar(20)
);

create table Jogo_Tem_Plataforma(
	Nome_J varchar(200),
    Id_Plat integer,
    primary key (Nome_J, Id_Plat),
    foreign key (Nome_J) references O_Jogo(Nome),
    foreign key (Id_Plat) references Plataforma(Id)
);

create table Funcionario(
    Id integer primary key,
    Nome varchar(100),
    Setor varchar(20),
    Salario decimal(10,2)
);

create table Designer_Grafico(
    Id integer primary key,
    Especialidade varchar(200),
    Assets varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id) 
);

create table Designer_Audio(
    Id integer primary key,
    SoundTrack varchar(100),
    Estilo varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id) 
);

create table Programador(
    Id integer primary key,
    Engine varchar(200),
    Ling_Prog varchar(100),
    Funcao varchar(100),    
    foreign key (Id) references Funcionario(Id)    
);

create table Produtor(
    Id integer primary key,
    GDD varchar(200),
    Marketing varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id)
);

create table Gerente(
    Id integer primary key,
    foreign key (Id) references Funcionario(Id)
);

create table Estagiario(
    CPF integer primary key,
    Aval decimal(2,2),
    Pretencao varchar(100)
);

create table Funcionario_Cria_Jogo(
    Id_A integer,
    Id_M integer,
    Id_P integer,
    Id_Pr integer,
    Id_G integer,
    Nome_J varchar(200),
    primary key(Id_A, Id_M, Id_P, Id_Pr, Id_G, Nome_J),
    foreign key (Id_A) references Designer_Grafico(Id),
    foreign key (Id_M) references Designer_Audio(Id),
    foreign key (Id_P) references Produtor(Id),
    foreign key (Id_Pr) references Programador(Id),
    foreign key (Id_G) references Gerente(Id),
    foreign key (Nome_J) references O_Jogo(Nome)
);

create table Gerente_Contrata(
	Id_G integer,
    Cpf integer,
    primary key(Id_G, Cpf),
    foreign key (Id_G) references Gerente(Id),
    foreign key (Cpf) references Estagiario(CPF)
);
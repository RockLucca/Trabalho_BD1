drop table if exists Funcionario_Cria_Jogo;
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
    Nome varchar(100), 
    Edicao varchar(100),
    Genero varchar(20),
    Estudio integer,
    foreign key (Estudio) references Estudio(Id_Estudio) 
);

--------------------------------------------
create table DLC(
    Id_Jogo integer primary key,
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
    Nome varchar(100),
    Setor varchar(20)
);

--------------------------------------------
create table Designer_Grafico(
    Id integer primary key,
    Especialidade varchar(200),
    Assets varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id) on delete cascade
);

--------------------------------------------
create table Designer_Audio(
    Id integer primary key,
    SoundTrack varchar(100),
    Genero_Jogo varchar(100),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id) on delete cascade
);

--------------------------------------------
create table Programador(
    Id integer primary key,
    Engine varchar(200),
    Ling_Prog varchar(100),
    Funcao varchar(100),    
    foreign key (Id) references Funcionario(Id) on delete cascade
);

--------------------------------------------
create table Produtor(
    Id integer primary key,
    GDD integer,
    Relatorio varchar(500),
    Funcao varchar(100),
    foreign key (Id) references Funcionario(Id) on delete cascade,
    foreign key (GDD) references O_Jogo(Id) on delete cascade
);

--------------------------------------------
create table Contratante(
    Id integer primary key,
    foreign key (Id) references Funcionario(Id) on delete cascade
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
create table Funcionario_Cria_Jogo(
    Id_A integer,
    Id_M integer,
    Id_P integer,
    Id_Pr integer,
    Id_G integer,
    Id_J integer,
    foreign key (Id_A) references Designer_Grafico(Id),
    foreign key (Id_M) references Designer_Audio(Id),
    foreign key (Id_P) references Produtor(Id),
    foreign key (Id_Pr) references Programador(Id),
    foreign key (Id_G) references Contratante(Id),
    foreign key (Id_J) references O_Jogo(Id)
);

/*Insere na tabela Estudio*/
insert into Estudio (Id_Estudio, Nome, Cidade, Pais) values 
(26, "Ubisoft", "Montreal", "Canada"), 
(35, "Ubisoft", "Malmo", "Sweden"),
(12, "Ubisoft", "Kyiv", "Ukraine"),
(4, "Ubisoft", "Québec City", "Canada"),
(15, "Ubisoft","Montreuil", "France"),
(13, "Ubisoft","Stockholm", "Sweden"),
(7, "Ubisoft","Düsseldorf", "Germany"),
(3, "Ubisoft","London", "United Kingdom"),
(9, "Ubisoft","Paris", "France"),
(11, "Ubisoft","Lyon", "France");

/*Insere na tabela Plataforma*/
insert into Plataforma (Id, Nome, Versao, Marca) values
(457, "Playstation 5", "Com leitor", "Sony"),
(752, "Playstation 5", "Sem leitor", "Sony"),
(635, "Playstation 4", "Pró", "Sony"),
(368, "Xbox Series X", "Com leitor", "Microsoft"),
(487, "Xbox Series S", "Sem leitor", "Microsoft"),
(952, "Xbox One", "Pró", "Microsoft"),
(852, "Switch", "Lançamento", "Nintendo"),
(157, "Wii U", "Lançamento", "Nintendo"),
(350, "Wii", "Lançamento", "Nintendo"),
(750, "Nintendo 64", "Lançamento", "Nintendo");

/*--Insere na tabela O_Jogo*/
insert into O_Jogo (Id, Nome, Edicao, Genero, Estudio) values
(101, "AC Valhalla", "Basica", "Aventura", 26),
(102, "AC Valhalla", "Premium Edition", "Aventura", 35),
(657, "Rainbow Six", "Basica", "FPS", 4),
(478, "Ghost Racon BP", "Basica", "FPS", 12),
(258, "The Division 2", "Gold Edition", "FPS", 3),
(846, "Watch Dogs", "Basica", "Ação", 11),
(207, "Immortals Fenyx Rising ", "Gold Edition", "Aventura", 7),
(947, "Far Cry 3", "Basica", "FPS", 3),
(353, "Rayman", "Basica", "Aventura", 15),
(959, "The Crew 2", "Premium Edition", "Corrida", 13);

/*Insere na tabela DLC*/
insert into DLC(Id_Jogo, Nome, Descricao) values 
(101, "Expansão de armas", "Adiciona armas novas jogaveis"),
(102, "Expansão de mapa", "Adição de novas areas exploraveis"),
(657, "Novos operador", "Adição de um novo personagem jogavel"),
(478, "Pack de armas", "Adição de novas armas novas e bost de experiencia"),
(846, "Expansão do mapa", "Novas regiões para serem exploradas"),
(353, "Pack de Skins", "Novas skins adicionais"),
(947, "Pack de armas", "Adição de novas armas novas"),
(207, "Novos mundos", "Adição de expanção do mapa com novos locais"),
(258, "Pack de armas", "Adição de novas armas novas e skins"),
(959, "Carros esportivos", "Adição de carros esportivos novos ao jogo");

/*Insere na tabela Jogo_Tem_Plataforma*/
insert into Jogo_Tem_Plataforma(Id_J, Id_Plat) values
(101, 457),
(102, 635),
(657, 487),
(478, 750),
(846, 350),
(353, 157),
(947, 852),
(207, 952),
(258, 368),
(959, 752);

/*Insere na tabela Funcionario*/
insert into Funcionario(Id, Nome, Setor) values
(1, "Carlito", "Contratante"),
(2, "Josefino", "Contratante"),
(3, "Maria", "Contratante"),
(4, "Adalberto", "Contratante"),
(5, "Constantino", "Contratante"),
(6, "Americo", "Contratante"),
(7, "Erika", "Contratante"),
(8, "Suliver", "Contratante"),
(9, "Astolfo", "Contratante"),
(10, "Amelio", "Contratante"),
(11, "Rogerio", "Designer Grafico"),
(12, "Rodrigo", "Designer Grafico"),
(13, "Josefi", "Designer Grafico"),
(14, "Ednaldo", "Designer Grafico"),
(15, "Carlos", "Designer Grafico"),
(16, "Jaime", "Designer Grafico"),
(17, "Jailson", "Designer Grafico"),
(18, "Caue", "Designer Grafico"),
(19, "Richardison", "Designer Grafico"),
(20, "Frederico", "Designer Grafico"),
(21, "Laura", "Designer de audio"),
(22, "Giovana", "Designer de audio"),
(23, "Regina", "Designer de audio"),
(24, "Jose", "Designer de audio"),
(25, "Filomena", "Designer de audio"),
(26, "Rafael", "Designer de audio"),
(27, "Tristan", "Designer de audio"),
(28, "Haru", "Designer de audio"),
(29, "Mariano", "Designer de audio"),
(30, "Marcos", "Designer de audio"),
(31, "Felipe", "Programador"),
(32, "Bruno", "Programador"),
(33, "Juan", "Programador"),
(34, "Lucas", "Programador"),
(35, "Algusto", "Programador"),
(36, "Fernando", "Programador"),
(37, "Fred", "Programador"),
(38, "Fernanda", "Programador"),
(39, "Montesquie", "Programador"),
(40, "Davi", "Programador"),
(41, "Raquel", "Produtor"),
(42, "Joao", "Produtor"),
(43, "David", "Produtor"),
(44, "Pedro", "Produtor"),
(45, "Lucio", "Produtor"),
(46, "Leonardo", "Produtor"),
(47, "Gustavo", "Produtor"),
(48, "Jeferson", "Produtor"),
(49, "Gisele", "Produtor"),
(50, "Mateus", "Produtor");

/*Insere na tabela Designer_Grafico*/
insert into Designer_Grafico(Id, Especialidade, Assets, Funcao) values
(11, "Pixel art", "Construcao", "Supervisor"),
(12, "Pixel art", "Cenario", "Animador"),
(13, "Pixel art", "Ilustração", "Level Design"),
(14, "3D", "Personagem", "Animador"),
(15, "3D", "Cenario", "Level Design"),
(16, "3D", "Personagem", "Supervisor"),
(17, "2D", "Cenario", "Animador"),
(18, "2D", "Ilustração", "Level Design"),
(19, "Desenho a mão", "Contrucao", "Level Design"),
(20, "Desenho a mão", "Personagem", "Animação");

/*Insere na tabela Designer_Audio*/
insert into Designer_Audio(Id, SoundTrack, Genero_Jogo, Funcao) values
(21, "Voz personagem", "Aventura", "Dublador"),
(22, "Voz personagem", "Ação", "Dublador"),
(23, "Instrumental", "FPS",	"Compositor"),
(24, "Cantor",  "Ação", "Compositor"),
(25, "Instrumental", "Ação", "Remixador"),
(26, "Cantor", "Aventura", "Remixador"),
(27, "Sons do mundo", "Aventura", "Sons cenario"),
(28, "Musicas de fundo", "Ação", "Sons cenario"),
(29, "Trilha Sonora", "FPS", "Supervisor"),
(30, "Trilha Sonora", "FPS", "Supervisor");

/*Insere na tabela Programador*/
insert into Programador(Id, Engine, Ling_Prog, Funcao) values
(31, "Unity", "C#", "Supervisor"),
(32, "Unity", "C#", "Prog NPC"),
(33, "Unity", "C#", "Prog IA"),
(34, "Unreal Engine", "C++", "Supervisor"),
(35, "Unreal Engine", "C++", "Prog geral"),
(36, "Unreal Engine", "C++", "Prog IA"),
(37, "Godot", "Phyton", "Supervisor"),
(38, "Godot", "Phyton", "Prog geral"),
(39, "Game  Maker",	"GML", "Supervisor"),
(40, "Game  Maker",	"GML", "Prog geral");

/*Insere na tabela Produtor*/
insert into Produtor(Id, GDD, Relatorio, Funcao) values
(41, 101, "Publicações de marketing sendo realizadas no Youtube e anuncios no Google com grande alcançe", "Marketing"),
(42, 102, "Publicações de marketing sendo realizadas no Youtube com grande alcançe", "Marketing"),
(43, 657, "Publicações de marketing sendo realizadas com anuncios no Google com grande alcançe", "Marketing"),
(44, 478, "Script com falhas em sua time-line, ainda não está pronto para iniciar o projeto", "Roteiro"),
(45, 846, "Script do jogo elaborado e pronto para o desenvolvimento", "Roteiro"),
(46, 353, "Funcionarios trabalhando em excesso, havendo a necessidade de novas contratações", "Supervisor"),
(47, 947, "Funcionarios trabalhando com algumas ausencias no projeto", "Supervisor"),
(48, 207, "Script em estagio final com o desenvolvimento iniciado, ", "Roterista"),
(49, 258, "Publicações de marketing sendo realizadas no Youtube, anuncios no Google e anuncios na televisão com grande alcançe", "Marketing"),
(50, 959, "Funcionarios trabalhando sem problemas no decorrer do projeto", "Supervisor");

/*Insere na tabela Contratante*/
insert into Contratante(Id) values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

/*Insere na tabela Pretendente*/
insert into Pretendente(CPF, Aval, Pretencao, Contratante) values 
("12345678911", "8.5", "Produtor", 6),
("15974652789", "9.3", "Designer Grafico",5),
("15786482764", "6.4", "Designer Audio", 7),
("57893492044", "7.5", "Programador", 2),
("48962630789", "8.2", "Programador", 10),
("75928841022", "9.7", "Programador",9),
("48247169827", "6.8", "Designer Grafico", 8),
("57263694981", "7.0", "Designer Grafico", 4),
("10258764824", "8.3", "Designer Audio", 3),
("75852016943", "8.9", "Produtor", 1);

/*Insere na tabela Funcionario_Cria_Jogo*/
insert into Funcionario_Cria_Jogo(Id_A, Id_M, Id_P, Id_Pr, Id_G, Id_J) values
(11, 24, 41, 31, 1, 101),
(12, 22, 42, 32, 2, 102),
(13, 23, 43, 33, 3, 657),
(14, 24, 44, 34, 4, 478),
(15, 25, 45, 35, 5, 258),
(16, 24, 46, 36, 6, 846),
(17, 27, 47, 37, 7, 207),
(18, 28, 48, 38, 8, 947),
(19, 22, 49, 39, 9, 353),
(20, 30, 50,  40, 10, 959);
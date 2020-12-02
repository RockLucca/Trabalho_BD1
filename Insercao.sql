
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
(157, "Epic Games", "Lançamento", "Nintendo"),
(350, "Steam", "Lançamento", "Nintendo"),
(750, "Nintendo 64", "Lançamento", "Nintendo");

/*--Insere na tabela O_Jogo*/
insert into O_Jogo (Id, Faixa_Etaria, Nome, Edicao, Genero, Estudio) values
(101, 12, "AC Valhalla", "Basica", "Aventura", 26),
(102, 12, "AC Valhalla", "Premium Edition", "Aventura", 35),
(657, 18, "Rainbow Six", "Basica", "FPS", 4),
(478, 18, "Ghost Racon BP", "Basica", "FPS", 12),
(258, 18, "The Division 2", "Gold Edition", "FPS", 3),
(846, 12, "Watch Dogs", "Basica", "Ação", 11),
(207, 3, "Immortals Fenyx Rising ", "Gold Edition", "Aventura", 7),
(947, 18, "Far Cry 3", "Basica", "Aventura", 3),
(353, 3, "Rayman", "Basica", "Aventura", 15),
(959, 3, "The Crew 2", "Premium Edition", "Corrida", 13);

/*Insere na tabela DLC*/
insert into DLC(Id_Jogo, Nome, Descricao) values 
(101, "Expansão de armas", "Adiciona armas novas jogaveis"),
(102, "Expansão de mapa", "Adição de novas areas exploraveis"),
(657, "Novos operador", "Adição de um novo personagem jogavel"),
(657, "Pack de armas", "Adição de novas armas novas e bost de experiencia"),
(846, "Expansão do mapa", "Novas regiões para serem exploradas"),
(353, "Pack de Skins", "Novas skins adicionais"),
(947, "Pack de armas", "Adição de novas armas novas"),
(101, "Novos mundos", "Adição de expanção do mapa com novos locais"),
(258, "Pack de armas", "Adição de novas armas novas e skins"),
(959, "Carros esportivos", "Adição de carros esportivos novos ao jogo");

/*Insere na tabela Jogo_Tem_Plataforma*/
insert into Jogo_Tem_Plataforma(Id_J, Id_Plat) values
(101, 457),
(102, 635),
(657, 487),
(478, 487),
(846, 350),
(353, 157),
(947, 852),
(207, 952),
(258, 368),
(959, 752),
(101, 752),
(101, 368),
(102, 487),
(102, 457),
(102, 952),
(207, 350),
(207, 457),
(353, 350),
(353, 852),
(353, 752),
(258, 752),
(258, 852);


/*Insere na tabela Funcionario*/
insert into Funcionario(Id, Idade, Nome, Setor) values
(1, 50, "Carlito", "Contratante"),
(2, 21, "Josefino", "Contratante"),
(3, 25, "Maria", "Contratante"),
(4, 39, "Adalberto", "Contratante"),
(5, 44, "Constantino", "Contratante"),
(6, 40, "Americo", "Contratante"),
(7, 42, "Erika", "Contratante"),
(8, 21, "Suliver", "Contratante"),
(9, 39, "Astolfo", "Contratante"),
(10, 36, "Amelio", "Contratante"),
(11, 35, "Rogerio", "Designer Grafico"),
(12, 30, "Rodrigo", "Designer Grafico"),
(13, 40, "Josefi", "Designer Grafico"),
(14, 61, "Ednaldo", "Designer Grafico"),
(15, 24, "Carlos", "Designer Grafico"),
(16, 25, "Jaime", "Designer Grafico"),
(17, 19, "Jailson", "Designer Grafico"),
(18, 52, "Caue", "Designer Grafico"),
(19, 36, "Richardison", "Designer Grafico"),
(20, 20, "Frederico", "Designer Grafico"),
(21, 48, "Laura", "Designer de audio"),
(22, 36, "Giovana", "Designer de audio"),
(23, 19, "Regina", "Designer de audio"),
(24, 33, "Jose", "Designer de audio"),
(25, 39, "Filomena", "Designer de audio"),
(26, 60, "Rafael", "Designer de audio"),
(27, 35, "Tristan", "Designer de audio"),
(28, 30, "Haru", "Designer de audio"),
(29, 29, "Mariano", "Designer de audio"),
(30, 23, "Marcos", "Designer de audio"),
(31, 27, "Felipe", "Programador"),
(32, 26, "Bruno", "Programador"),
(33, 26, "Juan", "Programador"),
(34, 25, "Lucas", "Programador"),
(35, 47, "Algusto", "Programador"),
(36, 33, "Fernando", "Programador"),
(37, 34, "Fred", "Programador"),
(38, 22, "Fernanda", "Programador"),
(39, 46, "Montesquie", "Programador"),
(40, 34, "Davi", "Programador"),
(41, 37, "Raquel", "Produtor"),
(42, 48, "Joao", "Produtor"),
(43, 50, "David", "Produtor"),
(44, 22, "Pedro", "Produtor"),
(45, 21, "Lucio", "Produtor"),
(46, 40, "Leonardo", "Produtor"),
(47, 33, "Gustavo", "Produtor"),
(48, 32, "Jeferson", "Produtor"),
(49, 30, "Gisele", "Produtor"),
(50, 45, "Mateus", "Produtor");

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
("15974652789", "4.3", "Designer Grafico", 4),
("15786482764", "6.4", "Designer Audio", 7),
("57893492044", "7.5", "Programador", 2),
("48962630789", "8.2", "Programador", 10),
("75928841022", "9.7", "Programador", 2),
("48247169827", "6.8", "Designer Grafico", 1),
("57263694981", "7.0", "Designer Grafico", 4),
("10258764824", "5.3", "Designer Audio", 3),
("75852016943", "8.9", "Produtor", 2);

/*Insere na tabela DG_Jogo*/
insert into DG_Jogo(Id_DG, Id_Jogo) values
(11, 101),
(20, 101),
(18, 657),
(17, 478),
(17, 258),
(15, 207),
(12, 101),
(11, 657),
(11, 959),
(13, 101);

/*Insere na tabela DM_Jogo*/
insert into DM_Jogo(Id_DM, Id_Jogo) values
(21, 353),
(25, 478),
(26, 959),
(28, 657),
(24, 101),
(23, 102),
(25, 657),
(27, 102),
(21, 947),
(22, 353);

/*Insere na tabela Prog_Jogo*/
insert into Prog_Jogo(Id_Prog, Id_Jogo) values
(32, 258),
(35, 258),
(39, 258),
(33, 353),
(33, 959),
(32, 959),
(37, 478),
(38, 101),
(31, 657),
(31, 102);
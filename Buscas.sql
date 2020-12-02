/*1 - Seleciona os Programadores, Desgners Graficos e Designers de 
audio que não estão em nenhum projeto sem repetições*/
Select distinct DG.Id
From Designer_Grafico as DG
Where DG.Id not in(Select DGJ.Id_DG
                   From DG_Jogo as DGJ)
Union
Select distinct DA.Id
From Designer_Audio as DA
Where DA.Id not in(Select DAJ.Id_DM
                     From DM_Jogo as DAJ)
Union
Select distinct Pr.Id    
From Programador as Pr
Where Pr.Id not in(Select PrJ.Id_Prog
                     From Prog_Jogo as PrJ);

/*2 - Seleciona jogos que estão em mais de 2 plataformas*/
Select distinct JP.Id_J
From Jogo_Tem_Plataforma as JP
Group by JP.Id_J
Having count(JP.Id_J) > 2;

/*3 - Lista o Id de Programadores que estão trabalhando em mais de um jogo*/
Select PJ.Id_Prog
From Prog_Jogo as PJ
Group by Id_Prog
Having count(Id_Prog) > 1;

/*4 - Faz a médias das idades das pessoas que trabalham na 
empresa, divida em grupos dos seus respectivos setores*/
Select F.Setor, AVG(F.Idade)
From Funcionario as F
Group by F.Setor;
                       
/*5 - Pega a media das avaliações referente aos cargos*/
Select P.pretencao, AVG(P.Aval)
FROM Pretendente as P
GROUP BY P.Pretencao;

/*7 - Seleciona a plataforma que não possui nenhum jogo*/
Select P.Id, P.Nome
From Plataforma as P
Where P.Id not in (Select JP.Id_Plat
                    From Jogo_Tem_Plataforma as JP);

/*8 - Seleciona os "level Designers" que não estão em nenhum projeto*/
Select DG.Id
From Designer_Grafico as DG
Where DG.Funcao = 'Level Design'
      and DG.Id in(Select DGJ.Id_DG
                       From DG_Jogo as DGJ);
                       
/*9 - Pega a idade do funcionario mais velho que trabalha como Produtor*/
Select distinct F.Idade
From Funcionario as F
Where F.idade = (Select max(F2.Idade)
                 From Funcionario as F2, DM_Jogo as DMJ
                 Where F2.Id = DMJ.Id_DM);

/*10 - Conta a quantidade de jogos +18 cada genero possui*/
Select J.Genero, count(J.Faixa_Etaria)
From O_Jogo as J 
Where J.Faixa_Etaria = 18
Group by J.Genero






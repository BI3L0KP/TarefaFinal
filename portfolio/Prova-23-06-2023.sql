use prova;

select E.nome, E.Saldo_gols from Equipe E;

select E.nome, U.tipo from Equipe E, Uniforme U 
where U.Tipo ='Titular' and E.estado='MG' and e.tipo='Profissional'
group by nome;


select j.nome, p.posicao from jogador j 
inner join posicao_jogador p 
on  rg = Jogador
where j.naturalidade='Sao Paulo';



select j.nome, j.naturalidade,e.estado,e.nome, p.posicao
 from jogador j
 inner join equipe e on j.idequipe = e.idequipe
 inner join posicao_jogador p on j.rg = p.Jogador;
 

 UPDATE equipe SET Tipo = 'Amador' WHERE (idequipe=4);


insert into cores_uniforme values(5,5);
insert into cores_uniforme values(6,8);


create view viewEquipe as 
select j.nome,e.estado,e.nome as'equipe',e.IdEquipe
 from jogador j
 right join equipe e on j.idequipe = e.idequipe;
 
 select * from viewEquipe;

DROP PROCEDURE IF EXISTS CalculaSaldoGols;
DELIMITER $
CREATE FUNCTION CalculaSaldoGols(IdEquipe INTEGER) RETURNS INT
BEGIN
 DECLARE SaldoGols INT;
 select sum(Gols_Equipe1 - Gols_Equipe2) into SaldoGols  from partida
 where idEquipe = IdEquipe1 or idEquipe = IdEquipe2;

 
 RETURN SaldoGols;
END $
DELIMITER ;

select CalculaSaldoGols(2) from partida






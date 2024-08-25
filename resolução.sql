select Nome, Ano from dbo.Filmes;

select Nome, Ano from dbo.Filmes order by Ano asc;

select Nome, Ano, Duracao from dbo.Filmes where Nome = 'De Volta para o Futuro'; 

select Nome, Ano, Duracao from dbo.Filmes where ano = 1997;

select Nome, Ano, Duracao from dbo.Filmes where ano > 2000;

select Nome, Ano, Duracao from dbo.Filmes where duracao > 100 and  duracao < 150 order by duracao asc;

select Ano, count(Ano) as Quantidade from dbo.Filmes group by Ano order by Quantidade desc;

select Id, PrimeiroNome, UltimoNome, Genero from dbo.Atores where Genero = 'M';

select Id, PrimeiroNome, UltimoNome, Genero from dbo.Atores where Genero = 'F' order by PrimeiroNome;

select f.Nome, g.Genero from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
left join Generos g on fg.IdGenero = g.Id;


select f.Nome, g.Genero from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
left join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mistério';


select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
inner join ElencoFilme ef on ef.IdFilme = f.Id
left join Atores a on a.Id = ef.IdAtor;

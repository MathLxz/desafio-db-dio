-- Task 01
SELECT 
	Nome, Ano 
	FROM Filmes

-- Task 02
SELECT 
	Nome, Ano
FROM Filmes
ORDER BY Ano

-- Task 03
SELECT
	Nome, Ano, Duracao 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Task 04
SELECT
	Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997

-- Task 05
SELECT
	Nome, Ano, Duracao 
FROM Filmes
WHERE Ano > 2000

-- Task 06
SELECT
	Nome, Ano, Duracao 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Task 07
SELECT 
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Task 08
SELECT
PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- Task 09
SELECT
PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Task 10
SELECT
	f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- Task 11
SELECT 
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

-- Task 12
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN	ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN Atores a ON a.Id = ef.IdAtor

--2
SELECT *
FROM Carro
WHERE Disponibilidade = 'Disponível';
--3
SELECT *
FROM Locacao;
--7
SELECT *
FROM Locacao
WHERE Data_Locacao = '2023-05-10';
--8
SELECT Carro.*
FROM Carro
JOIN Locacao ON Carro.Id_Carro = Locacao.Id_Carro
JOIN Cliente ON Cliente.Id_Cliente = Locacao.Id_Cliente
WHERE Cliente.Nome = 'Pedro' AND Cliente.Sobrenome = 'Pereira'
AND Locacao.Data_Locacao BETWEEN '2023-01-01' AND '2023-12-31';
--9
SELECT c.*, carro.*
FROM Cliente c
INNER JOIN Locacao loc ON c.Id_Cliente = loc.Id_Cliente
INNER JOIN Carro carro ON loc.Id_Carro = carro.Id_Carro;
--10
SELECT loc.*, c.*, carro.*
FROM Locacao loc
INNER JOIN Cliente c ON loc.Id_Cliente = c.Id_Cliente
INNER JOIN Carro carro ON loc.Id_Carro = carro.Id_Carro;
--11
SELECT Carro.*, COALESCE(m.Descricao, 'Sem manutenção') AS Informacao_Manutencao
FROM Carro
LEFT JOIN Faz f ON Carro.Id_Carro = f.Id_Carro
LEFT JOIN Manutencao m ON f.Id_Manutencao = m.Id_Manutencao;

--13
SELECT loc.*, c.*, carro.*
FROM Locacao loc
LEFT JOIN Cliente c ON loc.Id_Cliente = c.Id_Cliente
LEFT JOIN Carro carro ON loc.Id_Carro = carro.Id_Carro;


SELECT c.Nome, COUNT(l.Id_Locacao) AS Total_Alugueis
FROM Cliente c
JOIN Locacao l ON c.Id_Cliente = l.Id_Cliente
GROUP BY c.Nome
ORDER BY Total_Alugueis DESC
LIMIT 2;

SELECT SUM(l.Valor_Total) AS Receita_Total
FROM Locacao l
WHERE EXTRACT(MONTH FROM l.Data_Locacao) = 5 AND EXTRACT(YEAR FROM l.Data_Locacao) = 2024;

SELECT c.*
FROM Carro c
LEFT JOIN Locacao l ON c.Id_Carro = l.Id_Carro
WHERE l.Id_Carro IS NULL;

SELECT c.Nome, COUNT(DISTINCT l.Id_Carro) AS Total_Carros_Alugados
FROM Cliente c
JOIN Locacao l ON c.Id_Cliente = l.Id_Cliente
GROUP BY c.Nome
HAVING COUNT(DISTINCT l.Id_Carro) > 1;

SELECT AVG(EXTRACT(DAY FROM AGE(Data_Devolucao, Data_Locacao))) AS Media_Dias_Alugados
FROM Locacao;



























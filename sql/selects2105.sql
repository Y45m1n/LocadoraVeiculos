SELECTS DOS NÃO GRIFADOS

-- 1
SELECT *
FROM Cliente;
-- 2
SELECT *
FROM Carro
WHERE Disponibilidade = 'Disponível';
-- 3
SELECT *
FROM Locacao;
-- 4
SELECT *
FROM Funcionarios;
-- 5
SELECT c.*
FROM Cliente c
JOIN Locacao l ON c.Id_Cliente = l.Id_Cliente
WHERE l.Id_Carro = (SELECT Id_Carro FROM Carro WHERE Modelo = 'Toyota Corolla');
-- 6
SELECT Carro.*
FROM Carro
JOIN Locacao ON Carro.Id_Carro = Locacao.Id_Carro
WHERE Locacao.Id_Cliente = (SELECT Id_Cliente FROM Cliente WHERE Nome = 'Maria' AND Sobrenome = 'Oliveira');

--12
SELECT c.*, loc.*, carro.*
FROM Cliente c
LEFT JOIN Locacao loc ON c.Id_Cliente = loc.Id_Cliente
LEFT JOIN Carro carro ON loc.Id_Carro = carro.Id_Carro;

--14
SELECT L.*, C.Nome AS Nome_Cliente, C.Sobrenome AS Sobrenome_Cliente
FROM Locacao L
LEFT JOIN Cliente C ON L.Id_Cliente = C.Id_Cliente;


















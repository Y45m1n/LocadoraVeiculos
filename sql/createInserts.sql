CREATE TABLE Agencia (
NumeroAgencia INT NOT NULL PRIMARY KEY,
Estado VARCHAR(255) NOT NULL,
Contato VARCHAR(100) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Endereco VARCHAR(100) NOT NULL
)
SELECT *
FROM Agencia;
CREATE TABLE Pagamento (
Data_Pagamento DATE,
Status_Pagamento VARCHAR(100) NOT NULL,
Valor DECIMAL(7,5) NOT NULL,
Forma_Pagamento VARCHAR(100) NOT NULL,
ID_Pagamento INT NOT NULL,
Comprovante VARCHAR(255),
Id_Comprovante INT NOT NULL,
PRIMARY KEY(ID_Pagamento,Id_Comprovante)
)
SELECT *
FROM Pagamento;
CREATE TABLE Funcionarios (
Data_Contratacao DATE NOT NULL,
Sobrenome VARCHAR(255) NOT NULL,
Salario DECIMAL(7,5) NOT NULL,
Cargo VARCHAR(255) NOT NULL,
Nome VARCHAR(255) NOT NULL,
Id_Funcionario INT NOT NULL PRIMARY KEY,
NumeroAgencia INT NOT NULL,
FOREIGN KEY(NumeroAgencia) REFERENCES Agencia (NumeroAgencia)
)
SELECT *
FROM Funcionarios;
CREATE TABLE Carro (
Placa VARCHAR(255) NOT NULL,
Tipo VARCHAR(255) NOT NULL,
Disponibilidade VARCHAR(255) NOT NULL,
Ano INT NOT NULL,
Modelo VARCHAR(50) NOT NULL,
Valor INT NOT NULL,
Id_Carro SERIAL  PRIMARY KEY

)
SELECT *
FROM Carro;
CREATE TABLE Manutencao (
    KM DECIMAL(7),
    Id_Manutencao INT NOT NULL PRIMARY KEY,
    Descricao VARCHAR(255),
    Data_Manutencao DATE NOT NULL,
    Custo DECIMAL(7) NOT NULL,
    Tipo_Manutencao VARCHAR(255) NOT NULL
);



SELECT *
FROM Manutencao;
CREATE TABLE Feedback (
Data_Feedback DATE,
Id_Feedback INT NOT NULL PRIMARY KEY,
Avaliacao INT,
Comentario VARCHAR(255)
)
SELECT *
FROM Feedback;
CREATE TABLE Cliente (
    Sobrenome VARCHAR(255) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    Estado VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
   Id SERIAL PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Celular VARCHAR(15) NOT NULL,
    ID_Pagamento INT NOT NULL,
    Id_Comprovante INT NOT NULL, -- Adicionando o campo Id_Comprovante
    FOREIGN KEY(ID_Pagamento, Id_Comprovante) REFERENCES Pagamento (ID_Pagamento, Id_Comprovante)
);

SELECT *
FROM Cliente;

CREATE TABLE Locacao (
Id_Locacao SERIAL PRIMARY KEY,
Data_Devolucao DATE NOT NULL,
Data_Locacao DATE NOT NULL,
Valor_Total DECIMAL(7,2)  NOT NULL,
Id_Carro INT NOT NULL ,
Email VARCHAR(255) NOT NULL,
FOREIGN KEY(Id_Carro) REFERENCES Carro (Id_Carro),

)
SELECT *
FROM Locacao;
CREATE TABLE Faz (
Id_Carro INT NOT NULL ,
Id_Manutencao INT NOT NULL,
FOREIGN KEY(Id_Carro) REFERENCES Carro (Id_Carro),
FOREIGN KEY(Id_Manutencao) REFERENCES Manutencao (Id_Manutencao)
)
SELECT *
FROM Faz;
CREATE TABLE Registra (
Id_Feedback INT NOT NULL,
Id_Cliente INT NOT NULL,
FOREIGN KEY(Id_Feedback) REFERENCES Feedback (Id_Feedback),
FOREIGN KEY(Id_Cliente) REFERENCES Cliente (Id_Cliente)
)
SELECT *
FROM Registra;

CREATE TABLE Devolucao (
    Id_Devolucao SERIAL PRIMARY KEY,
    Data_Devolucao DATE NOT NULL,
    Condicao_Veiculo VARCHAR(255) NOT NULL,
    Custos_Adicionais DECIMAL(7,2),
    Id_Locacao INT NOT NULL,
    FOREIGN KEY (Id_Locacao) REFERENCES Locacao(Id_Locacao)
);

CREATE TABLE Seguro (
    Id_Seguro SERIAL PRIMARY KEY,
    Seguradora VARCHAR(255) NOT NULL,
    Tipo_Seguro VARCHAR(100) NOT NULL,
    Cobertura TEXT,
    Valor_Premio DECIMAL(7,2),
    Id_Carro INT NOT NULL,
    FOREIGN KEY (Id_Carro) REFERENCES Carro(Id_Carro)
);



INSERT INTO Agencia (NumeroAgencia, Estado, Contato, Cidade, Endereco) VALUES
(1, 'São Paulo', 'João Silva', 'São Paulo', 'Rua A, 123'),
(2, 'Rio de Janeiro', 'Maria Santos', 'Rio de Janeiro', 'Avenida B, 456'),
(3, 'Minas Gerais', 'Pedro Oliveira', 'Belo Horizonte', 'Rua C, 789'),
(4, 'Bahia', 'Ana Souza', 'Salvador', 'Rua D, 321'),
(5, 'Paraná', 'José Pereira', 'Curitiba', 'Avenida E, 654'),
(6, 'Santa Catarina', 'Carlos Ferreira', 'Florianópolis', 'Rua F, 987'),
(7, 'Pernambuco', 'Mariana Costa', 'Recife', 'Avenida G, 123'),
(8, 'Ceará', 'Paulo Rocha', 'Fortaleza', 'Rua H, 456'),
(9, 'Goiás', 'Fernanda Lima', 'Goiânia', 'Avenida I, 789'),
(10, 'Rio Grande do Sul', 'Luiz Oliveira', 'Porto Alegre', 'Rua J, 321');



INSERT INTO Pagamento (Data_Pagamento, Status_Pagamento, Valor, Forma_Pagamento, ID_Pagamento, Comprovante, Id_Comprovante) VALUES
('2024-05-01', 'Aprovado', 10.50, 'Cartão de Crédito', 1, 'comprovante1.jpg', 1),
('2024-05-02', 'Aprovado', 15.75, 'Boleto Bancário', 2, 'comprovante2.jpg', 2),
('2024-05-03', 'Pendente', 8.25, 'Transferência Bancária', 3, 'comprovante3.jpg', 3),
('2024-05-04', 'Aprovado', 20.00, 'Cartão de Débito', 4, 'comprovante4.jpg', 4),
('2024-05-05', 'Aprovado', 12.00, 'Pix', 5, 'comprovante5.jpg', 5),
('2024-05-06', 'Pendente', 9.75, 'Boleto Bancário', 6, 'comprovante6.jpg', 6),
('2024-05-07', 'Aprovado', 18.30, 'Cartão de Crédito', 7, 'comprovante7.jpg', 7),
('2024-05-08', 'Aprovado', 25.45, 'Transferência Bancária', 8, 'comprovante8.jpg', 8),
('2024-05-09', 'Pendente', 7.20, 'Pix', 9, 'comprovante9.jpg', 9),
('2024-05-10', 'Aprovado', 30.00, 'Cartão de Débito', 10, 'comprovante10.jpg', 10);

INSERT INTO Funcionarios (Data_Contratacao, Sobrenome, Salario, Cargo, Nome, Id_Funcionario, NumeroAgencia) VALUES
('2020-01-15', 'Silva', 30.00, 'Gerente', 'João', 1, 1),
('2021-03-20', 'Santos', 25.00, 'Atendente', 'Maria', 2, 2),
('2019-07-10', 'Oliveira', 28.00, 'Gerente', 'Pedro', 3, 3),
('2023-05-05', 'Souza', 22.00, 'Atendente', 'Ana', 4, 4),
('2022-11-18', 'Pereira', 27.00, 'Gerente', 'José', 5, 5),
('2020-09-25', 'Ferreira', 24.00, 'Atendente', 'Carlos', 6, 6),
('2021-12-30', 'Costa', 26.00, 'Gerente', 'Mariana', 7, 7),
('2018-08-12', 'Rocha', 32.00, 'Gerente', 'Paulo', 8, 8),
('2017-04-03', 'Lima', 35.00, 'Gerente', 'Fernanda', 9, 9),
('2016-10-21', 'Oliveira', 29.00, 'Atendente', 'Luiz', 10, 10);



INSERT INTO Carro (Placa, Tipo, Disponibilidade, Ano, Modelo, Id_Carro) VALUES
('ABC1234', 'Sedan', 'Disponível', 2020, 'Toyota Corolla', 1),
('DEF5678', 'SUV', 'Disponível', 2019, 'Honda CR-V', 2),
('GHI9012', 'Hatchback', 'Indisponível', 2018, 'Volkswagen Golf', 3),
('JKL3456', 'SUV', 'Disponível', 2021, 'Ford Explorer', 4),
('MNO7890', 'Caminhonete', 'Indisponível', 2017, 'Chevrolet S10', 5),
('PQR1234', 'Sedan', 'Disponível', 2019, 'Nissan Sentra', 6),
('STU5678', 'Hatchback', 'Indisponível', 2020, 'Hyundai HB20', 7),
('VWX9012', 'Sedan', 'Disponível', 2018, 'Kia Cerato', 8),
('YZA3456', 'Caminhonete', 'Disponível', 2022, 'Mitsubishi L200', 9),
('BCD7890', 'SUV', 'Indisponível', 2016, 'Jeep Renegade', 10);

INSERT INTO Manutencao (KM, Id_Manutencao, Descricao, Data_Manutencao, Custo, Tipo_Manutencao) VALUES 
(15000.25, 1, 'Troca de óleo e filtro', '2023-03-10', 150.75, 'Preventiva'),
(22000.50, 2, 'Substituição das pastilhas de freio', '2023-07-15', 280.00, 'Corretiva'),
(18000.75, 3, 'Revisão geral', '2022-12-20', 350.25, 'Preventiva'),
(30000.00, 4, 'Troca de pneus', '2023-01-05', 800.50, 'Corretiva'),
(25000.80, 5, 'Reparo do sistema elétrico', '2023-04-28', 420.75, 'Corretiva'),
(28000.60, 6, 'Revisão de motor', '2023-08-10', 600.80, 'Preventiva'),
(17000.90, 7, 'Substituição de filtro de ar', '2023-06-12', 120.30, 'Corretiva'),
(21000.40, 8, 'Troca de correias', '2023-02-25', 250.60, 'Corretiva'),
(29000.70, 9, 'Reparo de sistema de ar condicionado', '2023-05-20', 380.40, 'Corretiva'),
(26000.50, 10, 'Revisão de suspensão', '2023-09-05', 550.25, 'Preventiva');

SELECT *
FROM Manutencao;

INSERT INTO Feedback (Data_Feedback, Id_Feedback, Avaliacao, Comentario) VALUES
('2023-01-10', 1, 5, 'Excelente serviço! Recomendo.'),
('2023-03-20', 2, 4, 'Atendimento rápido e eficiente.'),
('2023-05-15', 3, 3, 'Poderia melhorar a pontualidade na entrega.'),
('2023-07-30', 4, 5, 'Muito satisfeito com o carro alugado.'),
('2023-09-25', 5, 2, 'Carro com problemas mecânicos.'),
('2024-01-10', 6, 5, 'Profissionais educados e prestativos.'),
('2024-03-20', 7, 4, 'Boa variedade de veículos disponíveis.'),
('2024-05-15', 8, 3, 'Demorou para resolver um problema de reserva.'),
('2024-07-30', 9, 5, 'Ótima experiência de aluguel.'),
('2024-09-25', 10, 4, 'Preço justo e bom atendimento.');

INSERT INTO Cliente (Sobrenome, Nome, Cidade, Estado, Endereco, Id_Cliente, Email, Celular, ID_Pagamento, Id_Comprovante) VALUES
('Silva', 'Carlos', 'São Paulo', 'SP', 'Rua A, 123', 1, 'carlos@email.com', '999999999', 1, 1),
('Santos', 'Ana', 'Rio de Janeiro', 'RJ', 'Av. B, 456', 2, 'ana@email.com', '888888888', 2, 2),
('Oliveira', 'Maria', 'Belo Horizonte', 'MG', 'Rua C, 789', 3, 'maria@email.com', '777777777', 3, 3),
('Pereira', 'Pedro', 'Salvador', 'BA', 'Av. D, 101', 4, 'pedro@email.com', '666666666', 4, 4),
('Rodrigues', 'Juliana', 'Porto Alegre', 'RS', 'Rua E, 202', 5, 'juliana@email.com', '555555555', 5, 5),
('Ferreira', 'José', 'Curitiba', 'PR', 'Av. F, 303', 6, 'jose@email.com', '444444444', 6, 6),
('Almeida', 'Fernanda', 'Fortaleza', 'CE', 'Rua G, 404', 7, 'fernanda@email.com', '333333333', 7, 7),
('Costa', 'Mariana', 'Recife', 'PE', 'Av. H, 505', 8, 'mariana@email.com', '222222222', 8, 8),
('Gomes', 'Luiz', 'Brasília', 'DF', 'Rua I, 606', 9, 'luiz@email.com', '111111111', 9, 9),
('Martins', 'Paula', 'Manaus', 'AM', 'Av. J, 707', 10, 'paula@email.com', '000000000', 10, 10);

INSERT INTO Locacao (Id_Locacao, Data_Devolucao, Data_Locacao, Valor_Total, Id_Carro, Id_Cliente) VALUES
(1, '2023-01-10', '2023-01-05', 250.00, 1, 1),
(2, '2023-03-20', '2023-03-15', 300.00, 2, 2),
(3, '2023-05-15', '2023-05-10', 200.00, 3, 3),
(4, '2023-07-30', '2023-07-25', 350.00, 4, 4),
(5, '2023-09-25', '2023-09-20', 280.00, 5, 5),
(6, '2024-01-10', '2024-01-05', 400.00, 6, 6),
(7, '2024-03-20', '2024-03-15', 320.00, 7, 7),
(8, '2024-05-15', '2024-05-10', 270.00, 8, 8),
(9, '2024-07-30', '2024-07-25', 380.00, 9, 9),
(10, '2024-09-25', '2024-09-20', 290.00, 10, 10);


INSERT INTO Faz (Id_Carro, Id_Manutencao) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Devolucao (Data_Devolucao, Condicao_Veiculo, Custos_Adicionais, Id_Locacao) VALUES
('2024-05-15', 'Boa condição', NULL, 8),
('2024-05-20', 'Arranhões na pintura', 50.00, 9),
('2024-05-25', 'Danos no para-choque dianteiro', 100.00, 10);

INSERT INTO Seguro (Seguradora, Tipo_Seguro, Cobertura, Valor_Premio, Id_Carro) VALUES
('Seguradora Porto', 'Seguro Total', 'Cobre danos materiais e pessoais', 1500.00, 1),
('Seguradora Vivo', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 800.00, 2),
('Seguradora ok', 'Seguro Total', 'Cobre roubo e furto', 1800.00, 3);























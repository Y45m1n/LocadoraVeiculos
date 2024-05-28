INSERT INTO Agencia (NumeroAgencia, Estado, Contato, Cidade, Endereco)
VALUES
(11, 'São Paulo', 'João Silva', 'São Paulo', 'Rua A, 123'),
(12, 'Rio de Janeiro', 'Maria Santos', 'Rio de Janeiro', 'Avenida B, 456'),
(13, 'Minas Gerais', 'José Oliveira', 'Belo Horizonte', 'Rua C, 789'),
(14, 'Bahia', 'Ana Souza', 'Salvador', 'Avenida D, 987'),
(15, 'Santa Catarina', 'Pedro Costa', 'Florianópolis', 'Rua E, 654'),
(16, 'Paraná', 'Mariana Santos', 'Curitiba', 'Avenida F, 321'),
(17, 'Pernambuco', 'Lucas Lima', 'Recife', 'Rua G, 987'),
(18, 'Ceará', 'Carla Oliveira', 'Fortaleza', 'Avenida H, 654'),
(19, 'Amazonas', 'Mateus Pereira', 'Manaus', 'Rua I, 321'),
(20, 'Goiás', 'Camila Costa', 'Goiânia', 'Avenida J, 987');

INSERT INTO Carro (Placa, Tipo, Disponibilidade, Ano, Modelo, Id_Carro)
VALUES
('ABC1234', 'Sedan', 'Disponível', 2022, 'Toyota Corolla', 11),
('DEF5678', 'SUV', 'Disponível', 2021, 'Honda CR-V', 12),
('GHI9012', 'Hatchback', 'Disponível', 2020, 'Volkswagen Gol', 13),
('JKL3456', 'Sedan', 'Disponível', 2023, 'Chevrolet Cruze', 14),
('MNO7890', 'SUV', 'Disponível', 2022, 'Ford EcoSport', 15),
('PQR1234', 'Hatchback', 'Disponível', 2021, 'Renault Kwid', 16),
('STU5678', 'Sedan', 'Disponível', 2020, 'Hyundai HB20S', 17),
('VWX9012', 'SUV', 'Disponível', 2019, 'Nissan Kicks', 18),
('YZA3456', 'Hatchback', 'Disponível', 2018, 'Fiat Argo', 19),
('BCD7890', 'Sedan', 'Disponível', 2017, 'Volkswagen Virtus', 20);

INSERT INTO Cliente (Sobrenome, Nome, Cidade, Estado, Endereco, Id_Cliente, Email, Celular, ID_Pagamento, Id_Comprovante)
VALUES
('Silva', 'Carlos', 'São Paulo', 'SP', 'Rua A, 123', 11, 'carlos@gmail.com', '(11) 9999-9999', 11, 11),
('Santos', 'Ana', 'Rio de Janeiro', 'RJ', 'Avenida B, 456', 12, 'ana@gmail.com', '(21) 8888-8888', 12, 12),
('Oliveira', 'José', 'Belo Horizonte', 'MG', 'Rua C, 789', 13, 'jose@gmail.com', '(31) 7777-7777', 13, 13),
('Souza', 'Fernanda', 'Salvador', 'BA', 'Avenida D, 987', 14, 'fernanda@gmail.com', '(71) 6666-6666', 14, 14),
('Costa', 'Marcela', 'Florianópolis', 'SC', 'Rua E, 654', 15, 'marcela@gmail.com', '(48) 5555-5555', 15, 15),
('Pereira', 'Paulo', 'Curitiba', 'PR', 'Avenida F, 321', 16, 'paulo@gmail.com', '(41) 4444-4444', 16, 16),
('Lima', 'Carolina', 'Recife', 'PE', 'Rua G, 987', 17, 'carolina@gmail.com', '(81) 3333-3333', 17, 17),
('Gomes', 'Lucas', 'Fortaleza', 'CE', 'Avenida H, 654', 18, 'lucas@gmail.com', '(85) 2222-2222', 18, 18),
('Almeida', 'Mariana', 'Manaus', 'AM', 'Rua I, 321', 19, 'mariana@gmail.com', '(92) 1111-1111', 19, 19),
('Nunes', 'Felipe', 'Goiânia', 'GO', 'Avenida J, 987', 20, 'felipe@gmail.com', '(62) 0000-0000', 20, 20);

INSERT INTO Pagamento (Data_Pagamento, Status_Pagamento, Valor, Forma_Pagamento, ID_Pagamento, Comprovante, Id_Comprovante)
VALUES
('2024-05-11', 'Aprovado', 17.50, 'Cartão de Crédito', 11, 'comprovante11.jpg', 11),
('2024-05-12', 'Pendente', 22.75, 'Boleto Bancário', 12, 'comprovante12.jpg', 12),
('2024-05-13', 'Aprovado', 11.25, 'Transferência Bancária', 13, 'comprovante13.jpg', 13),
('2024-05-14', 'Pendente', 30.00, 'Pix', 14, 'comprovante14.jpg', 14),
('2024-05-15', 'Aprovado', 19.00, 'Cartão de Débito', 15, 'comprovante15.jpg', 15),
('2024-05-16', 'Aprovado', 16.75, 'Boleto Bancário', 16, 'comprovante16.jpg', 16),
('2024-05-17', 'Pendente', 28.30, 'Cartão de Crédito', 17, 'comprovante17.jpg', 17),
('2024-05-18', 'Aprovado', 35.45, 'Transferência Bancária', 18, 'comprovante18.jpg', 18),
('2024-05-19', 'Aprovado', 9.20, 'Pix', 19, 'comprovante19.jpg', 19),
('2024-05-20', 'Pendente', 25.00, 'Cartão de Débito', 20, 'comprovante20.jpg', 20);

INSERT INTO Devolucao (Data_Devolucao, Condicao_Veiculo, Custos_Adicionais, Id_Locacao)
VALUES
('2024-05-30', 'Sem problemas', NULL, 11),
('2024-06-05', 'Arranhões leves na lateral', 30.00, 12),
('2024-06-10', 'Amassado na porta traseira', 80.00, 13),
('2024-06-15', 'Pequeno trinco no para-brisa', 20.00, 14),
('2024-06-20', 'Sem problemas', NULL, 15),
('2024-06-25', 'Arranhões na parte traseira', 40.00, 16),
('2024-07-01', 'Danos na roda dianteira direita', 60.00, 17),
('2024-07-05', 'Sem problemas', NULL, 18),
('2024-07-10', 'Arranhões no capô', 50.00, 19),
('2024-07-15', 'Sem problemas', NULL, 20);

INSERT INTO Faz (Id_Carro, Id_Manutencao)
VALUES
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

INSERT INTO Feedback (Data_Feedback, Id_Feedback, Avaliacao, Comentario)
VALUES
('2024-11-10', 11, 5, 'Atendimento impecável, com certeza alugarei novamente.'),
('2024-12-20', 12, 4, 'Carro em boas condições, processo de locação rápido.'),
('2025-01-15', 13, 3, 'Faltou transparência nas taxas adicionais.'),
('2025-02-10', 14, 5, 'Experiência de aluguel excepcional.'),
('2025-03-25', 15, 2, 'Problemas com a limpeza do veículo.'),
('2025-04-10', 16, 5, 'Tudo perfeito, sem reclamações.'),
('2025-05-20', 17, 4, 'Facilidade na devolução do veículo.'),
('2025-06-15', 18, 3, 'Demora no processo de retirada do carro.'),
('2025-07-30', 19, 5, 'Altamente recomendado, serviço de qualidade.'),
('2025-08-25', 20, 4, 'Bom custo-benefício, voltarei a alugar com eles.');

INSERT INTO Funcionarios (Data_Contratacao, Sobrenome, Salario, Cargo, Nome, Id_Funcionario, NumeroAgencia) 
VALUES
('2023-08-15', 'Almeida', 31.00, 'Gerente', 'Amanda', 11, 1),
('2024-01-20', 'Martins', 26.50, 'Atendente', 'Luciana', 12, 2),
('2023-11-10', 'Rodrigues', 28.00, 'Gerente', 'Diego', 13, 3),
('2024-03-05', 'Carvalho', 23.50, 'Atendente', 'Patricia', 14, 4),
('2023-09-18', 'Fernandes', 29.00, 'Gerente', 'Roberto', 15, 5),
('2024-05-25', 'Gonçalves', 25.00, 'Atendente', 'Camila', 16, 6),
('2023-12-30', 'Barbosa', 27.50, 'Gerente', 'Eduardo', 17, 7),
('2024-07-12', 'Araujo', 33.00, 'Gerente', 'Isabela', 18, 8),
('2023-03-23', 'Cardoso', 36.00, 'Gerente', 'Ricardo', 19, 9),
('2024-09-10', 'Melo', 30.00, 'Atendente', 'Ana', 20, 10);

INSERT INTO Locacao (Id_Locacao, Data_Devolucao, Data_Locacao, Valor_Total, Id_Carro, Id_Cliente)
VALUES
(11, '2025-01-10', '2025-01-05', 260.00, 11, 11),
(12, '2025-03-20', '2025-03-15', 310.00, 12, 12),
(13, '2025-05-15', '2025-05-10', 220.00, 13, 13),
(14, '2025-07-30', '2025-07-25', 360.00, 14, 14),
(15, '2025-09-25', '2025-09-20', 290.00, 15, 15),
(16, '2026-01-10', '2026-01-05', 420.00, 16, 16),
(17, '2026-03-20', '2026-03-15', 330.00, 17, 17),
(18, '2026-05-15', '2026-05-10', 280.00, 18, 18),
(19, '2026-07-30', '2026-07-25', 390.00, 19, 19),
(20, '2026-09-25', '2026-09-20', 300.00, 20, 20);

INSERT INTO Manutencao (KM, Id_Manutencao, Descricao, Data_Manutencao, Custo, Tipo_Manutencao)
VALUES 
(25000.25, 11, 'Troca de óleo e filtro', '2025-03-10', 160.75, 'Preventiva'),
(32000.50, 12, 'Substituição das pastilhas de freio', '2025-07-15', 290.00, 'Corretiva'),
(28000.75, 13, 'Revisão geral', '2025-12-20', 400.25, 'Preventiva'),
(37000.00, 14, 'Troca de pneus', '2025-01-05', 850.50, 'Corretiva'),
(33000.80, 15, 'Reparo do sistema elétrico', '2025-04-28', 450.75, 'Corretiva'),
(36000.60, 16, 'Revisão de motor', '2025-08-10', 650.80, 'Preventiva'),
(25000.90, 17, 'Substituição de filtro de ar', '2025-06-12', 130.30, 'Corretiva'),
(29000.40, 18, 'Troca de correias', '2025-02-25', 270.60, 'Corretiva'),
(37000.70, 19, 'Reparo de sistema de ar condicionado', '2025-05-20', 400.40, 'Corretiva'),
(34000.50, 20, 'Revisão de suspensão', '2025-09-05', 600.25, 'Preventiva');

INSERT INTO Seguro (Seguradora, Tipo_Seguro, Cobertura, Valor_Premio, Id_Carro)
VALUES
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 1700.00, 4),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1000.00, 5),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2000.00, 6),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1600.00, 7),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 900.00, 8),
('Seguradora Liberty Seguros', 'Seguro Total', 'Cobre roubo e furto', 1900.00, 9),
('Seguradora Zurich', 'Seguro Total', 'Cobre danos materiais e pessoais', 1800.00, 10),
('Seguradora HDI', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 950.00, 11),
('Seguradora Sompo Seguros', 'Seguro Total', 'Cobre roubo e furto', 2100.00, 12),
('Seguradora Mitsui Sumitomo', 'Seguro Total', 'Cobre danos materiais e pessoais', 1750.00, 13);

-- 2 insert
INSERT INTO Agencia (NumeroAgencia, Estado, Contato, Cidade, Endereco)
VALUES
(21, 'Rio Grande do Sul', 'Fernando Oliveira', 'Porto Alegre', 'Rua K, 123'),
(22, 'Distrito Federal', 'Laura Santos', 'Brasília', 'Avenida L, 456'),
(23, 'Espírito Santo', 'Rodrigo Almeida', 'Vitória', 'Rua M, 789'),
(24, 'Mato Grosso', 'Patrícia Costa', 'Cuiabá', 'Avenida N, 987'),
(25, 'Alagoas', 'Gabriel Souza', 'Maceió', 'Rua O, 654'),
(26, 'Amapá', 'Luana Oliveira', 'Macapá', 'Avenida P, 321'),
(27, 'Paraíba', 'Rafael Silva', 'João Pessoa', 'Rua Q, 987'),
(28, 'Rondônia', 'Isabela Santos', 'Porto Velho', 'Avenida R, 654'),
(29, 'Roraima', 'Matheus Costa', 'Boa Vista', 'Rua S, 321'),
(30, 'Tocantins', 'Carolina Almeida', 'Palmas', 'Avenida T, 987'),
(31, 'Sergipe', 'Lucas Oliveira', 'Aracaju', 'Rua U, 654'),
(32, 'Piauí', 'Aline Souza', 'Teresina', 'Avenida V, 321'),
(33, 'Mato Grosso do Sul', 'Daniel Santos', 'Campo Grande', 'Rua W, 987'),
(34, 'Acre', 'Juliana Lima', 'Rio Branco', 'Avenida X, 654'),
(35, 'Maranhão', 'Felipe Costa', 'São Luís', 'Rua Y, 321');

INSERT INTO Carro (Placa, Tipo, Disponibilidade, Ano, Modelo, Id_Carro)
VALUES
('EFG1234', 'Sedan', 'Disponível', 2022, 'Hyundai Elantra', 21),
('HIJ5678', 'SUV', 'Disponível', 2021, 'Kia Sportage', 22),
('KLM9012', 'Hatchback', 'Disponível', 2020, 'Chevrolet Onix', 23),
('NOP3456', 'Sedan', 'Disponível', 2023, 'Honda Civic', 24),
('QRS7890', 'SUV', 'Disponível', 2022, 'Jeep Compass', 25),
('TUV1234', 'Hatchback', 'Disponível', 2021, 'Toyota Yaris', 26),
('VWX5678', 'Sedan', 'Disponível', 2020, 'Ford Fusion', 27),
('YZA9012', 'SUV', 'Disponível', 2019, 'Mitsubishi Outlander', 28),
('BCD3456', 'Hatchback', 'Disponível', 2018, 'Citroen C3', 29),
('CDE7890', 'Sedan', 'Disponível', 2017, 'Peugeot 308', 30),
('EFG1235', 'SUV', 'Disponível', 2016, 'Subaru Forester', 31),
('HIJ5679', 'Hatchback', 'Disponível', 2015, 'Mazda 3', 32),
('KLM9013', 'Sedan', 'Disponível', 2014, 'Volvo S60', 33),
('NOP3457', 'SUV', 'Disponível', 2013, 'Land Rover Discovery', 34),
('QRS7891', 'Hatchback', 'Disponível', 2012, 'BMW Série 1', 35);

INSERT INTO Cliente (Sobrenome, Nome, Cidade, Estado, Endereco, Id_Cliente, Email, Celular, ID_Pagamento, Id_Comprovante)
VALUES
('Ferreira', 'Mariana', 'Porto Alegre', 'RS', 'Rua L, 246', 21, 'marianaferreira@gmail.com', '(51) 1234-5678', 21, 21),
('Machado', 'Pedro', 'Brasília', 'DF', 'Avenida M, 369', 22, 'pedromachado@gmail.com', '(61) 9876-5432', 22, 22),
('Lopes', 'Juliana', 'Vitória', 'ES', 'Rua N, 135', 23, 'julianalopes@gmail.com', '(27) 4567-8901', 23, 23),
('Carvalho', 'Rafael', 'João Pessoa', 'PB', 'Avenida O, 468', 24, 'rafaelcarvalho@gmail.com', '(83) 3456-7890', 24, 24),
('Santana', 'Aline', 'Porto Velho', 'RO', 'Rua P, 579', 25, 'alinesantana@gmail.com', '(69) 2109-8765', 25, 25),
('Ferreira', 'Lucas', 'Cuiabá', 'MT', 'Avenida Q, 753', 26, 'lucasferreira@gmail.com', '(65) 9876-1234', 26, 26),
('Garcia', 'Isabela', 'Teresina', 'PI', 'Rua R, 852', 27, 'isabelagarcia@gmail.com', '(86) 2345-6789', 27, 27),
('Santos', 'Gabriel', 'Campo Grande', 'MS', 'Avenida S, 147', 28, 'gabrielsantos@gmail.com', '(67) 8765-4321', 28, 28),
('Lima', 'Tatiane', 'Palmas', 'TO', 'Rua T, 369', 29, 'tatianelima@gmail.com', '(63) 3210-9876', 29, 29),
('Costa', 'Luciana', 'Macapá', 'AP', 'Avenida U, 258', 30, 'lucianacosta@gmail.com', '(96) 6543-2109', 30, 30),
('Vieira', 'Bruno', 'Boa Vista', 'RR', 'Rua V, 741', 31, 'brunovieira@gmail.com', '(95) 1098-7654', 31, 31),
('Fernandes', 'Camila', 'Rio Branco', 'AC', 'Avenida W, 951', 32, 'camilafernandes@gmail.com', '(68) 8765-4321', 32, 32),
('Oliveira', 'Vinícius', 'Natal', 'RN', 'Rua X, 753', 33, 'viniciusoliveira@gmail.com', '(84) 2345-6789', 33, 33),
('Silva', 'Carolina', 'Aracaju', 'SE', 'Avenida Y, 456', 34, 'carolinasilva@gmail.com', '(79) 7654-3210', 34, 34),
('Moraes', 'Daniel', 'São Luís', 'MA', 'Rua Z, 852', 35, 'danilmoraes@gmail.com', '(98) 3210-9876', 35, 35);


INSERT INTO Pagamento (Data_Pagamento, Status_Pagamento, Valor, Forma_Pagamento, ID_Pagamento, Comprovante, Id_Comprovante)
VALUES
('2024-06-01', 'Pendente', 18.50, 'Cartão de Crédito', 21, 'comprovante21.jpg', 21),
('2024-06-02', 'Aprovado', 21.75, 'Boleto Bancário', 22, 'comprovante22.jpg', 22),
('2024-06-03', 'Pendente', 12.25, 'Transferência Bancária', 23, 'comprovante23.jpg', 23),
('2024-06-04', 'Aprovado', 29.00, 'Pix', 24, 'comprovante24.jpg', 24),
('2024-06-05', 'Aprovado', 21.00, 'Cartão de Débito', 25, 'comprovante25.jpg', 25),
('2024-06-06', 'Pendente', 19.75, 'Boleto Bancário', 26, 'comprovante26.jpg', 26),
('2024-06-07', 'Aprovado', 25.30, 'Cartão de Crédito', 27, 'comprovante27.jpg', 27),
('2024-06-08', 'Pendente', 33.45, 'Transferência Bancária', 28, 'comprovante28.jpg', 28),
('2024-06-09', 'Aprovado', 8.20, 'Pix', 29, 'comprovante29.jpg', 29),
('2024-06-10', 'Pendente', 35.00, 'Cartão de Débito', 30, 'comprovante30.jpg', 30),
('2024-06-11', 'Aprovado', 23.50, 'Cartão de Crédito', 31, 'comprovante31.jpg', 31),
('2024-06-12', 'Pendente', 20.75, 'Boleto Bancário', 32, 'comprovante32.jpg', 32),
('2024-06-13', 'Aprovado', 27.30, 'Transferência Bancária', 33, 'comprovante33.jpg', 33),
('2024-06-14', 'Pendente', 9.20, 'Pix', 34, 'comprovante34.jpg', 34),
('2024-06-15', 'Aprovado', 25.00, 'Cartão de Débito', 35, 'comprovante35.jpg', 35);


INSERT INTO Devolucao (Data_Devolucao, Condicao_Veiculo, Custos_Adicionais, Id_Locacao)
VALUES
('2024-07-20', 'Pequenos arranhões na lateral', 25.00, 21),
('2024-08-05', 'Amassado na porta dianteira', 70.00, 22),
('2024-08-15', 'Trinca no para-brisa', 30.00, 23),
('2024-08-25', 'Sem problemas', NULL, 24),
('2024-09-10', 'Arranhões na lateral esquerda', 35.00, 25),
('2024-09-20', 'Pequeno amassado na traseira', 45.00, 26),
('2024-09-30', 'Roda dianteira esquerda danificada', 80.00, 27),
('2024-10-10', 'Sem problemas', NULL, 28),
('2024-10-20', 'Arranhões no teto', 60.00, 29),
('2024-10-30', 'Sem problemas', NULL, 30),
('2024-11-10', 'Amassado na lateral direita', 55.00, 31),
('2024-11-20', 'Arranhões na porta traseira', 40.00, 32),
('2024-11-30', 'Sem problemas', NULL, 33),
('2024-12-10', 'Pequeno dano na frente', 75.00, 34),
('2024-12-20', 'Sem problemas', NULL, 35);

-- Novos inserts para Faz
INSERT INTO Faz (Id_Carro, Id_Manutencao)
VALUES
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35);

-- Novos inserts para Feedback
INSERT INTO Feedback (Data_Feedback, Id_Feedback, Avaliacao, Comentario)
VALUES
('2025-09-10', 21, 5, 'Atendimento excelente, carro impecável.'),
('2025-10-20', 22, 4, 'Processo de aluguel rápido e fácil.'),
('2025-11-15', 23, 3, 'Preço alto para o serviço oferecido.'),
('2025-12-10', 24, 5, 'Ótima experiência, recomendo.'),
('2026-01-25', 25, 2, 'Carro sujo no momento da retirada.'),
('2026-02-10', 26, 5, 'Nenhuma queixa, tudo perfeito.'),
('2026-03-20', 27, 4, 'Devolução rápida e simples.'),
('2026-04-15', 28, 3, 'Demora no atendimento na retirada.'),
('2026-05-30', 29, 5, 'Serviço de qualidade, muito satisfeito.'),
('2026-06-25', 30, 4, 'Preço justo e bom atendimento.'),
('2026-07-20', 31, 5, 'Atendimento excepcional, com certeza voltarei.'),
('2026-08-10', 32, 4, 'Carro em boas condições, serviço satisfatório.'),
('2026-09-25', 33, 3, 'Problemas com a reserva do carro.'),
('2026-10-20', 34, 5, 'Experiência excelente, recomendo.'),
('2026-11-15', 35, 4, 'Processo de aluguel simples e rápido.');

-- Novos inserts para Funcionarios
INSERT INTO Funcionarios (Data_Contratacao, Sobrenome, Salario, Cargo, Nome, Id_Funcionario, NumeroAgencia) 
VALUES
('2023-04-15', 'Oliveira', 27.00, 'Atendente', 'Juliana', 21, 11),
('2024-02-10', 'Lima', 22.50, 'Atendente', 'Felipe', 22, 12),
('2023-10-05', 'Sousa', 26.00, 'Gerente', 'Rafaela', 23, 13),
('2024-04-20', 'Alves', 24.50, 'Atendente', 'Gustavo', 24, 14),
('2023-06-15', 'Pereira', 28.00, 'Gerente', 'Aline', 25, 15),
('2024-08-25', 'Costa', 23.00, 'Atendente', 'Bruno', 26, 16),
('2023-12-20', 'Ferreira', 27.50, 'Gerente', 'Camila', 27, 17),
('2024-09-10', 'Gomes', 30.00, 'Gerente', 'Leonardo', 28, 18),
('2023-02-15', 'Ribeiro', 33.00, 'Gerente', 'Tatiane', 29, 19),
('2024-10-20', 'Araujo', 29.00, 'Atendente', 'Vinicius', 30, 20);
INSERT INTO Funcionarios (Data_Contratacao, Sobrenome, Salario, Cargo, Nome, Id_Funcionario, NumeroAgencia) 
VALUES
('2025-01-15', 'Silva', 25.00, 'Atendente', 'Mariana', 31, 21),
('2025-02-20', 'Santos', 28.00, 'Atendente', 'Rodrigo', 32, 22),
('2025-03-10', 'Oliveira', 26.50, 'Gerente', 'Alessandra', 33, 23),
('2025-04-05', 'Souza', 24.00, 'Atendente', 'Vinicius', 34, 24),
('2025-05-20', 'Costa', 27.50, 'Gerente', 'Luiza', 35, 25);

INSERT INTO Locacao (Id_Locacao, Data_Devolucao, Data_Locacao, Valor_Total, Id_Carro, Id_Cliente)
VALUES
(21, '2026-11-10', '2026-11-05', 450.00, 21, 21),
(22, '2026-12-20', '2026-12-15', 510.00, 22, 22),
(23, '2027-01-15', '2027-01-10', 380.00, 23, 23),
(24, '2027-03-30', '2027-03-25', 600.00, 24, 24),
(25, '2027-05-25', '2027-05-20', 480.00, 25, 25),
(26, '2027-07-10', '2027-07-05', 700.00, 26, 26),
(27, '2027-09-20', '2027-09-15', 530.00, 27, 27),
(28, '2027-11-15', '2027-11-10', 450.00, 28, 28),
(29, '2028-01-30', '2028-01-25', 660.00, 29, 29),
(30, '2028-03-25', '2028-03-20', 520.00, 30, 30),
(31, '2028-05-10', '2028-05-05', 750.00, 31, 31),
(32, '2028-07-20', '2028-07-15', 580.00, 32, 32),
(33, '2028-09-15', '2028-09-10', 490.00, 33, 33),
(34, '2028-11-30', '2028-11-25', 720.00, 34, 34),
(35, '2029-01-25', '2029-01-20', 590.00, 35, 35);

INSERT INTO Manutencao (KM, Id_Manutencao, Descricao, Data_Manutencao, Custo, Tipo_Manutencao)
VALUES 
(35000.25, 21, 'Reparo do sistema de freios', '2027-03-10', 180.00, 'Corretiva'),
(38000.50, 22, 'Revisão de suspensão', '2027-07-15', 310.00, 'Preventiva'),
(33000.75, 23, 'Troca de óleo e filtro', '2027-12-20', 250.25, 'Preventiva'),
(42000.00, 24, 'Substituição de amortecedores', '2028-01-05', 950.50, 'Corretiva'),
(39000.80, 25, 'Reparo do sistema elétrico', '2028-04-28', 520.75, 'Corretiva'),
(41000.60, 26, 'Revisão de motor', '2028-08-10', 780.80, 'Preventiva'),
(36000.90, 27, 'Substituição de filtro de ar', '2028-06-12', 230.30, 'Corretiva'),
(40000.40, 28, 'Troca de correias', '2028-02-25', 370.60, 'Corretiva'),
(43000.70, 29, 'Reparo de sistema de ar condicionado', '2028-05-20', 500.40, 'Corretiva'),
(44000.50, 30, 'Revisão de suspensão', '2028-09-05', 670.25, 'Preventiva'),
(45000.25, 31, 'Reparo do sistema de freios', '2029-03-10', 210.00, 'Corretiva'),
(47000.50, 32, 'Revisão de suspensão', '2029-07-15', 340.00, 'Preventiva'),
(43000.75, 33, 'Troca de óleo e filtro', '2029-12-20', 270.25, 'Preventiva'),
(48000.00, 34, 'Substituição de amortecedores', '2030-01-05', 1000.50, 'Corretiva'),
(49000.80, 35, 'Reparo do sistema elétrico', '2030-04-28', 600.75, 'Corretiva');

INSERT INTO Seguro (Seguradora, Tipo_Seguro, Cobertura, Valor_Premio, Id_Carro)
VALUES
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 1750.00, 14),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1050.00, 15),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2050.00, 16),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1650.00, 17),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 950.00, 18),
('Seguradora Liberty Seguros', 'Seguro Total', 'Cobre roubo e furto', 1950.00, 19),
('Seguradora Zurich', 'Seguro Total', 'Cobre danos materiais e pessoais', 1850.00, 20),
('Seguradora HDI', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1000.00, 21),
('Seguradora Sompo Seguros', 'Seguro Total', 'Cobre roubo e furto', 2150.00, 22),
('Seguradora Mitsui Sumitomo', 'Seguro Total', 'Cobre danos materiais e pessoais', 1800.00, 23),
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 1900.00, 24),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1100.00, 25),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2200.00, 26),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1700.00, 27),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1050.00, 28)

--3 inserts 
INSERT INTO Agencia (NumeroAgencia, Estado, Contato, Cidade, Endereco)
VALUES
(36, 'Amazonas', 'Matheus Santos', 'Manaus', 'Rua Z, 987'),
(37, 'Ceará', 'Carla Oliveira', 'Fortaleza', 'Avenida A, 123'),
(38, 'Paraná', 'Renato Silva', 'Curitiba', 'Rua B, 456'),
(39, 'Rio de Janeiro', 'Larissa Costa', 'Rio de Janeiro', 'Avenida C, 789'),
(40, 'Santa Catarina', 'Pedro Almeida', 'Florianópolis', 'Rua D, 987'),
(41, 'São Paulo', 'Juliana Santos', 'São Paulo', 'Avenida E, 654'),
(42, 'Bahia', 'Lucas Souza', 'Salvador', 'Rua F, 321'),
(43, 'Goiás', 'Amanda Oliveira', 'Goiânia', 'Avenida G, 987'),
(44, 'Minas Gerais', 'Thiago Silva', 'Belo Horizonte', 'Rua H, 654'),
(45, 'Pernambuco', 'Marina Costa', 'Recife', 'Avenida I, 321'),
(46, 'Rio Grande do Norte', 'Rodrigo Santos', 'Natal', 'Rua J, 987'),
(47, 'Espirito Santo', 'Ana Oliveira', 'Vila Velha', 'Avenida K, 654'),
(48, 'Maranhão', 'Luiza Costa', 'São Luís', 'Rua L, 321'),
(49, 'Acre', 'João Santos', 'Rio Branco', 'Avenida M, 987'),
(50, 'Amapá', 'Lucas Oliveira', 'Macapá', 'Rua N, 654'),
(51, 'Paraíba', 'Tatiane Almeida', 'João Pessoa', 'Avenida O, 321'),
(52, 'Roraima', 'Pedro Silva', 'Boa Vista', 'Rua P, 987'),
(53, 'Rondônia', 'Carla Costa', 'Porto Velho', 'Avenida Q, 654'),
(54, 'Tocantins', 'Marcelo Santos', 'Palmas', 'Rua R, 321'),
(55, 'Sergipe', 'Isabela Oliveira', 'Aracaju', 'Avenida S, 987');

INSERT INTO Carro (Placa, Tipo, Disponibilidade, Ano, Modelo, Id_Carro)
VALUES
('BCD6789', 'SUV', 'Disponível', 2023, 'Hyundai Creta', 36),
('CDE9012', 'Hatchback', 'Disponível', 2022, 'Volkswagen Polo', 37),
('EFG3456', 'Sedan', 'Disponível', 2021, 'Chevrolet Cruze', 38),
('FGH7890', 'SUV', 'Disponível', 2020, 'Nissan Kicks', 39),
('GHI1234', 'Hatchback', 'Disponível', 2019, 'Renault Kwid', 40),
('IJK5678', 'Sedan', 'Disponível', 2018, 'Hyundai HB20S', 41),
('KLM9012', 'SUV', 'Disponível', 2017, 'Ford EcoSport', 42),
('MNO3456', 'Hatchback', 'Disponível', 2016, 'Fiat Argo', 43),
('NOP7890', 'Sedan', 'Disponível', 2015, 'Volkswagen Virtus', 44),
('QRS1234', 'SUV', 'Disponível', 2014, 'Chevrolet Tracker', 45),
('RST5678', 'Hatchback', 'Disponível', 2013, 'Toyota Corolla', 46),
('TUV9012', 'Sedan', 'Disponível', 2012, 'Honda City', 47),
('UVW3456', 'SUV', 'Disponível', 2011, 'Jeep Renegade', 48),
('VWX7890', 'Hatchback', 'Disponível', 2010, 'Fiat Toro', 49),
('YZA1234', 'Sedan', 'Disponível', 2009, 'Renault Duster', 50),
('ZAB5678', 'SUV', 'Disponível', 2008, 'Hyundai Tucson', 51),
('ABC9012', 'Hatchback', 'Disponível', 2007, 'Chevrolet Spin', 52),
('BCD2345', 'Sedan', 'Disponível', 2006, 'Ford Fiesta Sedan', 53),
('CDE6789', 'SUV', 'Disponível', 2005, 'Nissan March', 54),
('EFG9012', 'Hatchback', 'Disponível', 2004, 'Volkswagen Golf', 55);

INSERT INTO Cliente (Sobrenome, Nome, Cidade, Estado, Endereco, Id_Cliente, Email, Celular, ID_Pagamento, Id_Comprovante)
VALUES
('Almeida', 'Felipe', 'São Paulo', 'SP', 'Avenida A, 123', 36, 'felipealmeida@gmail.com', '(11) 1234-5678', 36, 36),
('Mendes', 'Patrícia', 'Belo Horizonte', 'MG', 'Rua B, 456', 37, 'patriciamendes@gmail.com', '(31) 9876-5432', 37, 37),
('Dantas', 'Roberto', 'Recife', 'PE', 'Avenida C, 789', 38, 'robertodantas@gmail.com', '(81) 2345-6789', 38, 38),
('Cruz', 'Amanda', 'Curitiba', 'PR', 'Rua D, 147', 39, 'amandacruz@gmail.com', '(41) 8765-4321', 39, 39),
('Melo', 'Lucas', 'Fortaleza', 'CE', 'Avenida E, 258', 40, 'lucasmelo@gmail.com', '(85) 3210-9876', 40, 40),
('Nascimento', 'Carla', 'Manaus', 'AM', 'Rua F, 369', 41, 'carlanascimento@gmail.com', '(92) 1098-7654', 41, 41),
('Araújo', 'Marcos', 'Goiânia', 'GO', 'Avenida G, 741', 42, 'marcosaraujo@gmail.com', '(62) 8765-4321', 42, 42),
('Correia', 'Isabela', 'Salvador', 'BA', 'Rua H, 951', 43, 'isabelacorreia@gmail.com', '(71) 2345-6789', 43, 43),
('Siqueira', 'Rafael', 'Porto Alegre', 'RS', 'Avenida I, 369', 44, 'rafaelsiqueira@gmail.com', '(51) 7654-3210', 44, 44),
('Pereira', 'Carolina', 'Brasília', 'DF', 'Rua J, 852', 45, 'carolinapereira@gmail.com', '(61) 2109-8765', 45, 45),
('Ferreira', 'Rodrigo', 'Vitória', 'ES', 'Avenida K, 246', 46, 'rodrigoferreira@gmail.com', '(27) 3456-7890', 46, 46),
('Oliveira', 'Juliana', 'João Pessoa', 'PB', 'Rua L, 357', 47, 'julianaoliveira@gmail.com', '(83) 6543-2109', 47, 47),
('Silva', 'Guilherme', 'Porto Velho', 'RO', 'Avenida M, 468', 48, 'guilhermesilva@gmail.com', '(69) 3210-9876', 48, 48),
('Costa', 'Aline', 'Cuiabá', 'MT', 'Rua N, 579', 49, 'alinecosta@gmail.com', '(65) 1098-7654', 49, 49),
('Santos', 'Thiago', 'Teresina', 'PI', 'Avenida O, 753', 50, 'thiagosantos@gmail.com', '(86) 8765-4321', 50, 50),
('Ribeiro', 'Fernanda', 'Campo Grande', 'MS', 'Rua P, 135', 51, 'fernandaribeiro@gmail.com', '(67) 2345-6789', 51, 51),
('Martins', 'Daniel', 'Palmas', 'TO', 'Avenida Q, 468', 52, 'danilmartins@gmail.com', '(63) 7654-3210', 52, 52),
('Gonçalves', 'Bruna', 'Macapá', 'AP', 'Rua R, 357', 53, 'brunagoncalves@gmail.com', '(96) 3210-9876', 53, 53),
('Araújo', 'Pedro', 'Boa Vista', 'RR', 'Avenida S, 852', 54, 'pedroaraujo@gmail.com', '(95) 6543-2109', 54, 54),
('Lima', 'Luana', 'Rio Branco', 'AC', 'Rua T, 951', 55, 'luanalima@gmail.com', '(68) 8765-4321', 55, 55)

INSERT INTO Pagamento (Data_Pagamento, Status_Pagamento, Valor, Forma_Pagamento, ID_Pagamento, Comprovante, Id_Comprovante)
VALUES
('2024-06-16', 'Pendente', 29.75, 'Cartão de Crédito', 36, 'comprovante36.jpg', 36),
('2024-06-17', 'Aprovado', 18.50, 'Boleto Bancário', 37, 'comprovante37.jpg', 37),
('2024-06-18', 'Pendente', 15.25, 'Transferência Bancária', 38, 'comprovante38.jpg', 38),
('2024-06-19', 'Aprovado', 35.00, 'Pix', 39, 'comprovante39.jpg', 39),
('2024-06-20', 'Aprovado', 27.50, 'Cartão de Débito', 40, 'comprovante40.jpg', 40),
('2024-06-21', 'Pendente', 22.75, 'Boleto Bancário', 41, 'comprovante41.jpg', 41),
('2024-06-22', 'Aprovado', 14.30, 'Cartão de Crédito', 42, 'comprovante42.jpg', 42),
('2024-06-23', 'Pendente', 30.45, 'Transferência Bancária', 43, 'comprovante43.jpg', 43),
('2024-06-24', 'Aprovado', 9.80, 'Pix', 44, 'comprovante44.jpg', 44),
('2024-06-25', 'Pendente', 45.00, 'Cartão de Débito', 45, 'comprovante45.jpg', 45),
('2024-06-26', 'Aprovado', 32.50, 'Cartão de Crédito', 46, 'comprovante46.jpg', 46),
('2024-06-27', 'Pendente', 26.75, 'Boleto Bancário', 47, 'comprovante47.jpg', 47),
('2024-06-28', 'Aprovado', 21.30, 'Transferência Bancária', 48, 'comprovante48.jpg', 48),
('2024-06-29', 'Pendente', 11.20, 'Pix', 49, 'comprovante49.jpg', 49),
('2024-06-30', 'Aprovado', 28.00, 'Cartão de Débito', 50, 'comprovante50.jpg', 50),
('2024-07-01', 'Pendente', 19.50, 'Cartão de Crédito', 51, 'comprovante51.jpg', 51),
('2024-07-02', 'Aprovado', 17.25, 'Boleto Bancário', 52, 'comprovante52.jpg', 52),
('2024-07-03', 'Pendente', 13.75, 'Transferência Bancária', 53, 'comprovante53.jpg', 53),
('2024-07-04', 'Aprovado', 31.00, 'Pix', 54, 'comprovante54.jpg', 54),
('2024-07-05', 'Pendente', 35.00, 'Pix', 55, 'comprovante55.jpg', 55)

INSERT INTO Devolucao (Data_Devolucao, Condicao_Veiculo, Custos_Adicionais, Id_Locacao)
VALUES
('2029-02-10', 'Pequeno arranhão no para-choque traseiro', 40.00, 36),
('2029-02-25', 'Roda traseira direita arranhada', 55.00, 37),
('2029-03-10', 'Sem problemas', NULL, 38),
('2029-03-25', 'Pequenos amassados na porta dianteira', 70.00, 39),
('2029-04-05', 'Arranhões no capô', 60.00, 40),
('2029-04-20', 'Sem problemas', NULL, 41),
('2029-05-05', 'Amassado na lateral traseira esquerda', 65.00, 42),
('2029-05-20', 'Arranhões na porta do motorista', 45.00, 43),
('2029-06-05', 'Sem problemas', NULL, 44),
('2029-06-20', 'Trinca no para-brisa', 30.00, 45),
('2029-07-05', 'Pequeno amassado na tampa do porta-malas', 50.00, 46),
('2029-07-20', 'Sem problemas', NULL, 47),
('2029-08-05', 'Arranhões na lateral direita', 55.00, 48),
('2029-08-20', 'Amassado no para-choque dianteiro', 75.00, 49),
('2029-09-05', 'Sem problemas', NULL, 50),
('2029-09-20', 'Pequeno arranhão no retrovisor esquerdo', 35.00, 51),
('2029-10-05', 'Trinca no para-brisa', 30.00, 52),
('2029-10-20', 'Sem problemas', NULL, 53),
('2029-11-05', 'Amassado na lateral traseira direita', 65.00, 54),
('2029-11-20', 'Arranhões na porta do passageiro', 40.00, 55);

INSERT INTO Faz (Id_Carro, Id_Manutencao)
VALUES
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55);

INSERT INTO Feedback (Data_Feedback, Id_Feedback, Avaliacao, Comentario)
VALUES
('2029-03-10', 36, 4, 'Processo de aluguel rápido e eficiente.'),
('2029-04-20', 37, 3, 'Carro com pequenos problemas de manutenção.'),
('2029-05-15', 38, 5, 'Atendimento cordial e profissional.'),
('2029-06-10', 39, 4, 'Excelente relação custo-benefício.'),
('2029-07-25', 40, 2, 'Carro com cheiro de cigarro, desagradável.'),
('2029-08-10', 41, 5, 'Recomendo a todos, serviço de qualidade.'),
('2029-09-20', 42, 4, 'Facilidade no processo de reserva.'),
('2029-10-15', 43, 3, 'Demora na devolução do veículo.'),
('2029-11-30', 44, 5, 'Carro em ótimas condições, limpo e confortável.'),
('2029-12-25', 45, 4, 'Preço justo, bom atendimento.'),
('2030-01-20', 46, 5, 'Experiência muito satisfatória, voltarei mais vezes.'),
('2030-02-10', 47, 4, 'Processo de locação rápido e descomplicado.'),
('2030-03-25', 48, 3, 'Falta de variedade de veículos disponíveis.'),
('2030-04-20', 49, 5, 'Atendimento personalizado, me senti valorizado como cliente.'),
('2030-05-15', 50, 4, 'Carro em excelente estado, sem problemas.'),
('2030-06-30', 51, 3, 'Problemas com a cobrança do valor da locação.'),
('2030-07-25', 52, 5, 'Serviço de alta qualidade, superou minhas expectativas.'),
('2030-08-20', 53, 4, 'Processo de devolução rápido e eficiente.'),
('2030-09-05', 54, 3, 'Dificuldade para encontrar a agência de devolução.'),
('2030-10-30', 55, 5, 'Excelente opção para aluguel de carros, recomendo.');

INSERT INTO Funcionarios (Data_Contratacao, Sobrenome, Salario, Cargo, Nome, Id_Funcionario, NumeroAgencia) 
VALUES
('2027-04-15', 'Martins', 26.00, 'Atendente', 'Ana', 36, 26),
('2028-02-10', 'Oliveira', 23.50, 'Atendente', 'Carlos', 37, 27),
('2027-10-05', 'Silva', 25.00, 'Gerente', 'Isabela', 38, 28),
('2028-04-20', 'Santos', 22.50, 'Atendente', 'Fernanda', 39, 29),
('2027-06-15', 'Costa', 27.00, 'Gerente', 'Pedro', 40, 30),
('2028-08-25', 'Pereira', 24.00, 'Atendente', 'Mariana', 41, 31),
('2027-12-20', 'Almeida', 28.50, 'Gerente', 'Ricardo', 42, 32),
('2028-09-10', 'Nascimento', 31.00, 'Gerente', 'Vanessa', 43, 33),
('2027-03-15', 'Gonçalves', 32.00, 'Gerente', 'Roberto', 44, 34),
('2028-11-20', 'Mendes', 28.00, 'Atendente', 'Carla', 45, 35),
('2031-01-15', 'Rodrigues', 24.00, 'Atendente', 'Lucas', 46, 36),
('2031-02-20', 'Ferreira', 27.00, 'Atendente', 'Amanda', 47, 37),
('2031-03-10', 'Gomes', 26.50, 'Gerente', 'Diego', 48, 38),
('2031-04-05', 'Martinez', 24.00, 'Atendente', 'Laura', 49, 39),
('2031-05-20', 'Dias', 27.50, 'Gerente', 'Patricia', 50, 40),
('2031-06-15', 'Barbosa', 25.00, 'Atendente', 'Gabriel', 51, 41),
('2031-07-20', 'Araujo', 29.50, 'Gerente', 'Jéssica', 52, 42),
('2031-08-10', 'Rocha', 32.00, 'Gerente', 'Paulo', 53, 43),
('2031-09-25', 'Carvalho', 33.00, 'Gerente', 'Carolina', 54, 44),
('2031-10-20', 'Cavalcanti', 29.00, 'Atendente', 'Thiago', 55, 45);

INSERT INTO Locacao (Id_Locacao, Data_Devolucao, Data_Locacao, Valor_Total, Id_Carro, Id_Cliente)
VALUES
(36, '2029-07-20', '2029-07-15', 560.00, 36, 36),
(37, '2029-09-15', '2029-09-10', 490.00, 37, 37),
(38, '2029-11-30', '2029-11-25', 720.00, 38, 38),
(39, '2030-01-25', '2030-01-20', 590.00, 39, 39),
(40, '2030-03-20', '2030-03-15', 680.00, 40, 40),
(41, '2030-05-10', '2030-05-05', 750.00, 41, 41),
(42, '2030-07-25', '2030-07-20', 610.00, 42, 42),
(43, '2030-09-15', '2030-09-10', 490.00, 43, 43),
(44, '2030-11-30', '2030-11-25', 720.00, 44, 44),
(45, '2031-01-25', '2031-01-20', 590.00, 45, 45),
(46, '2031-03-20', '2031-03-15', 680.00, 46, 46),
(47, '2031-05-10', '2031-05-05', 750.00, 47, 47),
(48, '2031-07-25', '2031-07-20', 610.00, 48, 48),
(49, '2031-09-15', '2031-09-10', 490.00, 49, 49),
(50, '2031-11-30', '2031-11-25', 720.00, 50, 50),
(51, '2032-01-25', '2032-01-20', 590.00, 51, 51),
(52, '2032-03-20', '2032-03-15', 680.00, 52, 52),
(53, '2032-05-10', '2032-05-05', 750.00, 53, 53),
(54, '2032-07-25', '2032-07-20', 610.00, 54, 54),
(55, '2032-09-15', '2032-09-10', 490.00, 55, 55);

INSERT INTO Manutencao (KM, Id_Manutencao, Descricao, Data_Manutencao, Custo, Tipo_Manutencao)
VALUES
(50000.25, 36, 'Reparo do sistema de freios', '2030-03-10', 180.00, 'Corretiva'),
(52000.50, 37, 'Revisão de suspensão', '2030-07-15', 310.00, 'Preventiva'),
(49000.75, 38, 'Troca de óleo e filtro', '2030-12-20', 250.25, 'Preventiva'),
(58000.00, 39, 'Substituição de amortecedores', '2031-01-05', 950.50, 'Corretiva'),
(54000.80, 40, 'Reparo do sistema elétrico', '2031-04-28', 520.75, 'Corretiva'),
(56000.60, 41, 'Revisão de motor', '2031-08-10', 780.80, 'Preventiva'),
(51000.90, 42, 'Substituição de filtro de ar', '2031-06-12', 230.30, 'Corretiva'),
(57000.40, 43, 'Troca de correias', '2031-02-25', 370.60, 'Corretiva'),
(59000.70, 44, 'Reparo de sistema de ar condicionado', '2031-05-20', 500.40, 'Corretiva'),
(60000.50, 45, 'Revisão de suspensão', '2031-09-05', 670.25, 'Preventiva'),
(61000.25, 46, 'Reparo do sistema de freios', '2032-03-10', 210.00, 'Corretiva'),
(63000.50, 47, 'Revisão de suspensão', '2032-07-15', 340.00, 'Preventiva'),
(59000.75, 48, 'Troca de óleo e filtro', '2032-12-20', 270.25, 'Preventiva'),
(64000.00, 49, 'Substituição de amortecedores', '2033-01-05', 1000.50, 'Corretiva'),
(65000.80, 50, 'Reparo do sistema elétrico', '2033-04-28', 600.75, 'Corretiva');

INSERT INTO Seguro (Seguradora, Tipo_Seguro, Cobertura, Valor_Premio, Id_Carro)
VALUES
('Seguradora Liberty Seguros', 'Seguro Total', 'Cobre roubo e furto', 2000.00, 29),
('Seguradora Zurich', 'Seguro Total', 'Cobre danos materiais e pessoais', 1950.00, 30),
('Seguradora HDI', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1100.00, 31),
('Seguradora Sompo Seguros', 'Seguro Total', 'Cobre roubo e furto', 2250.00, 32),
('Seguradora Mitsui Sumitomo', 'Seguro Total', 'Cobre danos materiais e pessoais', 1850.00, 33),
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 1950.00, 34),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1150.00, 35),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2300.00, 36),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1750.00, 37),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1100.00, 38),
('Seguradora Liberty Seguros', 'Seguro Total', 'Cobre roubo e furto', 2050.00, 39),
('Seguradora Zurich', 'Seguro Total', 'Cobre danos materiais e pessoais', 2000.00, 40),
('Seguradora HDI', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1150.00, 41),
('Seguradora Sompo Seguros', 'Seguro Total', 'Cobre roubo e furto', 2350.00, 42),
('Seguradora Mitsui Sumitomo', 'Seguro Total', 'Cobre danos materiais e pessoais', 1900.00, 43),
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 2000.00, 44),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1200.00, 45),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2350.00, 46),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1800.00, 47),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1150.00, 48);


--4 insert
INSERT INTO Agencia (NumeroAgencia, Estado, Contato, Cidade, Endereco)
VALUES
(56, 'Alagoas', 'Fernanda Silva', 'Maceió', 'Rua T, 654'),
(57, 'Piauí', 'Rafael Oliveira', 'Teresina', 'Avenida U, 321'),
(58, 'Mato Grosso', 'Gabriela Santos', 'Cuiabá', 'Rua V, 987'),
(59, 'Mato Grosso do Sul', 'Anderson Costa', 'Campo Grande', 'Avenida W, 654'),
(60, 'Rio Grande do Sul', 'Bruna Oliveira', 'Porto Alegre', 'Rua X, 321'),
(61, 'Pará', 'Mateus Silva', 'Belém', 'Avenida Y, 987'),
(62, 'Espírito Santo', 'Carolina Costa', 'Vitória', 'Rua Z, 654'),
(63, 'Roraima', 'Leonardo Santos', 'Boa Vista', 'Avenida A, 321'),
(64, 'São Paulo', 'Vanessa Oliveira', 'São Paulo', 'Rua B, 987'),
(65, 'Goiás', 'Diego Silva', 'Goiânia', 'Avenida C, 654'),
(66, 'Pernambuco', 'Fernanda Costa', 'Recife', 'Rua D, 321'),
(67, 'Bahia', 'Rafaela Oliveira', 'Salvador', 'Avenida E, 987'),
(68, 'Ceará', 'Marcelo Silva', 'Fortaleza', 'Rua F, 654'),
(69, 'Minas Gerais', 'Carolina Costa', 'Belo Horizonte', 'Avenida G, 321'),
(70, 'Santa Catarina', 'Lucas Oliveira', 'Florianópolis', 'Rua H, 987'),
(71, 'Paraíba', 'Isabela Santos', 'João Pessoa', 'Avenida I, 654'),
(72, 'Paraná', 'Felipe Costa', 'Curitiba', 'Rua J, 321'),
(73, 'Maranhão', 'Matheus Oliveira', 'São Luís', 'Avenida K, 987'),
(74, 'Amazonas', 'Gustavo Santos', 'Manaus', 'Rua L, 654'),
(75, 'Acre', 'Aline Oliveira', 'Rio Branco', 'Avenida M, 321'),
(76, 'Rio de Janeiro', 'Rafael Silva', 'Rio de Janeiro', 'Rua N, 987'),
(77, 'Sergipe', 'Jéssica Costa', 'Aracaju', 'Avenida O, 654'),
(78, 'Amapá', 'Luciana Oliveira', 'Macapá', 'Rua P, 321'),
(79, 'Tocantins', 'Marcelo Silva', 'Palmas', 'Avenida Q, 987'),
(80, 'Rondônia', 'Natália Santos', 'Porto Velho', 'Rua R, 654');

INSERT INTO Carro (Placa, Tipo, Disponibilidade, Ano, Modelo, Id_Carro)
VALUES
('FGH2345', 'Sedan', 'Disponível', 2023, 'Toyota Camry', 56),
('GHI6789', 'SUV', 'Disponível', 2022, 'Kia Sportage', 57),
('HIJ0123', 'Hatchback', 'Disponível', 2021, 'Mazda 3', 58),
('IJK4567', 'Sedan', 'Disponível', 2020, 'Audi A4', 59),
('KLM8901', 'SUV', 'Disponível', 2019, 'BMW X3', 60),
('MNO2345', 'Hatchback', 'Disponível', 2018, 'Mercedes-Benz A-Class', 61),
('NOP6789', 'Sedan', 'Disponível', 2017, 'Lexus ES', 62),
('OPQ0123', 'SUV', 'Disponível', 2016, 'Volvo XC60', 63),
('PQR4567', 'Hatchback', 'Disponível', 2015, 'Acura ILX', 64),
('QRS8901', 'Sedan', 'Disponível', 2014, 'Infiniti Q50', 65),
('RST2345', 'SUV', 'Disponível', 2013, 'Land Rover Range Rover Evoque', 66),
('STU6789', 'Hatchback', 'Disponível', 2012, 'Tesla Model 3', 67),
('TUV0123', 'Sedan', 'Disponível', 2011, 'Jaguar XF', 68),
('UVW4567', 'SUV', 'Disponível', 2010, 'Porsche Cayenne', 69),
('VWX8901', 'Hatchback', 'Disponível', 2009, 'Subaru Impreza', 70),
('WXY2345', 'Sedan', 'Disponível', 2008, 'Cadillac CTS', 71),
('XYZ6789', 'SUV', 'Disponível', 2007, 'Hummer H3', 72),
('YZA0123', 'Hatchback', 'Disponível', 2006, 'Dodge Caliber', 73),
('ZAB4567', 'Sedan', 'Disponível', 2005, 'Chrysler 300', 74),
('ABC8901', 'SUV', 'Disponível', 2004, 'GMC Yukon', 75),
('BCD2345', 'Hatchback', 'Disponível', 2003, 'Lincoln Navigator', 76),
('CDE6789', 'Sedan', 'Disponível', 2002, 'Buick LaCrosse', 77),
('DEF0123', 'SUV', 'Disponível', 2001, 'Mercury Mountaineer', 78),
('EFG4567', 'Hatchback', 'Disponível', 2000, 'Oldsmobile Alero', 79);

INSERT INTO Cliente (Sobrenome, Nome, Cidade, Estado, Endereco, Id_Cliente, Email, Celular, ID_Pagamento, Id_Comprovante)
VALUES
('Oliveira', 'Fernando', 'Natal', 'RN', 'Rua U, 123', 56, 'fernandooliveira@gmail.com', '(84) 2109-8765', 56, 56),
('Santana', 'Larissa', 'Florianópolis', 'SC', 'Avenida V, 456', 57, 'larissasantana@gmail.com', '(48) 3456-7890', 57, 57),
('Rocha', 'João', 'São Luís', 'MA', 'Rua W, 789', 58, 'joaorocha@gmail.com', '(98) 1098-7654', 58, 58),
('Cavalcanti', 'Maria', 'Aracaju', 'SE', 'Avenida X, 147', 59, 'mariacavalcanti@gmail.com', '(79) 6543-2109', 59, 59),
('Sousa', 'Roberta', 'Maceió', 'AL', 'Rua Y, 258', 60, 'robertasousa@gmail.com', '(82) 3210-9876', 60, 60),
('Fernandes', 'Bruno', 'Porto Seguro', 'BA', 'Avenida Z, 369', 61, 'brunofernandes@gmail.com', '(73) 8765-4321', 61, 61),
('Carvalho', 'Camila', 'Cabo Frio', 'RJ', 'Rua AA, 741', 62, 'camilacarvalho@gmail.com', '(22) 2345-6789', 62, 62),
('Dias', 'Ricardo', 'Santos', 'SP', 'Avenida BB, 951', 63, 'ricardodias@gmail.com', '(13) 7654-3210', 63, 63),
('Freitas', 'Ana', 'Niterói', 'RJ', 'Rua CC, 357', 64, 'anafreitas@gmail.com', '(21) 2109-8765', 64, 64),
('Barbosa', 'Paulo', 'Búzios', 'RJ', 'Avenida DD, 468', 65, 'paulobarbosa@gmail.com', '(22) 3456-7890', 65, 65),
('Figueiredo', 'Mariana', 'Angra dos Reis', 'RJ', 'Rua EE, 579', 66, 'marianafigueiredo@gmail.com', '(24) 1098-7654', 66, 66),
('Gomes', 'Felipe', 'Paraty', 'RJ', 'Avenida FF, 753', 67, 'felipegomes@gmail.com', '(24) 8765-4321', 67, 67),
('Mendes', 'Juliana', 'Mangaratiba', 'RJ', 'Rua GG, 135', 68, 'julianamendes@gmail.com', '(21) 2345-6789', 68, 68),
('Albuquerque', 'Gabriel', 'Rio das Ostras', 'RJ', 'Avenida HH, 468', 69, 'gabrielalbuquerque@gmail.com', '(22) 7654-3210', 69, 69),
('Diniz', 'Amanda', 'Cabo Frio', 'RJ', 'Rua II, 951', 70, 'amandadiniz@gmail.com', '(22) 2109-8765', 70, 70),
('Silva', 'Lucas', 'Búzios', 'RJ', 'Avenida JJ, 357', 71, 'lucassilva@gmail.com', '(22) 3456-7890', 71, 71),
('Ferreira', 'Laura', 'Angra dos Reis', 'RJ', 'Rua KK, 468', 72, 'lauraferreira@gmail.com', '(24) 1098-7654', 72, 72),
('Oliveira', 'Pedro', 'Mangaratiba', 'RJ', 'Avenida LL, 753', 73, 'pedrooliveira@gmail.com', '(21) 8765-4321', 73, 73),
('Nascimento', 'Mariana', 'Paraty', 'RJ', 'Rua MM, 135', 74, 'mariananascimento@gmail.com', '(24) 2345-6789', 74, 74),
('Lima', 'Gabriel', 'Rio das Ostras', 'RJ', 'Avenida NN, 468', 75, 'gabriellima@gmail.com', '(22) 7654-3210', 75, 75),
('Costa', 'Ana', 'Cabo Frio', 'RJ', 'Rua OO, 951', 76, 'anacosta@gmail.com', '(22) 2109-8765', 76, 76),
('Santos', 'Lucas', 'Búzios', 'RJ', 'Avenida PP, 357', 77, 'lucassantos@gmail.com', '(22) 3456-7890', 77, 77),
('Pereira', 'Laura', 'Angra dos Reis', 'RJ', 'Rua QQ, 468', 78, 'laurapereira@gmail.com', '(24) 1098-7654', 78, 78),
('Fernandes', 'Pedro', 'Mangaratiba', 'RJ', 'Avenida RR, 753', 79, 'pedrofernandes@gmail.com', '(21) 8765-4321', 79, 79),
('Rocha', 'Mariana', 'Paraty', 'RJ', 'Rua SS, 135', 80, 'marianarocha@gmail.com', '(24) 2345-6789', 80, 80);

INSERT INTO Pagamento (Data_Pagamento, Status_Pagamento, Valor, Forma_Pagamento, ID_Pagamento, Comprovante, Id_Comprovante)
VALUES
('2024-07-06', 'Aprovado', 27.75, 'Cartão de Crédito', 56, 'comprovante56.jpg', 56),
('2024-07-07', 'Pendente', 24.50, 'Boleto Bancário', 57, 'comprovante57.jpg', 57),
('2024-07-08', 'Aprovado', 15.25, 'Transferência Bancária', 58, 'comprovante58.jpg', 58),
('2024-07-09', 'Pendente', 36.00, 'Pix', 59, 'comprovante59.jpg', 59),
('2024-07-10', 'Aprovado', 28.50, 'Cartão de Débito', 60, 'comprovante60.jpg', 60),
('2024-07-11', 'Pendente', 23.75, 'Boleto Bancário', 61, 'comprovante61.jpg', 61),
('2024-07-12', 'Aprovado', 14.30, 'Cartão de Crédito', 62, 'comprovante62.jpg', 62),
('2024-07-13', 'Pendente', 31.45, 'Transferência Bancária', 63, 'comprovante63.jpg', 63),
('2024-07-14', 'Aprovado', 10.80, 'Pix', 64, 'comprovante64.jpg', 64),
('2024-07-15', 'Pendente', 46.00, 'Cartão de Débito', 65, 'comprovante65.jpg', 65),
('2024-07-16', 'Aprovado', 33.50, 'Cartão de Crédito', 66, 'comprovante66.jpg', 66),
('2024-07-17', 'Pendente', 27.75, 'Boleto Bancário', 67, 'comprovante67.jpg', 67),
('2024-07-18', 'Aprovado', 22.30, 'Transferência Bancária', 68, 'comprovante68.jpg', 68),
('2024-07-19', 'Pendente', 12.20, 'Pix', 69, 'comprovante69.jpg', 69),
('2024-07-20', 'Aprovado', 29.00, 'Cartão de Débito', 70, 'comprovante70.jpg', 70),
('2024-07-21', 'Pendente', 20.50, 'Cartão de Crédito', 71, 'comprovante71.jpg', 71),
('2024-07-22', 'Aprovado', 18.25, 'Boleto Bancário', 72, 'comprovante72.jpg', 72),
('2024-07-23', 'Pendente', 14.75, 'Transferência Bancária', 73, 'comprovante73.jpg', 73),
('2024-07-24', 'Aprovado', 32.00, 'Pix', 74, 'comprovante74.jpg', 74),
('2024-07-25', 'Pendente', 36.00, 'Pix', 75, 'comprovante75.jpg', 75),
('2024-07-26', 'Aprovado', 25.75, 'Cartão de Crédito', 76, 'comprovante76.jpg', 76),
('2024-07-27', 'Pendente', 21.50, 'Boleto Bancário', 77, 'comprovante77.jpg', 77),
('2024-07-28', 'Aprovado', 17.25, 'Transferência Bancária', 78, 'comprovante78.jpg', 78),
('2024-07-29', 'Pendente', 11.75, 'Pix', 79, 'comprovante79.jpg', 79),
('2024-07-30', 'Aprovado', 30.00, 'Cartão de Débito', 80, 'comprovante80.jpg', 80);

INSERT INTO Devolucao (Data_Devolucao, Condicao_Veiculo, Custos_Adicionais, Id_Locacao)
VALUES
('2029-11-25', 'Trinca no para-brisa', 30.00, 56),
('2029-12-10', 'Amassado na lateral traseira esquerda', 65.00, 57),
('2029-12-25', 'Arranhões na porta do motorista', 45.00, 58),
('2030-01-05', 'Sem problemas', NULL, 59),
('2030-01-20', 'Trinca no para-brisa', 30.00, 60),
('2030-02-05', 'Pequeno amassado na tampa do porta-malas', 50.00, 61),
('2030-02-20', 'Sem problemas', NULL, 62),
('2030-03-05', 'Arranhões na lateral direita', 55.00, 63),
('2030-03-20', 'Amassado no para-choque dianteiro', 75.00, 64),
('2030-04-05', 'Sem problemas', NULL, 65),
('2030-04-20', 'Pequeno arranhão no retrovisor esquerdo', 35.00, 66),
('2030-05-05', 'Trinca no para-brisa', 30.00, 67),
('2030-05-20', 'Sem problemas', NULL, 68),
('2030-06-05', 'Amassado na lateral traseira direita', 65.00, 69),
('2030-06-20', 'Arranhões na porta do passageiro', 40.00, 70),
('2030-07-05', 'Trinca no para-brisa', 30.00, 71),
('2030-07-20', 'Sem problemas', NULL, 72),
('2030-08-05', 'Amassado na lateral traseira esquerda', 65.00, 73),
('2030-08-20', 'Arranhões na porta do motorista', 45.00, 74),
('2030-09-05', 'Sem problemas', NULL, 75),
('2030-09-20', 'Trinca no para-brisa', 30.00, 76),
('2030-10-05', 'Pequeno amassado na tampa do porta-malas', 50.00, 77),
('2030-10-20', 'Sem problemas', NULL, 78),
('2030-11-05', 'Arranhões na lateral direita', 55.00, 79)

INSERT INTO Faz (Id_Carro, Id_Manutencao)
VALUES
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80);

INSERT INTO Feedback (Data_Feedback, Id_Feedback, Avaliacao, Comentario)
VALUES
('2030-11-25', 56, 4, 'Carro em boas condições, mas demora no atendimento.'),
('2030-12-20', 57, 3, 'Falta de transparência nos custos adicionais.'),
('2031-01-15', 58, 5, 'Processo de aluguel simples e rápido.'),
('2031-02-10', 59, 4, 'Atendimento atencioso e prestativo.'),
('2031-03-25', 60, 2, 'Carro sujo na entrega, poderia estar mais limpo.'),
('2031-04-20', 61, 5, 'Ótima variedade de veículos disponíveis.'),
('2031-05-15', 62, 4, 'Preço competitivo, bom custo-benefício.'),
('2031-06-30', 63, 3, 'Problemas com o sistema de reserva online.'),
('2031-07-25', 64, 5, 'Carro novo e bem conservado, excelente.'),
('2031-08-20', 65, 4, 'Processo de locação sem complicações.'),
('2031-09-05', 66, 3, 'Demora no atendimento na retirada do veículo.'),
('2031-10-30', 67, 5, 'Atendimento eficiente, equipe amigável.'),
('2031-11-25', 68, 4, 'Facilidade na devolução do veículo.'),
('2031-12-20', 69, 3, 'Falta de opções de seguro durante a locação.'),
('2032-01-15', 70, 5, 'Serviço confiável, recomendo a todos.'),
('2032-02-10', 71, 4, 'Processo de reserva online simples e rápido.'),
('2032-03-25', 72, 3, 'Veículo com problemas mecânicos durante a locação.'),
('2032-04-20', 73, 5, 'Atendimento de alta qualidade, equipe prestativa.'),
('2032-05-15', 74, 4, 'Carro limpo e bem mantido, sem problemas.'),
('2032-06-30', 75, 3, 'Dificuldade para encontrar estacionamento na devolução.'),
('2032-07-25', 76, 5, 'Processo de locação transparente e sem surpresas.'),
('2032-08-20', 77, 4, 'Opções de veículos adequadas às necessidades.'),
('2032-09-05', 78, 3, 'Problemas com o sistema de pagamento online.'),
('2032-10-30', 79, 5, 'Experiência positiva, certamente alugarei novamente.'),
('2032-11-25', 80, 4, 'Atendimento rápido e eficiente, recomendo.');

INSERT INTO Funcionarios (Data_Contratacao, Sobrenome, Salario, Cargo, Nome, Id_Funcionario, NumeroAgencia) 
VALUES
('2031-11-15', 'Lima', 26.50, 'Atendente', 'Juliana', 56, 46),
('2031-12-20', 'Souza', 28.00, 'Atendente', 'Renata', 57, 47),
('2032-01-10', 'Gonçalves', 27.50, 'Gerente', 'Marcos', 58, 48),
('2032-02-05', 'Alves', 25.00, 'Atendente', 'Ana', 59, 49),
('2032-03-20', 'Dantas', 29.50, 'Gerente', 'Cristina', 60, 50),
('2032-04-15', 'Pinto', 32.00, 'Gerente', 'Felipe', 61, 51),
('2032-05-10', 'Sousa', 33.00, 'Gerente', 'Luana', 62, 52),
('2032-06-25', 'Fernandes', 29.00, 'Atendente', 'Luciana', 63, 53),
('2032-07-20', 'Machado', 34.50, 'Gerente', 'Gustavo', 64, 54),
('2032-08-15', 'Azevedo', 36.00, 'Gerente', 'Maria', 65, 55),
('2032-09-30', 'Freitas', 31.50, 'Atendente', 'Vitor', 66, 56),
('2032-10-25', 'Correia', 27.00, 'Atendente', 'Roberta', 67, 57),
('2032-11-20', 'Vieira', 30.00, 'Gerente', 'Henrique', 68, 58),
('2032-12-15', 'Cardoso', 28.50, 'Atendente', 'Natália', 69, 59),
('2033-01-30', 'Ribeiro', 33.50, 'Gerente', 'Fernando', 70, 60),
('2033-02-25', 'Lopes', 35.00, 'Gerente', 'Tatiane', 71, 61),
('2033-03-20', 'Monteiro', 31.00, 'Gerente', 'João', 72, 62),
('2033-04-15', 'Sales', 34.50, 'Gerente', 'Camila', 73, 63),
('2033-05-30', 'Oliveira', 37.00, 'Gerente', 'Aline', 74, 64),
('2033-06-25', 'Silva', 33.50, 'Atendente', 'Rafael', 75, 65),
('2033-07-20', 'Santos', 38.00, 'Gerente', 'Bruna', 76, 66),
('2033-08-15', 'Costa', 39.50, 'Gerente', 'Marcelo', 77, 67),
('2033-09-30', 'Pereira', 35.00, 'Atendente', 'Luiz', 78, 68),
('2033-10-25', 'Ferreira', 32.00, 'Atendente', 'Márcia', 79, 69),
('2033-11-20', 'Gomes', 35.50, 'Gerente', 'Patrícia', 80, 70);

INSERT INTO Locacao (Id_Locacao, Data_Devolucao, Data_Locacao, Valor_Total, Id_Carro, Id_Cliente)
VALUES
(56, '2032-11-20', '2032-11-15', 560.00, 56, 56),
(57, '2032-12-15', '2032-12-10', 490.00, 57, 57),
(58, '2033-01-30', '2033-01-25', 720.00, 58, 58),
(59, '2033-03-25', '2033-03-20', 590.00, 59, 59),
(60, '2033-05-20', '2033-05-15', 680.00, 60, 60),
(61, '2033-07-10', '2033-07-05', 750.00, 61, 61),
(62, '2033-09-25', '2033-09-20', 610.00, 62, 62),
(63, '2033-11-15', '2033-11-10', 490.00, 63, 63),
(64, '2033-12-30', '2033-12-25', 720.00, 64, 64),
(65, '2034-02-25', '2034-02-20', 590.00, 65, 65),
(66, '2034-04-20', '2034-04-15', 680.00, 66, 66),
(67, '2034-06-10', '2034-06-05', 750.00, 67, 67),
(68, '2034-08-25', '2034-08-20', 610.00, 68, 68),
(69, '2034-10-15', '2034-10-10', 490.00, 69, 69),
(70, '2034-12-30', '2034-12-25', 720.00, 70, 70),
(71, '2035-02-25', '2035-02-20', 590.00, 71, 71),
(72, '2035-04-20', '2035-04-15', 680.00, 72, 72),
(73, '2035-06-10', '2035-06-05', 750.00, 73, 73),
(74, '2035-08-25', '2035-08-20', 610.00, 74, 74),
(75, '2035-10-15', '2035-10-10', 490.00, 75, 75),
(76, '2035-12-30', '2035-12-25', 720.00, 76, 76),
(77, '2036-02-25', '2036-02-20', 590.00, 77, 77),
(78, '2036-04-20', '2036-04-15', 680.00, 78, 78),
(79, '2036-06-10', '2036-06-05', 750.00, 79, 79)

INSERT INTO Manutencao (KM, Id_Manutencao, Descricao, Data_Manutencao, Custo, Tipo_Manutencao)
VALUES
(52000.25, 51, 'Reparo de sistema de ar condicionado', '2033-08-15', 480.40, 'Corretiva'),
(59000.50, 52, 'Revisão de suspensão', '2033-06-12', 710.25, 'Preventiva'),
(62000.25, 53, 'Reparo do sistema de freios', '2034-03-10', 250.00, 'Corretiva'),
(64000.50, 54, 'Revisão de suspensão', '2034-07-15', 380.00, 'Preventiva'),
(61000.75, 55, 'Troca de óleo e filtro', '2034-12-20', 290.25, 'Preventiva'),
(67000.00, 56, 'Substituição de amortecedores', '2035-01-05', 1050.50, 'Corretiva'),
(68000.80, 57, 'Reparo do sistema elétrico', '2035-04-28', 620.75, 'Corretiva'),
(69000.60, 58, 'Revisão de motor', '2035-08-10', 800.80, 'Preventiva'),
(63000.90, 59, 'Substituição de filtro de ar', '2035-06-12', 250.30, 'Corretiva'),
(69000.40, 60, 'Troca de correias', '2035-02-25', 400.60, 'Corretiva'),
(71000.70, 61, 'Reparo de sistema de ar condicionado', '2035-05-20', 540.40, 'Corretiva'),
(72000.50, 62, 'Revisão de suspensão', '2035-09-05', 710.25, 'Preventiva'),
(73000.25, 63, 'Reparo do sistema de freios', '2036-03-10', 280.00, 'Corretiva'),
(75000.50, 64, 'Revisão de suspensão', '2036-07-15', 420.00, 'Preventiva'),
(72000.75, 65, 'Troca de óleo e filtro', '2036-12-20', 320.25, 'Preventiva'),
(78000.00, 66, 'Substituição de amortecedores', '2037-01-05', 1100.50, 'Corretiva'),
(79000.80, 67, 'Reparo do sistema elétrico', '2037-04-28', 670.75, 'Corretiva'),
(80000.60, 68, 'Revisão de motor', '2037-08-10', 850.80, 'Preventiva'),
(74000.90, 69, 'Substituição de filtro de ar', '2037-06-12', 270.30, 'Corretiva'),
(80000.40, 70, 'Troca de correias', '2037-02-25', 450.60, 'Corretiva'),
(82000.70, 71, 'Reparo de sistema de ar condicionado', '2037-05-20', 580.40, 'Corretiva'),
(83000.50, 72, 'Revisão de suspensão', '2037-09-05', 740.25, 'Preventiva')

INSERT INTO Seguro (Seguradora, Tipo_Seguro, Cobertura, Valor_Premio, Id_Carro)
VALUES
('Seguradora Liberty Seguros', 'Seguro Total', 'Cobre roubo e furto', 2000.00, 29),
('Seguradora Zurich', 'Seguro Total', 'Cobre danos materiais e pessoais', 1950.00, 30),
('Seguradora HDI', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1100.00, 31),
('Seguradora Sompo Seguros', 'Seguro Total', 'Cobre roubo e furto', 2250.00, 32),
('Seguradora Mitsui Sumitomo', 'Seguro Total', 'Cobre danos materiais e pessoais', 1850.00, 33),
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 1950.00, 34),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1150.00, 35),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2300.00, 36),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1750.00, 37),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1100.00, 38),
('Seguradora Liberty Seguros', 'Seguro Total', 'Cobre roubo e furto', 2050.00, 39),
('Seguradora Zurich', 'Seguro Total', 'Cobre danos materiais e pessoais', 2000.00, 40),
('Seguradora HDI', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1150.00, 41),
('Seguradora Sompo Seguros', 'Seguro Total', 'Cobre roubo e furto', 2350.00, 42),
('Seguradora Mitsui Sumitomo', 'Seguro Total', 'Cobre danos materiais e pessoais', 1900.00, 43),
('Seguradora Bradesco', 'Seguro Total', 'Cobre danos materiais e pessoais', 2000.00, 44),
('Seguradora Allianz', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1200.00, 45),
('Seguradora SulAmérica', 'Seguro Total', 'Cobre roubo e furto', 2350.00, 46),
('Seguradora Mapfre', 'Seguro Total', 'Cobre danos materiais e pessoais', 1800.00, 47),
('Seguradora Tokio Marine', 'Seguro Contra Terceiros', 'Cobre danos a terceiros', 1150.00, 48)

INSERT INTO Agencia (NumeroAgencia, Estado, Contato, Cidade, Endereco)
VALUES
(81, 'Roraima', 'Lucas Costa', 'Boa Vista', 'Avenida S, 321'),
(82, 'Tocantins', 'Gabriela Oliveira', 'Palmas', 'Rua T, 987'),
(83, 'Amapá', 'Fernando Silva', 'Macapá', 'Avenida U, 654'),
(84, 'Rio Grande do Norte', 'Bianca Costa', 'Natal', 'Rua V, 321'),
(85, 'Acre', 'Guilherme Oliveira', 'Rio Branco', 'Avenida W, 987'),
(86, 'Sergipe', 'Mariana Santos', 'Aracaju', 'Rua X, 654'),
(87, 'Pernambuco', 'Ricardo Silva', 'Recife', 'Avenida Y, 321'),
(88, 'Maranhão', 'Laura Costa', 'São Luís', 'Rua Z, 987'),
(89, 'Alagoas', 'Rodrigo Oliveira', 'Maceió', 'Avenida A, 654'),
(90, 'Paraíba', 'Eduarda Santos', 'João Pessoa', 'Rua B, 321'),
(91, 'Piauí', 'Pedro Silva', 'Teresina', 'Avenida C, 987'),
(92, 'Ceará', 'Camila Oliveira', 'Fortaleza', 'Rua D, 654'),
(93, 'Rio de Janeiro', 'Henrique Costa', 'Rio de Janeiro', 'Avenida E, 321'),
(94, 'Espírito Santo', 'Amanda Santos', 'Vitória', 'Rua F, 987'),
(95, 'São Paulo', 'Vinícius Oliveira', 'São Paulo', 'Avenida G, 654'),
(96, 'Goiás', 'Larissa Costa', 'Goiânia', 'Rua H, 321'),
(97, 'Paraná', 'Thiago Silva', 'Curitiba', 'Avenida I, 987'),
(98, 'Santa Catarina', 'Patrícia Oliveira', 'Florianópolis', 'Rua J, 654'),
(99, 'Rio Grande do Sul', 'José Costa', 'Porto Alegre', 'Avenida K, 321'),
(100, 'Minas Gerais', 'Lívia Santos', 'Belo Horizonte', 'Rua L, 987'),
(101, 'Bahia', 'Daniel Oliveira', 'Salvador', 'Avenida M, 654'),
(102, 'Amazonas', 'Amanda Costa', 'Manaus', 'Rua N, 321'),
(103, 'Mato Grosso', 'Pedro Silva', 'Cuiabá', 'Avenida O, 987'),
(104, 'Mato Grosso do Sul', 'Natália Oliveira', 'Campo Grande', 'Rua P, 654'),
(105, 'Pará', 'Lucas Costa', 'Belém', 'Avenida Q, 321'),
(106, 'Amapá', 'Bianca Santos', 'Macapá', 'Rua R, 987'),
(107, 'Roraima', 'Ricardo Oliveira', 'Boa Vista', 'Avenida S, 654');


















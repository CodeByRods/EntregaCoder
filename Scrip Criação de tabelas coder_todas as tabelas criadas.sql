CREATE TABLE IF NOT EXISTS Transacoes (
    IdTransacao INT PRIMARY KEY AUTO_INCREMENT,
    Valor INT,
    Data DATETIME,
    FormaPagamento TEXT,
    Parcelas INT,
    IdComprador VARCHAR(50),
    IdAssinatura INT,
    IdEmpresa VARCHAR(50)
    -- FOREIGN KEY (IdComprador) REFERENCES Compradores(IdComprador)
    -- FOREIGN KEY (IdAssinatura) REFERENCES Assinaturas(IdAssinatura),
    -- FOREIGN KEY (IdEmpresa) REFERENCES Empresas(IdEmpresa)
);

INSERT INTO Transacoes (Valor, Data, FormaPagamento, Parcelas, IdComprador, IdAssinatura, IdEmpresa) VALUES
(1500, '2024-03-18 10:15:00', 'Cartão de Crédito', 3, 'COMP123', 1, 'EMP456'),
(2000, '2024-03-17 14:30:00', 'Boleto Bancário', 1, 'COMP456', 2, 'EMP789'),
(800, '2024-03-16 11:45:00', 'pix', 1, 'COMP789', 3, 'EMP123'),
(1200, '2024-03-15 09:00:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2500, '2024-03-14 16:20:00', 'Cartão de Débito', 2, 'COMP456', 2, 'EMP789');

select *
from transacoes t 
where upper(FormaPagamento) = 'BOLETO BANCÁRIO'
order by valor desc limit 10

ALTER TABLE Transacoes AUTO_INCREMENT = 20000;

ALTER TABLE Transacoes
ADD NomeProduto VARCHAR(100);

INSERT INTO Transacoes (Valor, Data, FormaPagamento, Parcelas, IdComprador, IdAssinatura, IdEmpresa) VALUES
(1500, '2024-03-18 10:15:00', 'Cartão de Crédito', 3, 'COMP123', 1, 'EMP456'),
(2000, '2024-03-17 14:30:00', 'Boleto Bancário', 1, 'COMP456', 2, 'EMP789'),
(800, '2024-03-16 11:45:00', 'Cartão de Débito', 1, 'COMP789', 3, 'EMP123'),
(1200, '2024-03-15 09:00:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2500, '2024-03-14 16:20:00', 'Cartão de Crédito', 2, 'COMP456', 2, 'EMP789'),
(1800, '2024-03-13 08:30:00', 'Pix', 1, 'COMP789', 3, 'EMP123'),
(2200, '2024-03-12 12:45:00', 'Boleto Bancário', 1, 'COMP123', 1, 'EMP456'),
(3000, '2024-03-11 09:10:00', 'Cartão de Débito', 1, 'COMP456', 2, 'EMP789'),
(2800, '2024-03-10 14:25:00', 'Cartão de Crédito', 3, 'COMP789', 3, 'EMP123'),
(1600, '2024-03-09 11:30:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(1900, '2024-03-08 10:20:00', 'Cartão de Débito', 2, 'COMP456', 2, 'EMP789'),
(2400, '2024-03-07 09:15:00', 'Boleto Bancário', 1, 'COMP789', 3, 'EMP123'),
(1700, '2024-03-06 14:40:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2100, '2024-03-05 08:50:00', 'Cartão de Crédito', 3, 'COMP456', 2, 'EMP789'),
(2600, '2024-03-04 12:35:00', 'Pix', 1, 'COMP789', 3, 'EMP123'),
(2900, '2024-03-03 15:55:00', 'Boleto Bancário', 1, 'COMP123', 1, 'EMP456'),
(2300, '2024-03-02 10:05:00', 'Cartão de Crédito', 2, 'COMP456', 2, 'EMP789'),
(2700, '2024-03-01 14:20:00', 'Cartão de Débito', 1, 'COMP789', 3, 'EMP123'),
(1700, '2024-02-29 09:30:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2100, '2024-02-28 08:40:00', 'Boleto Bancário', 1, 'COMP456', 2, 'EMP789'),
(2500, '2024-02-27 11:55:00', 'Cartão de Crédito', 3, 'COMP789', 3, 'EMP123'),
(1900, '2024-02-26 14:10:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2200, '2024-02-25 10:25:00', 'Cartão de Débito', 2, 'COMP456', 2, 'EMP789'),
(2800, '2024-02-24 13:45:00', 'Cartão de Crédito', 3, 'COMP789', 3, 'EMP123'),
(2600, '2024-02-23 15:20:00', 'Boleto Bancário', 1, 'COMP123', 1, 'EMP456'),
(3000, '2024-02-22 09:35:00', 'Pix', 1, 'COMP456', 2, 'EMP789'),
(2400, '2024-02-21 12:50:00', 'Cartão de Crédito', 2, 'COMP789', 3, 'EMP123'),
(1800, '2024-02-20 14:15:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2000, '2024-02-19 10:40:00', 'Boleto Bancário', 1, 'COMP456', 2, 'EMP789'),
(2700, '2024-02-18 09:45:00', 'Cartão de Débito', 1, 'COMP789', 3, 'EMP123'),
(2300, '2024-02-17 13:00:00', 'Pix', 1, 'COMP123', 1, 'EMP456'),
(2900, '2024-02-16 15:25:00', 'Cartão de Crédito', 3, 'COMP456', 2, 'EMP789'),
(2100, '2024-02-15 08:55:00', 'Pix', 1, 'COMP789', 3, 'EMP123'),
(1900, '2024-02-14 11:10:00', 'Boleto Bancário', 1, 'COMP123', 1, 'EMP456'),
(2500, '2024-02-13 14:30:00', 'Cartão de Crédito', 2, 'COMP456', 2, 'EMP789'),
(1700, '2024-02-12 09:20:00', 'Pix', 1, 'COMP789', 3, 'EMP123'),
(1800, '2024-02-11 12:40:00', 'Boleto Bancário', 1, 'COMP123', 1, 'EMP456'),
(2600, '2024-02-10 10:05:00', 'Cartão de Crédito', 2, 'COMP456', 2, 'EMP789'),
(2200, '2024-02-09 14:15:00', 'Pix', 1, 'COMP789', 3, 'EMP123'),
(3000, '2024-02-08 15:40:00', 'Boleto Bancário', 1, 'COMP123', 1, 'EMP456'),
(2400, '2024-02-07 09:25:00', 'Cartão de Crédito', 2, 'COMP456', 2, 'EMP789'),
(2800, '2024-02-06 11:50:00', 'Pix', 1, 'COMP789', 3, 'EMP123'),
(2600, '2024-02-05 14:15:00', 'Cartão de Débito', 1, 'COMP123', 1, 'EMP456'),
(1900, '2024-02-04 10:30:00', 'Pix', 1, 'COMP456', 2, 'EMP789'),
(2300, '2024-02-03 13:45:00', 'Boleto Bancário', 1, 'COMP789', 3, 'EMP123'),
(2700, '2024-02-02 09:20:00', 'Cartão de Crédito', 2, 'COMP123', 1, 'EMP456'),
(2100, '2024-02-01 12:35:00', 'Pix', 1, 'COMP456', 2, 'EMP789');

create table EMPRESA (

IdEmpresa INT auto_increment primary key,
RazaoSocial TEXT,
DataCredenciamento DATETIME,
DocumentoCadastro INT,
EmailCadastro TEXT,
Responsavel TEXT

);

ALTER TABLE empresa  AUTO_INCREMENT = 800200;


INSERT INTO Empresa (RazaoSocial, DataCredenciamento, DocumentoCadastro, EmailCadastro, Responsavel) VALUES
('Stark Industries', '2023-05-10 08:00:00', 123456, 'contato@stark.com', 'Tony Stark'),
('Os Vingadores S.A.', '2023-04-15 10:30:00', 789012, 'contato@vingadores.com', 'Nick Fury'),
('Guarda Cosmica', '2023-03-20 09:15:00', 345678, 'contato@guardacosmica.com', 'Peter Quill'),
('Indústrias Rand', '2023-02-25 14:45:00', 901234, 'contato@rand.com', 'Danny Rand'),
('Tropa Alfa', '2023-01-30 11:20:00', 567890, 'contato@tropaalfa.com', 'James Hudson'),
('Fundação Futuro', '2022-12-05 13:10:00', 234567, 'contato@fundacaofuturo.com', 'Reed Richards'),
('A.I.M. (Ideias Mecânicas Avançadas)', '2022-11-10 15:50:00', 890123, 'contato@aim.com', 'M.O.D.O.K.'),
('S.H.I.E.L.D.', '2022-10-15 12:25:00', 456789, 'contato@shield.com', 'Maria Hill'),
('Pym Technologies', '2022-09-20 14:35:00', 123450, 'contato@pymtech.com', 'Hank Pym'),
('Corporação Roxxon', '2022-08-25 10:55:00', 678901, 'contato@roxxon.com', 'Dario Agger'),
('Fundação X', '2022-07-30 09:40:00', 234567, 'contato@fundacaox.com', 'Charles Xavier'),
('Indústrias Oscorp', '2022-06-05 08:15:00', 890123, 'contato@oscorp.com', 'Norman Osborn'),
('Agência S.W.O.R.D.', '2022-05-10 11:30:00', 456789, 'contato@sword.com', 'Abigail Brand'),
('Fisk Industries', '2022-04-15 14:20:00', 123450, 'contato@fiskindustries.com', 'Wilson Fisk'),
('Alchemax', '2022-03-20 09:10:00', 678901, 'contato@alchemax.com', 'Tyler Stone'),
('Fugitivos Ltda.', '2022-02-25 12:45:00', 234567, 'contato@fugitivos.com', 'Alex Wilder'),
('Novo Attilan', '2022-01-30 15:55:00', 890123, 'contato@novoattilan.com', 'Black Bolt'),
('Quarteto Fantástico', '2021-12-05 10:30:00', 456789, 'contato@quartetofantastico.com', 'Reed Richards'),
('Defensores da Cozinha do Inferno', '2021-11-10 13:40:00', 123450, 'contato@defensores.com', 'Matt Murdock'),
('Fundação Vingadores', '2021-10-15 08:20:00', 678901, 'contato@fundacao.com', 'Carol Danvers');

select *
from empresa 

UPDATE Transacoes
SET NomeProduto = 
    CASE 
        WHEN NomeProduto IS NULL THEN 
            CASE 
                WHEN RAND() < 0.02 THEN 'Escudo do Capitão América'
                WHEN RAND() < 0.04 THEN 'Luva do Infinito'
                WHEN RAND() < 0.06 THEN 'Martelo do Thor'
                WHEN RAND() < 0.08 THEN 'Manopla do Infinito'
                WHEN RAND() < 0.10 THEN 'Traje do Homem-Aranha'
                WHEN RAND() < 0.12 THEN 'Máscara do Pantera Negra'
                WHEN RAND() < 0.14 THEN 'Arco e Flecha do Gavião Arqueiro'
                WHEN RAND() < 0.16 THEN 'Traje do Homem de Ferro'
                WHEN RAND() < 0.18 THEN 'Manopla do Destino'
                WHEN RAND() < 0.20 THEN 'Chicote de Elektra'
                WHEN RAND() < 0.22 THEN 'Cajado do Loki'
                WHEN RAND() < 0.24 THEN 'Traje da Vespa'
                WHEN RAND() < 0.26 THEN 'Armadura de Hulkbuster'
                WHEN RAND() < 0.28 THEN 'Ferrão de Vespa'
                WHEN RAND() < 0.30 THEN 'Capa da Levitação'
                WHEN RAND() < 0.32 THEN 'Escudo do Falcão'
                WHEN RAND() < 0.34 THEN 'Roupa do Soldado Invernal'
                WHEN RAND() < 0.36 THEN 'Grimório de Doutor Estranho'
                WHEN RAND() < 0.38 THEN 'Escudo do Agente Coulson'
                WHEN RAND() < 0.40 THEN 'Aljava de Flechas de Gavião Arqueiro'
                WHEN RAND() < 0.42 THEN 'Tesouro de Asgard'
                WHEN RAND() < 0.44 THEN 'Roupa de Mercúrio'
                WHEN RAND() < 0.46 THEN 'Globo dos Mundos'
                WHEN RAND() < 0.48 THEN 'Gema do Espaço'
                WHEN RAND() < 0.50 THEN 'Gema da Realidade'
                WHEN RAND() < 0.52 THEN 'Gema do Poder'
                WHEN RAND() < 0.54 THEN 'Gema da Mente'
                WHEN RAND() < 0.56 THEN 'Gema do Tempo'
                WHEN RAND() < 0.58 THEN 'Gema da Alma'
                WHEN RAND() < 0.60 THEN 'Tesseract'
                WHEN RAND() < 0.62 THEN 'Soro do Super Soldado'
                WHEN RAND() < 0.64 THEN 'Gema do Caos'
                WHEN RAND() < 0.66 THEN 'Espada de Odin'
                WHEN RAND() < 0.68 THEN 'Lança de Odin'
                WHEN RAND() < 0.70 THEN 'Arco de Yondu'
                WHEN RAND() < 0.72 THEN 'Olho de Agamotto'
                WHEN RAND() < 0.74 THEN 'Escudo do Patriota de Ferro'
                WHEN RAND() < 0.76 THEN 'Traje de Batalha de Loki'
                WHEN RAND() < 0.78 THEN 'Garra do Pantera'
                WHEN RAND() < 0.80 THEN 'Chicote de Chicote de Elektra'
                WHEN RAND() < 0.82 THEN 'Arco de Yondu'
                WHEN RAND() < 0.84 THEN 'Arma de Arma de Fogo de Sif'
                WHEN RAND() < 0.86 THEN 'Soro de Super Soldado'
                WHEN RAND() < 0.88 THEN 'Traje de Batalha de Loki'
                WHEN RAND() < 0.90 THEN 'Martelo de Hela'
                WHEN RAND() < 0.92 THEN 'Espada de Valkyrie'
                WHEN RAND() < 0.94 THEN 'Manopla de Hela'
                WHEN RAND() < 0.96 THEN 'Traje de Batalha de Odin'
                ELSE 'Soro de Radiação'
            END
        ELSE NomeProduto
    END;

   UPDATE Transacoes
SET IdAssinatura = NULL
WHERE IdTransacao IN (
    SELECT IdTransacao
    FROM (
        SELECT IdTransacao
        FROM Transacoes
        ORDER BY RAND()
        LIMIT 35 -- Altere este valor para o número desejado de transações a serem atualizadas
    ) AS RandomRows
);

SELECT DATABASE();

alter database entrega_coder rename to Stark_pay 


CREATE TABLE Assinaturas (
    id_assinatura INT PRIMARY KEY,
    data_criacao_assinatura DATETIME,
    forma_pagamento TEXT,
    tempo_assinatura DATETIME,
    renovacao_automatica BOOLEAN
);

drop table Assinaturas

select* 
from assinaturas 

INSERT INTO assinaturas (id_assinatura, data_criacao_assinatura, forma_pagamento, tempo_assinatura, renovacao_automatica) VALUES
(1, '2023-05-12 08:23:45', 'Cartão de crédito', '2023-06-12 08:23:45', 1),
(2, '2023-07-19 14:30:22', 'Pix', '2024-07-19 14:30:22', 0),
(3, '2023-08-03 10:15:30', 'Boleto', '2023-09-03 10:15:30', 1),
(4, '2023-09-25 16:45:10', 'Cartão de crédito', '2023-10-25 16:45:10', 1),
(5, '2023-11-08 11:20:05', 'Boleto', '2024-11-08 11:20:05', 0),
(6, '2023-12-15 09:12:18', 'Pix', '2024-12-15 09:12:18', 1),
(7, '2024-01-22 07:35:55', 'Boleto', '2024-02-22 07:35:55', 0),
(8, '2024-02-18 13:40:30', 'Cartão de crédito', '2024-03-18 13:40:30', 1),
(9, '2024-03-06 18:55:42', 'Pix', '2025-03-06 18:55:42', 0),
(10, '2024-04-14 11:10:27', 'Boleto', '2025-04-14 11:10:27', 1),
(11, '2024-05-29 15:25:35', 'Cartão de crédito', '2024-06-29 15:25:35', 1),
(12, '2024-06-10 08:17:50', 'Pix', '2025-06-10 08:17:50', 0),
(13, '2024-07-02 17:30:40', 'Boleto', '2024-08-02 17:30:40', 0),
(14, '2024-08-20 14:45:22', 'Cartão de crédito', '2025-08-20 14:45:22', 1),
(15, '2024-09-18 09:55:15', 'Pix', '2025-09-18 09:55:15', 1),
(16, '2024-10-07 12:20:30', 'Boleto', '2025-10-07 12:20:30', 1),
(17, '2024-11-26 08:28:48', 'Cartão de crédito', '2025-11-26 08:28:48', 0),
(18, '2025-01-03 17:36:59', 'Pix', '2026-01-03 17:36:59', 1),
(19, '2025-02-14 10:45:20', 'Boleto', '2026-02-14 10:45:20', 1),
(20, '2025-03-20 15:50:10', 'Cartão de crédito', '2026-03-20 15:50:10', 0),
(21, '2025-04-09 12:55:35', 'Pix', '2026-04-09 12:55:35', 0),
(22, '2025-05-17 08:10:22', 'Boleto', '2026-05-17 08:10:22', 1),
(23, '2025-06-28 11:20:45', 'Cartão de crédito', '2026-07-28 11:20:45', 1),
(24, '2025-07-05 09:15:10', 'Pix', '2026-07-05 09:15:10', 1),
(25, '2025-08-12 13:30:55', 'Boleto', '2026-08-12 13:30:55', 0),
(26, '2025-09-09 16:40:20', 'Cartão de crédito', '2026-09-09 16:40:20', 1),
(27, '2025-10-24 10:55:35', 'Pix', '2026-10-24 10:55:35', 0),
(28, '2025-11-18 07:10:22', 'Boleto', '2026-11-18 07:10:22', 0),
(29, '2026-01-02 13:20:45', 'Cartão de crédito', '2027-01-02 13:20:45', 1),
(30, '2026-02-09 09:15:10', 'Pix', '2027-02-09 09:15:10', 1),
(31, '2026-03-19 14:30:55', 'Boleto', '2027-03-19 14:30:55', 0),
(32, '2026-04-05 16:40:20', 'Cartão de crédito', '2027-04-05 16:40:20', 1),
(33, '2026-05-08 11:55:35', 'Pix', '2027-05-08 11:55:35', 0),
(34, '2026-06-13 07:10:22', 'Boleto', '2027-06-13 07:10:22', 1),
(35, '2026-07-22 13:20:45', 'Cartão de crédito', '2027-07-22 13:20:45', 1),
(36, '2026-08-29 09:15:10', 'Pix', '2027-08-29 09:15:10', 0),
(37, '2026-10-15 14:30:55', 'Boleto', '2027-10-15 14:30:55', 0);

CREATE TABLE compradores (
    id_comprador INT AUTO_INCREMENT PRIMARY KEY,
    documento INT,
    nome TEXT,
    email TEXT,
    telefone BIGINT, -- Aumentando para BIGINT para permitir números longos
    data_decredenciamento DATETIME
);

drop table compradores 

ALTER TABLE compradores Documento

ALTER TABLE compradores MODIFY COLUMN documento BIGINT;

select* 
from compradores 

INSERT INTO compradores (documento, nome, email, telefone, data_decredenciamento) VALUES
(12345678901, 'Bruce Wayne', 'brucewayne@example.com', 1234567890, '2023-01-01 00:00:00'),
(23456789012, 'Clark Kent', 'clarkkent@example.com', 2345678901, '2023-01-01 00:00:00'),
(34567890123, 'Diana Prince', 'dianaprince@example.com', 3456789012, '2023-01-01 00:00:00'),
(45678901234, 'Arthur Curry', 'arthurcurry@example.com', 4567890123, '2023-01-01 00:00:00'),
(56789012345, 'Barry Allen', 'barryallen@example.com', 5678901234, '2023-01-01 00:00:00'),
(67890123456, 'Victor Stone', 'victorstone@example.com', 6789012345, '2023-01-01 00:00:00'),
(78901234567, 'Hal Jordan', 'haljordan@example.com', 7890123456, '2023-01-01 00:00:00'),
(89012345678, 'Oliver Queen', 'oliverqueen@example.com', 8901234567, '2023-01-01 00:00:00'),
(90123456789, 'John Jones', 'johnjones@example.com', 9012345678, '2023-01-01 00:00:00'),
(91234567890, 'Selina Kyle', 'selinakyle@example.com', 9123456789, '2023-01-01 00:00:00'),
(92345678901, 'Harley Quinn', 'harleyquinn@example.com', 9234567890, '2023-01-01 00:00:00'),
(93456789012, 'Pamela Isley', 'pamela.isley@example.com', 9345678901, '2023-01-01 00:00:00'),
(94567890123, 'Edward Nygma', 'edwardnygma@example.com', 9456789012, '2023-01-01 00:00:00'),
(95678901234, 'Victor Fries', 'victorfries@example.com', 9567890123, '2023-01-01 00:00:00'),
(96789012345, 'Roman Sionis', 'romansionis@example.com', 9678901234, '2023-01-01 00:00:00'),
(97890123456, 'Oswald Cobblepot', 'oswaldcobblepot@example.com', 9789012345, '2023-01-01 00:00:00'),
(98901234567, 'Waylon Jones', 'waylonjones@example.com', 9890123456, '2023-01-01 00:00:00'),
(99012345678, 'Garfield Lynns', 'garfieldlynns@example.com', 9901234567, '2023-01-01 00:00:00'),
(99123456789, 'Harvey Dent', 'harveydent@example.com', 9912345678, '2023-01-01 00:00:00'),
(99234567890, 'Killer Croc', 'killercroc@example.com', 9923456789, '2023-01-01 00:00:00'),
(99345678901, 'Pamela Lillian Isley', 'pamela.lillian.isley@example.com', 9934567890, '2023-01-01 00:00:00'),
(99456789012, 'Jervis Tetch', 'jervistetch@example.com', 9945678901, '2023-01-01 00:00:00'),
(99567890123, 'Bane', 'bane@example.com', 9956789012, '2023-01-01 00:00:00'),
(99678901234, 'Jason Todd', 'jasontodd@example.com', 9967890123, '2023-01-01 00:00:00'),
(99789012345, 'Damian Wayne', 'damianwayne@example.com', 9978901234, '2023-01-01 00:00:00');


CREATE TABLE cartoes (
    id_cartao INT AUTO_INCREMENT PRIMARY KEY,
    id_comprador VARCHAR(255),
    primeiros_digitos INT,
    ultimos_digitos INT,
    bandeira TEXT
);

ALTER TABLE cartoes  AUTO_INCREMENT = 785694123;

ALTER TABLE cartoes DROP COLUMN `Id_comprador`;

INSERT INTO cartoes (primeiros_digitos, ultimos_digitos, bandeira) VALUES
(1234, 5678, 'Visa'),
(2345, 6789, 'Mastercard'),
(3456, 7890, 'American Express'),
(4567, 8901, 'Discover'),
(5678, 9012, 'Visa'),
(6789, 0123, 'Mastercard'),
(7890, 1234, 'American Express'),
(8901, 2345, 'Discover'),
(9012, 3456, 'Visa'),
(0123, 4567, 'Mastercard'),
(1234, 5678, 'American Express'),
(2345, 6789, 'Discover'),
(3456, 7890, 'Visa'),
(4567, 8901, 'Mastercard'),
(5678, 9012, 'American Express'),
(6789, 0123, 'Discover'),
(7890, 1234, 'Visa'),
(8901, 2345, 'Mastercard'),
(9012, 3456, 'American Express'),
(0123, 4567, 'Discover');

CREATE TABLE Pagamentos (
    Id_do_Pagamento INT AUTO_INCREMENT PRIMARY KEY,
    Id_da_Transacao INT,
    Data_de_liquidacao DATE,
    Transacao_vinculada INT,
    Valor INT,
    Data DATETIME,
    Id_da_Empresa INT
    -- FOREIGN KEY (Id_da_Empresa) REFERENCES Empresas(Id_da_Empresa)
);



drop table pagamentos 

select *
from pagamentos p 



INSERT INTO Pagamentos (Data_de_liquidacao, Valor, Data) VALUES
('2024-03-20', 1000, '2024-03-20 10:00:00'),
('2024-03-21', 1500, '2024-03-21 11:30:00'),
('2024-03-22', 2000, '2024-03-22 12:45:00'),
('2024-03-23', 2500, '2024-03-23 14:00:00'),
('2024-03-24', 3000, '2024-03-24 15:20:00'),
('2024-03-25', 3500, '2024-03-25 16:40:00'),
('2024-03-26', 4000, '2024-03-26 17:50:00'),
('2024-03-27', 4500, '2024-03-27 18:15:00'),
('2024-03-28', 5000, '2024-03-28 19:30:00'),
('2024-03-29', 5500, '2024-03-29 20:45:00'),
('2024-03-30', 6000, '2024-03-30 21:00:00'),
('2024-03-31', 6500, '2024-03-31 22:10:00'),
('2024-04-01', 7000, '2024-04-01 23:20:00'),
('2024-04-02', 7500, '2024-04-02 00:30:00'),
('2024-04-03', 8000, '2024-04-03 01:45:00'),
('2024-04-04', 8500, '2024-04-04 02:55:00'),
('2024-04-05', 9000, '2024-04-05 03:10:00'),
('2024-04-06', 9500, '2024-04-06 04:20:00'),
('2024-04-07', 10000, '2024-04-07 05:30:00'),
('2024-04-08', 10500, '2024-04-08 06:45:00');

INSERT INTO Pagamentos (Data_de_liquidacao, Valor, Data) VALUES
('2024-04-09', 11000, '2024-04-09 07:55:00'),
('2024-04-10', 11500, '2024-04-10 08:10:00'),
('2024-04-11', 12000, '2024-04-11 09:20:00'),
('2024-04-12', 12500, '2024-04-12 10:30:00'),
('2024-04-13', 13000, '2024-04-13 11:45:00'),
('2024-04-14', 13500, '2024-04-14 12:55:00'),
('2024-04-15', 14000, '2024-04-15 13:10:00'),
('2024-04-16', 14500, '2024-04-16 14:20:00'),
('2024-04-17', 15000, '2024-04-17 15:30:00'),
('2024-04-18', 15500, '2024-04-18 16:45:00'),
('2024-04-19', 16000, '2024-04-19 17:55:00'),
('2024-04-20', 16500, '2024-04-20 18:10:00'),
('2024-04-21', 17000, '2024-04-21 19:20:00'),
('2024-04-22', 17500, '2024-04-22 20:30:00'),
('2024-04-23', 18000, '2024-04-23 21:45:00'),
('2024-04-24', 18500, '2024-04-24 22:55:00'),
('2024-04-25', 19000, '2024-04-25 23:10:00'),
('2024-04-26', 19500, '2024-04-26 00:20:00'),
('2024-04-27', 20000, '2024-04-27 01:30:00'),
('2024-04-28', 20500, '2024-04-28 02:45:00'),
('2024-04-29', 21000, '2024-04-29 03:55:00'),
('2024-04-30', 21500, '2024-04-30 04:10:00'),
('2024-05-01', 22000, '2024-05-01 05:20:00'),
('2024-05-02', 22500, '2024-05-02 06:30:00'),
('2024-05-03', 23000, '2024-05-03 07:45:00'),
('2024-05-04', 23500, '2024-05-04 08:55:00'),
('2024-05-05', 24000, '2024-05-05 10:00:00'),
('2024-05-06', 24500, '2024-05-06 11:15:00'),
('2024-05-07', 25000, '2024-05-07 12:25:00'),
('2024-05-08', 25500, '2024-05-08 13:35:00'),
('2024-05-09', 26000, '2024-05-09 14:50:00'),
('2024-05-10', 26500, '2024-05-10 16:00:00'),
('2024-05-11', 27000, '2024-05-11 17:10:00'),
('2024-05-12', 27500, '2024-05-12 18:25:00'),
('2024-05-13', 28000, '2024-05-13 19:35:00'),
('2024-05-14', 28500, '2024-05-14 20:45:00'),
('2024-05-15', 29000, '2024-05-15 21:55:00'),
('2024-05-16', 29500, '2024-05-16 23:05:00'),
('2024-05-17', 30000, '2024-05-17 00:15:00'),
('2024-05-18', 30500, '2024-05-18 01:25:00'),
('2024-05-19', 31000, '2024-05-19 02:35:00'),
('2024-05-20', 31500, '2024-05-20 03:45:00'),
('2024-05-21', 32000, '2024-05-21 04:55:00'),
('2024-05-22', 32500, '2024-05-22 06:05:00'),
('2024-05-23', 33000, '2024-05-23 07:15:00'),
('2024-05-24', 33500, '2024-05-24 08:25:00'),
('2024-05-25', 34000, '2024-05-25 09:35:00');

ALTER TABLE pagamentos  DROP COLUMN `Id_da_transacao`;

select *
from pagamentos p 

select IdTransacao 
from transacoes t 


delete from pagamentos where transacao_vinculada >= 20047

UPDATE Pagamentos
SET Transacao_vinculada = CASE
    WHEN Transacao_vinculada IS NULL THEN 
        CASE 
            WHEN Id_do_Pagamento <= 5 THEN Id_do_Pagamento
            ELSE Id_do_Pagamento + 19994
        END
END
WHERE Transacao_vinculada IS NULL;


select  IdEmpresa 
from empresa e 

UPDATE Pagamentos
SET Id_da_Empresa = 
    (SELECT FLOOR(RAND() * 20 + 800200) AS random_id)
WHERE Id_da_Empresa IS NULL;

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

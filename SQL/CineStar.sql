create table CineStar;

use CineStar;

create table filme(
id_filme int primary key auto_increment,
nome_filme varchar(250) not null,
duracao int, -- Tempo em minutos
ano_lancamento year(4),
diretor varchar(250),
classificacao decimal(6,2), 
genero varchar(250)
);

create table ingresso(
id_ingresso int primary key auto_increment,
data_compra date,
valor decimal(6,2),
id_cliente int,
id_sessao int, 
foreign key(id_cliente) references cliente(id_cliente),
foreign key (id_sessao) references sessao(id_sessao)
);

create table sala(
id_sala int primary key auto_increment,
numero_sala int not null,
capacidade int not null,
tipo_sala varchar(250)
);

create table sessao(
id_sessao int primary key auto_increment,
data_sessao date not null, 
horario_sessao time not null,
id_filme int,
id_sala int,
foreign key(id_filme) references filme(id_filme),
foreign key (id_sala) references sala(id_sala)
);

create table cliente(
id_cliente int primary key auto_increment,
nome_cliente varchar(250) not null,
telefone int(15) not null,
email varchar(250)
);
-- Inserir filmes
INSERT INTO filme (id_filme, nome_filme, diretor, duracao, classificacao, genero, ano_lancamento) 
VALUES
(1, 'o poderoso chefão', 'francis ford coppola', 175, '18+', 'crime',1972),
(2, 'vingadores: ultimato', 'anthony russo', 181, '12+', 'ação',2019),
(3, 'matrix', 'wachowski brothers', 136, '16+', 'ficção científica',1999),
(4, 'inception', 'christopher nolan', 148, '14+', 'ficção científica',2010),
(5, 'harry potter e a pedra filosofal', 'chris columbus', 152, '10+', 'fantasia',2001);

select * from filme;

-- Inserir salas
INSERT INTO sala (id_sala, numero_sala, capacidade, tipo_sala)
VALUES
(1, 150, 'som 7.1'),
(2, 120, 'som 5.1'),
(3, 100, 'som 7.1'),
(4, 50, 'som 7.1'),
(5, 80, 'som 5.1');

-- Inserir sessões
INSERT INTO sessao (id_sessao, id_filme, id_sala, data_sessao, horario_sessao)
VALUES
(1, 1, 1, '2025-02-22', '18:00:00'),
(2, 2, 2, '2025-02-22', '21:00:00'),
(3, 3, 3, '2025-02-23', '14:00:00'),
(4, 4, 4, '2025-02-23', '17:30:00'),
(5, 5, 5, '2025-02-24', '19:00:00');

-- Inserir clientes
INSERT INTO cliente (id_cliente, nome_cliente, email, telefone)
VALUES
('joão silva', 'joao@email.com', '99999-9999'),
('maria oliveira', 'maria@email.com', '88888-8888'),
('pedro costa', 'pedro@email.com', '77777-7777'),
('ana santos', 'ana@email.com', '66666-6666'),
('luana pires', 'luana@email.com', '55555-5555');

-- Inserir ingressos
INSERT INTO ingresso (id_ingresso, id_cliente, id_sessao, data_compra, valor)
VALUES
(1, 1, 1, '2025-02-21 15:00:00', 25.00),
(2, 2, 2, '2025-02-21 16:30:00', 30.00),
(3, 3, 3, '2025-02-21 17:45:00', 28.00),
(4, 4, 4, '2025-02-21 19:00:00', 35.00),
(5, 5, 5, '2025-02-21 20:30:00', 40.00);

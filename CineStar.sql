create table CineStar;

create table filme(
id_filme int primary key auto_increment,
nome_filme varchar(250) not null,
duracao time, 
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
INSERT INTO Filme (ID_Filme, Titulo, Diretor, Duracao, Classificacao, Genero) 
VALUES
(1, 'O Poderoso Chefão', 'Francis Ford Coppola', 175, '18+', 'Crime'),
(2, 'Vingadores: Ultimato', 'Anthony Russo', 181, '12+', 'Ação');

-- Inserir salas
INSERT INTO Sala (ID_Sala, Nome_Sala, Capacidade, Equipamento)
VALUES
(1, 'Sala 1', 150, 'Som 7.1, Projeção Digital'),
(2, 'Sala 2', 120, 'Som 5.1, Projeção Digital');

-- Inserir sessões
INSERT INTO Sessao (ID_Sessao, ID_Filme, ID_Sala, Data_Hora)
VALUES
(1, 1, 1, '2025-02-22 18:00:00'),
(2, 2, 2, '2025-02-22 21:00:00');

-- Inserir clientes
INSERT INTO Cliente (ID_Cliente, Nome, Email, Telefone)
VALUES
(1, 'João Silva', 'joao@email.com', '99999-9999'),
(2, 'Maria Oliveira', 'maria@email.com', '88888-8888');

-- Inserir ingressos
INSERT INTO Ingresso (ID_Ingresso, ID_Cliente, ID_Sessao, Data_Compra, Valor)
VALUES
(1, 1, 1, '2025-02-21 15:00:00', 25.00),
(2, 2, 2, '2025-02-21 16:30:00', 30.00);
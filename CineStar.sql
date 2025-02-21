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


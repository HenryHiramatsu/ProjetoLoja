-- Criando a database 
create database EcomLoja;
use EcomLoja;

-- Criando as tabelas 
create table Produto(
Id int primary key auto_increment,
Nome varchar(40),
Descricao varchar(400),
Preco decimal(10,2),
ImagemUrl varchar(255),
Estoque int
);
create table pedido(
Id int primary key auto_increment ,
DataPedido datetime,
Total decimal(10,2),
Status varchar(50),
Endereco varchar(100),
FormaPagamento varchar(100),
Frete decimal (10,2)
);


create table itemPedido(
Id int primary key auto_increment ,
PedidoId int,
ProdutoId int,
Quantidade int,
PrecoUnitario decimal(10,2)
);

-- CONSULTANDO AS TABELAS DO BANCO

select * from Produto;
select * from Pedido;
select * from itemPedido;
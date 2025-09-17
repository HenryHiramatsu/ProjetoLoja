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

insert into Produto(Nome, Descricao, Preco, ImagemURL, Estoque)
values("LEGO Nissan Skyline GT-R (R34)", 
"Detalhes autênticos – O modelo inclui detalhes inspirados na versão da vida real: faixas icônicas na lateral, um aerofólio traseiro, a grade dianteira e componentes do motor no banco do passageiro"
, 189.00, "images/skylinelego.jpeg", 260);

insert into Produto(Nome, Descricao, Preco, ImagemURL, Estoque)
values("Disney Casa de “Up - Altas Aventuras”", 
" O conjunto que vai dar o que falar inclui uma seção detalhada da icônica casa com uma chaminé e balões, 2 minifiguras LEGO, uma figura LEGO de cachorro, uma mochila de explorador selvagem e um livro de aventuras."
, 439.12, "images/legoup.jpeg", 200);

insert into Produto(Nome, Descricao, Preco, ImagemURL, Estoque)
values("LEGO Harry Potter Castelo de Hogwarts™", 
"Brinquedo de bruxo para crianças – Recrie uma cena encantadora da sala de aula de Harry Potter e a Pedra Filosofal com este conjunto LEGO Harry Potter Castelo de Hogwarts: Aula de Feitiços"
, 173.50, "images/legoharrypotter.jpeg", 260);

insert into Produto(Nome, Descricao, Preco, ImagemURL, Estoque)
values("LEGO Speed Champions Carro de Corrida MoneyGram - Haas F1 Team VF-24", 
"A partir de agora, a brincadeira vai ficar ainda mais divertida com o conjunto LEGO Speed Champions Carro de Corrida MoneyGram Haas F1 Team VF-24 (77250) com 242 peças. "
,250.00 , "images/legof1.webp", 200);

insert into Produto(Nome, Descricao, Preco, ImagemURL, Estoque)
values("Super Mário™ - Mario Kart™: Mario e Kart Padrão", 
"Modelo LEGO® Super Mario™ para exibição
Demonstre sua paixão por Mario Kart™ com esta figura LEGO® construída com peças em seu Kart padrão."
,1699.99, "images/legomario.webp", 260);

insert into Produto(Nome, Descricao, Preco, ImagemURL, Estoque)
values("LEGO Speed Champions Mercedes-AMG G 63 e Mercedes - AMG SL 63", 
"Pacote duplo de modelos da Mercedes-AMG
Com este pacote LEGO® duplo, as crianças constroem, brincam e expõem 2 modelos da Mercedes-AMG: o G 63 e o SL 63."
, 189.00, "images/legomercedes.webp", 200);

-- alter table Produto modify column Nome varchar(100);
-- alter table Produto modify column Descricao varchar(1000);
 update Produto set ImagemUrl = "images/legoskyline.jpeg" where id = 2;
-- CONSULTANDO AS TABELAS DO BANCO

select * from Produto;
select * from Pedido;
select * from itemPedido;
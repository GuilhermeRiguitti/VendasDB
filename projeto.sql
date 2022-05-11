create table produto
(
    id_produto int primary key generated always as identity,
    descricao  varchar,
    valor      numeric,
    perecivel  boolean
);

create table cliente
(
    id_cliente    int primary key generated always as identity,
    nome_cliente  varchar,
    logradouro    varchar,
    numero        int,
    bairro        varchar,
    cidade        varchar,
    dt_nascimento date
);


create table tipo_pag
(
    id_pag   int primary key generated always as identity,
    tipo_pag varchar
);

create table venda
(
    id_venda   INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    dt_venda   DATE,
    id_cliente int REFERENCES cliente (id_cliente),
    id_pag     int references tipo_pag (id_pag)
);

create table produto_venda
(
    id_venda    int references venda (id_venda) ON UPDATE CASCADE ON DELETE CASCADE,
    id_produto  int REFERENCES produto (id_produto) ON UPDATE CASCADE ON DELETE CASCADE,
    qtd_produto int
);

create table telefone
(
    id_cliente int REFERENCES cliente (id_cliente),
    telefone   int
);

select *
from cliente;

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Guilherme Riguiti de Oliveira', 'Av do contorno', '53', 'Dornelas', 'Muriae', '1997-04-03');

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Joao Carlos Castellano', 'Av das Voltas', '128', 'Barra Forte', 'Volta Grande', '1995-03-25');

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Roberto Moreira Armando', 'Rua Independencia', '1212', 'Centro', 'Janaúba', '1985-12-03');

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Flavio Freitas Oliveira', 'Rua 9 de maio', '25', 'Aurora', 'Uberlandia', '1989-05-14');

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Pedro Henrique Carvalho Moreira', 'Rua das Araras', '825', 'Joanópolis', 'Rio de Janeiro', '1989-09-21');

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Carlos Eduardo de Oliveira Machado', 'Av Pilbox', '825', 'Centro', 'Cidade Alta', '1992-09-21');

insert into cliente (nome_cliente, logradouro, numero, bairro, cidade, dt_nascimento)
values ('Jorge Siqueira Arnaldo', 'Rua dos Buritis', '125', 'Bairro das Flores', 'Rio de Janeiro', '1999-03-03');

select *
from tipo_pag;

insert into tipo_pag (tipo_pag)
values ('Dinheiro');

insert into tipo_pag (tipo_pag)
values ('Cheque à vista');

insert into tipo_pag (tipo_pag)
values ('Cheque à prazo');

insert into tipo_pag (tipo_pag)
values ('30 dias');

insert into tipo_pag (tipo_pag)
values ('60 dias');

insert into tipo_pag (tipo_pag)
values ('90 dias');

insert into tipo_pag (tipo_pag)
values ('Boleto à vista');

insert into tipo_pag (tipo_pag)
values ('Carnê');

insert into tipo_pag (tipo_pag)
values ('Cartao de crédito');

insert into tipo_pag (tipo_pag)
values ('Cartao de débito');

select *
from venda;

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-03-03', '1', '4');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-05-05', '2', '1');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-01-30', '3', '2');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-04-03', '4', '1');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-03-03', '5', '10');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-02-28', '6', '9');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-04-28', '7', '7');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-04-28', '1', '5');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-05-04', '1', '3');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-03-29', '3', '4');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-04-28', '7', '6');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-03-28', '7', '4');

insert into venda (dt_venda, id_cliente, id_pag)
values ('2022-04-28', '5', '4');

select *
from produto;

insert into produto (descricao, valor, perecivel)
values ('Shampoo Seda', '12.50', 'true');

insert into produto (descricao, valor, perecivel)
values ('Feijao Preto', '7.50', 'false');

insert into produto (descricao, valor, perecivel)
values ('Feijao Vermelho', '9.50', 'false');

insert into produto (descricao, valor, perecivel)
values ('Arroz', '18.50', 'false');

insert into produto (descricao, valor, perecivel)
values ('Beterraba', '3.99', 'true');

insert into produto (descricao, valor, perecivel)
values ('Batata Inglesa', '4.99', 'true');

insert into produto (descricao, valor, perecivel)
values ('Yorgute', '2.50', 'true');

insert into produto (descricao, valor, perecivel)
values ('Carne', '35.90', 'true');

insert into produto (descricao, valor, perecivel)
values ('Farinha', '3.99', 'false');

insert into produto (descricao, valor, perecivel)
values ('Fubá', '2.99', 'false');

insert into produto (descricao, valor, perecivel)
values ('Leite', '3.99', 'true');


select *
from produto_venda;

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (1, 2, '2');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (2, 3, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (3, 5, '3');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (5, 11, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (6, 8, '4');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (7, 10, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (8, 9, '2');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (9, 2, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (10, 7, '2');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (11, 9, '3');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (12, 6, '2');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (13, 3, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (14, 10, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (15, 4, '5');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (16, 3, '8');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (17, 11, '1');

insert into produto_venda (id_venda, id_produto, qtd_produto)
values (18, 9, '2');

select *
from telefone;

insert into telefone (id_cliente, telefone)
values (1, '98989898');

insert into telefone (id_cliente, telefone)
values (2, '89898989');

insert into telefone (id_cliente, telefone)
values (3, '74747474');

insert into telefone (id_cliente, telefone)
values (4, '85858585');

insert into telefone (id_cliente, telefone)
values (5, '53535353');

insert into telefone (id_cliente, telefone)
values (7, '45457575');


/*Query que retorna a descrição dos produtos que tiveram uma quantidade vendida
  maior que a média da quantidade vendida dos produtos em todas as vendas*/

select distinct descricao
                            as "Nome do Produto",
                qtd_produto as "Quantidade Vendida"
from produto_venda
         inner join produto
                    on produto_venda.id_produto = produto.id_produto
where qtd_produto > (select avg(qtd_produto)
                     from produto_venda)
group by descricao, qtd_produto;

/*View criada para guardas as informaçoes da query acima*/

create view vw_mediaMaiorProdutoVendas as
select distinct descricao, qtd_produto
from produto_venda
         inner join produto
                    on produto_venda.id_produto = produto.id_produto
where qtd_produto > (select avg(qtd_produto)
                     from produto_venda)
group by descricao, qtd_produto;

select *
from vw_mediaMaior;

select * from tipo_pag;
/*Retorna o nome do cliente, a venda destes clientes, exceto o nome dos clientes e as vendas
  que tiverem sido paga com dinheiro*/

select nome_cliente, id_venda
from cliente
         inner join venda
                    on cliente.id_cliente = venda.id_cliente
except
select nome_cliente, id_venda
from cliente
         inner join venda
                    on cliente.id_cliente = venda.id_cliente
where id_pag = 1
order by id_venda;


/*Clientes que moram no bairro centro, junto com os clientes que moram no dornelas*/

select nome_cliente, bairro
from cliente
where bairro = 'Centro'
union
select nome_cliente, bairro
from cliente
where bairro = 'Dornelas';

select * from cliente;
/*Query que retorna o nome de cada cliente, juntamente com o
  nome de cada produto comprado filtrando por cidade*/
select nome_cliente, descricao , cidade
from cliente
         inner join venda
                    on cliente.id_cliente = venda.id_cliente
         inner join produto_venda
                    on venda.id_venda = produto_venda.id_venda
         inner join produto
                    on produto_venda.id_produto = produto.id_produto
where cidade = 'Volta Grande'
   or cidade = 'Rio de Janeiro'
   or cidade = 'Muriae';


/*Historico de vendas de cada cliente com a forma de pagamento*/

select nome_cliente as "Cliente",
       dt_venda
                    AS "Data da venda",
       tipo_pag
                    AS "Forma de Pagamento"
from cliente
         inner join venda
                    on cliente.id_cliente = venda.id_cliente
         inner join tipo_pag
                    on venda.id_pag = tipo_pag.id_pag
order by "Cliente";




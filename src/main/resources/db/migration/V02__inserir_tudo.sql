INSERT  INTO endereco(cep, rua, bairro, cidade, numero, complemento, estado)
values(01001-000, 'Praça da Sé', 'Sé', 'São Paulo', 256, 'lado ímpar', 'SP');

INSERT  INTO endereco(cep, rua, bairro, cidade, numero, complemento, estado)
values(24210-230,'Rua José Bonifácio', 'São Domingos', 'Niterói', 46, 'Apto 302', 'RJ');

INSERT  INTO endereco(cep, rua, bairro, cidade, numero, complemento, estado)
values(25680-400, 'Rua Doutor Hans Bistrischan', 'Retiro', 'Petrópolis', 185, 'Casa verde', 'RJ');

INSERT  INTO endereco(cep, rua, bairro, cidade, numero, complemento, estado)
values(66617-160, 'Travessa Itaituba', 'Val-de-Cães', 'Belém', 189, 'Bloco B Apto 2201', 'PA');

INSERT  INTO endereco(cep, rua, bairro, cidade, numero, complemento, estado)
values(75712-700, 'Rua do Bougainville', 'Vila Wilson Guimarães', 'Catalão', 06, 'Casa dos fundos', 'GO');

INSERT  INTO endereco(cep, rua, bairro, cidade, numero, complemento, estado)
values(35305-011, 'Rua José Alexandrino Campos', 'Graça', 'Caratinga', 774, 'Com torre telefonica', 'MG');


INSERT  INTO categoria(nome,descricao)
values('HDD', 'Armazena todos seus melhores momentos em um computador');

INSERT  INTO categoria(nome, descricao)
values('Celular', 'dispositivo para falar com seus melhores amigos');

INSERT  INTO categoria(nome, descricao)
values('caneca', 'porcelana para beber sua bebida quente favorita');

INSERT  INTO categoria(nome, descricao)
values('Televisão', 'aparelho eletronico para assistir seus filmes e series favoritos');

INSERT  INTO categoria(nome, descricao)
values('Console', 'aparelho para jogos eletronicos favoritos');

INSERT INTO categoria(nome, descricao) 
values('Recipiente','Garrafa para beber sua bebida quente');


INSERT  INTO produto (nome, descricao, qtd_estoque, data_cadastro, valor_unitario, id_categoria)
values('hdd 500gb', 'este hdd salva mais de 500gb de lembranças', 30, '2019-07-30', 150.00, 1);

INSERT  INTO produto (nome, descricao, qtd_estoque, data_cadastro, valor_unitario, id_categoria)
values('moto g6', 'captura fotos inesqueciveis', 40, '2020-06-02', 650.00, 2);

INSERT  INTO produto (nome, descricao, qtd_estoque, data_cadastro, valor_unitario, id_categoria)
values('caneca de porcelana verde', 'linda caneca para presentear o amor da sua vida', 8, '2019-05-04', 40.00, 3);

INSERT  INTO produto (nome, descricao, qtd_estoque, data_cadastro, valor_unitario, id_categoria)
values('tv 4k smart', 'tv 4k smart com bordas invisiveis e som espacial', 300, '2020-02-29', 1500.00, 4);

INSERT  INTO produto (nome, descricao, qtd_estoque, data_cadastro, valor_unitario, id_categoria)
values('ouya', 'console super raro parou de ser produzido', 3, '2013-06-25', 19.99, 5);

INSERT INTO produto (nome, descricao, qtd_estoque, data_cadastro, valor_unitario, id_categoria)
values ('Garrafa termica', 'armazena suas melhores bebidas', 20, '2019-08-11', 70.00, 6);




INSERT INTO cliente (email, nome_usuario, nome_completo, senha, cpf, telefone, data_nasc, id_endereco) 
values ('ana@gmail.com', 'ana', 'Ana Maria', 'ana123', '21961238039', '24981985631', '1980-06-07', 1);

INSERT INTO cliente (email, nome_usuario, nome_completo, senha, cpf, telefone, data_nasc, id_endereco) 
values('raquel@gmail.com', 'raquel', 'Raquel Silveira', 'raquel123', '41525078020', '21985631447', '1998-08-08', 2);

INSERT INTO cliente (email, nome_usuario, nome_completo, senha, cpf, telefone, data_nasc, id_endereco) 
values('lucas@gmail.com', 'lucas', 'Lucas Carvalho', 'lucas123', '02226246045', '1174526984', '2000-01-01', 3);

INSERT INTO cliente (email, nome_usuario, nome_completo, senha, cpf, telefone, data_nasc, id_endereco) 
values('alfredo@gmail.com', 'alfredo', 'Alfredo Fonseca', 'alfredo123', '28314633003', '24985631445', '1964-04-21', 4);

INSERT INTO cliente (email, nome_usuario, nome_completo, senha, cpf, telefone, data_nasc, id_endereco) 
values('julia@gmail.com', 'julia', 'Julia Tavares', 'julia123', '36077149080', '2152634785', '1998-01-13', 5);

INSERT INTO cliente (email, nome_usuario, nome_completo, senha, cpf, telefone, data_nasc, id_endereco) 
values('marcelo@gmail.com', 'marcelo', 'Marcelo Almeida', 'marcelo123', '39419037053', '22974589125', '1988-12-01', 6);


INSERT INTO pedido (data_pedido, data_entrega, data_envio, id_cliente)
values('2021-04-03', '2021-05-03', '2021-04-14', 1); 

INSERT INTO pedido (data_pedido, data_entrega, data_envio, id_cliente)
values ('2021-01-15', '2021-02-01', '2021-01-21', 2);

INSERT INTO pedido (data_pedido, data_entrega, data_envio, id_cliente)
values ('2021-03-13', '2021-03-18', '2021-03-15', 3);

INSERT INTO pedido (data_pedido, data_entrega, data_envio, id_cliente)
values ('2021-02-14', '2021-04-01', '2021-03-15', 4);

INSERT INTO pedido (data_pedido, data_entrega, data_envio, id_cliente)
values ('2021-05-06', '2021-06-06', '2021-05-09', 5);

INSERT INTO pedido (data_pedido, data_entrega, data_envio, id_cliente)
values ('2021-04-08', '2021-04-30', '2021-04-10', 6);


INSERT  INTO item_pedido (quantidade, preco_venda, id_pedido, id_produto)
values(4 , 160.00, 1, 3);

INSERT  INTO item_pedido (quantidade, preco_venda, id_pedido, id_produto)
values(5, 7500, 2, 4);

INSERT  INTO item_pedido (quantidade, preco_venda, id_pedido, id_produto)
values(14, 2100.00, 4, 1);

INSERT  INTO item_pedido (quantidade, preco_venda, id_pedido, id_produto)
values(1, 650.00, 4, 2);

INSERT  INTO item_pedido (quantidade, preco_venda, id_pedido, id_produto)
values(3, 120.00, 5, 3);

INSERT INTO item_pedido  (quantidade, preco_venda, id_pedido, id_produto)
values(1, 70.00, 3, 6);

INSERT INTO item_pedido  (quantidade, preco_venda, id_pedido, id_produto)
values(1, 40.00, 6, 3);

INSERT INTO item_pedido  (quantidade, preco_venda, id_pedido, id_produto)
values (14, 980.00, 6, 6);
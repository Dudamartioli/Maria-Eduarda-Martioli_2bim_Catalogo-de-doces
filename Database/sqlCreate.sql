no postgresql

Crie um banco de dados chamado trabalho-dw1-2bimestre

DROP TABLE IF EXISTS public.categorias, public.doces;

CREATE TABLE public.categorias (
    id_categoria SERIAL PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE public.doces (
    id_doce SERIAL PRIMARY KEY,
    nome_doce VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    descricao VARCHAR(255),
    id_categoria INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria)
);

INSERT INTO public.categorias (nome_categoria) VALUES
('Trufas'),
('Pães de Mel'),
('cookies'),
('bolos'),
('barras de chocolate'),
('pizza doce'),
('sorvete'),
('brownie'),
('sagu'),
('bombom');


INSERT INTO public.doces (nome_doce, preco, descricao, id_categoria) VALUES
('Trufa de Oreo', 4.50, 'Trufa recheada com Brigadeiro de Leite Ninho e Pedaços de Oreo', 1),
('Trufa de Ninho', 4.50, 'Trufa recheada com Brigadeiro de Leite Ninho', 1),
('Trufa de Nutelinho', 4.50, 'Trufa recheada com Brigadeiro de Leite Ninho e Nutella', 1),
('Trufa de Casadinho', 4.50, 'Trufa recheada com Brigadeiro de Leite Ninho e Brigadeiro de Chocolate', 1),
('Pão de Mel Tradicional', 8.00, 'Coberto com chocolate e recheado com leite condensado cozido', 2),
('Pão de Mel de Ninho', 8.00, 'Coberto com chocolate e recheado com brigadeiro de leite ninho', 2),
('Cookie de Chocolate', 7.50, 'Cookie com gotas de chocolate', 3),
('Cookie de Nutella', 8.50, 'Cookie recheado com Nutella', 3),
('Bolo de Cenoura', 25.00, 'Bolo de cenoura com cobertura de chocolate', 4),
('Bolo de Chocolate', 28.00, 'Bolo de chocolate fofinho', 4),
('Barra ao Leite', 12.00, 'Barra de chocolate ao leite', 5),
('Barra Meio Amargo', 13.50, 'Barra de chocolate meio amargo', 5),
('Pizza de Brigadeiro', 35.00, 'Pizza doce coberta com brigadeiro', 6),
('Pizza de Morango', 38.00, 'Pizza doce com morangos e chocolate', 6),
('Sorvete de Chocolate', 9.00, 'Sorvete sabor chocolate', 7),
('Sorvete de Morango', 9.00, 'Sorvete sabor morango', 7),
('Brownie Tradicional', 6.50, 'Brownie de chocolate', 8),
('Brownie com Nozes', 7.50, 'Brownie de chocolate com nozes', 8),
('Sagu de Vinho', 5.00, 'Sagu preparado com vinho', 9),
('Sagu de Uva', 5.50, 'Sagu sabor uva', 9),
('Bombom de Morango', 3.50, 'Bombom recheado com morango', 10),
('Bombom de Coco', 3.50, 'Bombom recheado com coco', 10);


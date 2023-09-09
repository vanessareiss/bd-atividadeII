-- CRIANDO O BANCO DE DADOS BLOG
CREATE DATABASE Blog;
SHOW DATABASES;
-- USANDO O BANCO DE DADOS
USE Blog; 

-- CRIANDO A TABELA ARTIGOS
CREATE TABLE Artigos(
ArtigoID INT auto_increment,
Titulo VARCHAR (200),
Conteudo TEXT,
DataPublicacao DATE,
PRIMARY KEY (ArtigoID)
);
-- INSERINDO REGISTROS NA TABELA ARTIGOS
INSERT INTO Blog.Artigos (Titulo, Conteudo, DataPublicacao) VALUES
('Receita de bolo', 'Uma receita simples para um delicioso bolo de chocolate.', '2022-09-15'),
('Dicas de Viagem"', 'Descubra as melhores dicas para planejar sua próxima viagem.', '2022-05-20'),
('Exercícios de Alongamento', 'Experimente esses exercícios de alongamento para aliviar a tensão muscular.', '2021-06-06'),
('Notícias de Tecnologia', 'As últimas notícias sobre inovações tecnológicas e gadgets.', '2023-09-09'),
('Citação Inspiradora', 'Uma citação inspiradora: A persistência é o caminho do êxito. - Charles Chaplin', '2020-08-04');

-- Criando a tabela Comentários
CREATE TABLE Comentarios(
ComentarioID INT auto_increment,
ArtigoID INT,
Autor VARCHAR (100),
Texto TEXT,
DataComentario date,
PRIMARY KEY (ComentarioID),
FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigoID)
);
-- INSERINDO REGISTROS NA TABELA COMENTÁRIOS
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES
(1, 'Vanessa', 'Ótima receita!', '2022-09-16'),
(2, 'Gabriel', 'Vou fazer uma viagem no próximo fim de semana, adorei as dicas!', '2022-09-17'),
(3, 'Jéssica', 'Amei os exercícios de alongamento!', '2022-05-21'),
(4, 'Daniel', 'Muito interessante essa notícia sobre tecnologia.', '2023-09-10'),
(5, 'Kauã', 'Essa citação é realmente inspiradora.', '2020-08-05');



CREATE DATABASE Compras;
SHOW DATABASES; 
USE Compras;

CREATE TABLE Clientes(
ClienteID INT auto_increment,
Nome VARCHAR (100),
Email VARCHAR (100),
Telefone VARCHAR (16),
primary key (ClienteID)
);

-- Inserindo registros na tabela clientes

INSERT INTO Compras.Clientes (Nome, Email, Telefone) VALUES
('Vanessa', 'Vanessa@gmail.com', '(71)96857-5698'),
('Gabriel', 'Gabriel@gmail.com', '(71)99855-5587'),
('Daniel', 'VDaniel@gmail.com', '(71)963254-58765'),
('Kauã', 'Kauã@gmail.com', '(71)93564-7468'),
('Jéssica', 'Jéssica@gmail.com', '(71)99823-7856');

-- CRIANDO A TABELA PEDIDOS 
CREATE TABLE Pedidos(
PedidoID INT auto_increment,
ClienteID INT,
DataPedido DATE,
ValorTotal DECIMAL(8, 2),
primary key (PedidoID),
FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)

);
-- INSERINDO REGISTROS NA TABELA PEDIDOS
INSERT INTO Compras.Pedidos (ClienteID, DataPedido, ValorTotal) VALUES
(1, '2023-10-20', 200.00),
(2, '2023-06-06', 90.25),
(3, '2023-10-30', 59.00),
(4, '2023-08-07', 100.00),
(5, '2023-02-06', 60.10);


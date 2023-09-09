-- CRIANDO BANCO DE DADOS
CREATE DATABASE RH;
SHOW DATABASES;

-- USANDO BANCO DE DADOS
USE RH; 

-- CRIANDO TABELA DEPARTAMENTOS
CREATE TABLE Departamento(
DepartamentoID INT auto_increment,
NomeDepartamento VARCHAR (200),
PRIMARY KEY (DepartamentoID)
);

-- INSERINDO REGISTROS NA TABELA DEPARTAMENTOS
INSERT INTO Departamento (NomeDepartamento) VALUES
('Departamento de Recursos Humanos'),
('Setor de Gestão de Pessoas'),
('Divisão de Desenvolvimento de Recursos Humanos'),
('Seção de Relações Trabalhistas'),
('Unidade de Administração de Pessoal');

-- CRIANDO TABELA Funcionarios
CREATE TABLE Funcionarios(
FuncionarioID INT auto_increment,
Nome VARCHAR (200),
Cargo VARCHAR (50),
Salario DECIMAL (9,2),
DepartamentoID INT,
PRIMARY KEY (FuncionarioID),
FOREIGN KEY (DepartamentoID) REFERENCES Departamento(DepartamentoID)
);

-- INSERINDO REGISTROS NA TABELA FUNCIONÁRIOS
INSERT INTO Funcionarios (DepartamentoID, Nome, Cargo, Salario) VALUES
(1, 'Vanessa', 'Analista de RH', 4500.00),
(2, 'Gabriel', 'Gerente de RH', 10000.00),
(3, 'Daniel', 'Especialista em Benefícios', 6500.00),
(4, 'Jéssica', 'Consultor de RH', 9500.00),
(5, 'Kauã', 'Assistente de Recrutamento', 5800.00);
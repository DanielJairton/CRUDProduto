CREATE DATABASE DbLojaSenai

USE DbLojaSenai

CREATE TABLE Categoria(
idCategoria INT PRIMARY KEY IDENTITY(1,1),
categoria VARCHAR(100)
);

CREATE TABLE Fornecedor(
idFornecedor INT PRIMARY KEY IDENTITY(1,1),
nome VARCHAR(100)
);

CREATE TABLE Produto(
id INT PRIMARY KEY IDENTITY(1,1),
descricao VARCHAR(100),
idCategoria INT,
idFornecedor INT,
FOREIGN KEY(idCategoria) REFERENCES Categoria(idCategoria),
FOREIGN KEY(idFornecedor) REFERENCES Fornecedor(idFornecedor),
);

--Inserindo dados

INSERT INTO Categoria(categoria) VALUES
('Eletrodom�stico'),
('Perec�veis'),
('Casa'),
('Limpeza');

INSERT INTO Fornecedor(nome) VALUES
('Eletrolux'),
('R&b Alimentos'),
('S�dia');

INSERT INTO Produto(descricao, idCategoria, idFornecedor) VALUES
('Geladeira', 1,1),
('Fog�o', 1,1),
('Microondas', 1,1),
('Caf�', 2,2),
('Carne', 2,3);

SELECT * FROM Categoria
SELECT * FROM Fornecedor
SELECT * FROM Produto
CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE Produtos (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

CREATE TABLE Pedidos (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER,
    produto_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

INSERT INTO Clientes VALUES (1, 'Ana', 'São Paulo'), (2, 'Bruno', 'Rio de Janeiro'), (3, 'Carla', 'São Paulo'), (4, 'Diego', 'Belo Horizonte'), (5, 'Thomas', 'São Paulo');
INSERT INTO Produtos VALUES (1, 'Elden Ring', 249.90, 'RPG'), (2, 'Minecraft', 99.90, 'Sandbox'), (3, 'Hollow Knight', 46.99, 'Aventura'), (4, 'GTA V', 79.90, 'Aventura'), (5, 'Cyberpunk 2077', 199.90, 'RPG');
INSERT INTO Pedidos VALUES (1, 1, 1, 2), (2, 1, 3, 1), (3, 2, 5, 1), (4, 3, 1, 3), (5, 3, 2, 2), (6, 5, 4, 1), (7, 5, 3, 4);

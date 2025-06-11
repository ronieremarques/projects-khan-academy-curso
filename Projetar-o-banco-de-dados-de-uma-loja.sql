CREATE TABLE bikes (
    id INTEGER PRIMARY KEY,
    model TEXT,
    price REAL,
    wheel_size INTEGER,
    gears INTEGER,
    color TEXT,
    stock INTEGER
);

-- Inserindo as bicicletas
INSERT INTO bikes VALUES (1, "Mountain Pro X1", 2500.00, 29, 21, "Preto", 5);
INSERT INTO bikes VALUES (2, "City Cruiser", 1200.00, 26, 7, "Azul", 8);
INSERT INTO bikes VALUES (3, "Road Master", 3500.00, 28, 22, "Vermelho", 3);
INSERT INTO bikes VALUES (4, "Kids Explorer", 800.00, 20, 6, "Verde", 10);
INSERT INTO bikes VALUES (5, "Electric Commuter", 4500.00, 27, 8, "Prata", 4);
INSERT INTO bikes VALUES (6, "BMX Freestyle", 1500.00, 20, 1, "Amarelo", 6);
INSERT INTO bikes VALUES (7, "Hybrid Comfort", 1800.00, 28, 18, "Cinza", 7);
INSERT INTO bikes VALUES (8, "Downhill Pro", 5000.00, 29, 12, "Laranja", 2);
INSERT INTO bikes VALUES (9, "Folding Compact", 2200.00, 20, 8, "Branco", 5);
INSERT INTO bikes VALUES (10, "Touring Classic", 2800.00, 28, 24, "Marrom", 4);
INSERT INTO bikes VALUES (11, "Fat Bike", 3200.00, 26, 10, "Preto", 3);
INSERT INTO bikes VALUES (12, "Fixie Urban", 1300.00, 28, 1, "Rosa", 8);
INSERT INTO bikes VALUES (13, "Gravel Adventure", 2900.00, 29, 20, "Azul", 5);
INSERT INTO bikes VALUES (14, "Mountain Hardtail", 2100.00, 27, 18, "Verde", 6);
INSERT INTO bikes VALUES (15, "Electric Mountain", 4800.00, 29, 21, "Preto", 3);

-- Ordenando por preço (do mais barato ao mais caro)
SELECT model, price, color FROM bikes ORDER BY price;

-- Estatísticas: Média de preço por tamanho de roda
SELECT wheel_size, AVG(price) as average_price 
FROM bikes 
GROUP BY wheel_size 
ORDER BY wheel_size;

-- Estatísticas: Total em estoque por cor
SELECT color, SUM(stock) as total_stock 
FROM bikes 
GROUP BY color 
ORDER BY total_stock DESC;

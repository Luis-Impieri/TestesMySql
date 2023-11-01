CREATE TABLE funcionarios (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  gender TINYINT(1),
  cargo TEXT NOT NULL,
  salary INTEGER NOT NULL
);

INSERT INTO funcionarios VALUES (1, 'Ryan', 0, 'Estoquista', 2000);
INSERT INTO funcionarios VALUES (2, 'Joanna', 1, 'Caixa', 1700);
INSERT INTO funcionarios VALUES (3, 'Josh', 0, 'Caixa', 1800);
INSERT INTO funcionarios VALUES (4, 'Maria', 1, 'Confeiteira', 2100);
UPDATE funcionarios SET salary = 1800 WHERE id = 3;

CREATE TABLE bolos (
    id INTEGER PRIMARY KEY,
    tipo TEXT NOT NULL,
    preco INTEGER NOT NULL,
    cobertura TINYINT(1)
);

INSERT INTO bolos VALUES (1, 'Chocolate', 18, 0);
INSERT INTO bolos VALUES (2, 'Brigadeiro', 25, 1);
INSERT INTO bolos VALUES (3, 'Banana', 20, 0);
INSERT INTO bolos VALUES (4, 'Ninho', 18, 0);
INSERT INTO bolos VALUES (5, 'Bem Casado', 22, 1);

SELECT salary FROM funcionarios WHERE gender = 0 ORDER BY name DESC;
SELECT tipo FROM bolos WHERE preco BETWEEN 18 AND 20 ORDER BY id DESC;
SELECT COUNT(id), cargo FROM funcionarios GROUP by cargo
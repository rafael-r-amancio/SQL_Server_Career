
SELECT * FROM [TABELA DE CLIENTES];

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1995-09-11';

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >= '1995-09-11';

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] <= '1995-09-11';

SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995;

SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) < 1995;

SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 9;

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 11;

-- EXERCICIO
SELECT * FROM [TABELA DE VENDEDORES] WHERE YEAR([DATA ADMISSAO]) >= 2016;
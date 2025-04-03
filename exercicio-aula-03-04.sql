-- Parte 1 – Recuperando Dados (Seção 1)
-- Objetivo: Utilizar comandos SELECT para exibir dados completos ou parciais de uma tabela.

-- 1. Exiba todos os dados cadastrados na tabela de clientes.
SELECT * from clientes
-- 2. Exiba apenas os nomes e as cidades dos clientes.
SELECT nome, cidade FROM clientes
-- 3. Liste todas as contas registradas, exibindo o número da conta e o saldo.
SELECT conta_id, saldo FROM conta

-- Parte 2 – Filtros, Projeções e Concatenação (Seção 2)
-- Objetivo: Trabalhar com cláusula WHERE, operadores BETWEEN, LIKE, IN, operadores de concatenação (||) e alias.

-- 4. Liste os nomes dos clientes da cidade de Macaé.
SELECT nome FROM clientes WHERE cidade LIKE 'Macaé'

-- 5. Exiba o código e o nome de todos os clientes com código entre 5 e 15.
SELECT codigo, nome FROM clientes WHERE codigo BETWEEN 5 AND 15

-- 6. Exiba os clientes que moram em Niterói, Volta Redonda ou Itaboraí.
SELECT nome FROM clientes WHERE cidade IN ('Niteroi', 'Volta Redonda', 'Itaborai')

-- 7. Exiba os nomes dos clientes que começam com a letra "F".
SELECT nome FROM clientes WHERE nome LIKE "F%"

-- 8. Exiba uma frase com a seguinte estrutura para todos os clientes:
-- Exemplo: João Santos mora em Nova Iguaçu.
-- Utilize concatenação e alias para nomear a coluna como "Frase".
SELECT CONCAT(nome, ' mora em ', cidade, '.') AS Frase
FROM clientes;


-- Parte 3 – Ordenações, Operadores Lógicos e Funções (Seção 3)
-- Objetivo: Utilizar ORDER BY, operadores lógicos (AND, OR, NOT) e funções de linha única (ROUND, UPPER, etc.).

-- 9. Exiba os dados de todas as contas com saldo superior a R$ 9.000, ordenados do maior para o menor saldo.
SELECT * FROM contas WHERE saldo > 9000 ORDER BY saldo DESC

-- 10. Liste os clientes que moram em Nova Iguaçu ou que tenham "Silva" no nome.
SELECT nome FROM clientes WHERE cidade = 'Nova Iguacu' OR nome LIKE "%Silva%"

-- 11. Exiba o saldo das contas com arredondamento para o inteiro mais próximo.
SELECT ROUND(saldo) AS saldo_arredondado FROM contas;

-- 12. Exiba o nome de todos os clientes em letras maiúsculas.
SELECT UPPER(nome) FROM clientes

-- 13. Exiba os nomes dos clientes que não são das cidades de Teresópolis nem Campos dos Goytacazes.
SELECT nome FROM clientes WHERE cidade NOT IN ('Teresópolis', 'Campos dos Goytacazes')